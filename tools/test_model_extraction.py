"""Small deterministic regression tests for BM decoding and ONNX conversion.

Run: .venv/bin/python -m unittest discover -s tools -p 'test_*.py'
No original model, photos, native library, or network access is needed.
"""
import struct
import tempfile
import unittest
from pathlib import Path

import numpy as np
import onnxruntime as ort

from convert_skin import convert
from decode_bytenn import decode, inverse_sbox


GRAPH = '1 1 42\nDataV2 data 1 2 2 3 4 0 0\nTanh Tanh_134 data Tanh_134 4 0\n'


def container(graph=GRAPH, weights=struct.pack('<IfI', 0, .5, 42)):
    inverse = inverse_sbox()
    encode = bytes(inverse.index(value) for value in range(256))
    key = b'test-key'
    encoded = bytes(encode[value] ^ key[i % 8] for i, value in enumerate(graph.encode()))
    sections = [encoded, weights, key, b'', b'', b'']
    header = bytearray(b'BM\x00\x03' + struct.pack('<II', 60 + sum(map(len, sections)), 6))
    position = 60
    for data in sections:
        header.extend(struct.pack('<II', len(data), position))
        position += len(data)
    return bytes(header) + b''.join(sections)


class DecodeTests(unittest.TestCase):
    def test_roundtrip_and_allowed_prefix(self):
        payload = container()
        for prefix in [b'', b'12345678']:
            graph, weights, metadata = decode(prefix + payload)
            self.assertEqual(graph, GRAPH)
            self.assertEqual(weights, struct.pack('<If', 0, .5))
            self.assertEqual(metadata['prefix_bytes'], len(prefix))

    def test_reject_missing_truncated_wrong_size_header(self):
        for payload in [b'', b'hello', container()[:-1], container()[:59]]:
            with self.subTest(length=len(payload)), self.assertRaises(ValueError):
                decode(payload)

    def test_reject_sections_overlapping_header_each_other_or_file_end(self):
        for position in [0, 60, 99999]:
            payload = bytearray(container())
            struct.pack_into('<I', payload, 24, position)  # weights section offset
            with self.subTest(position=position), self.assertRaises(ValueError):
                decode(payload)

    def test_reject_wrong_key_length(self):
        payload = bytearray(container())
        struct.pack_into('<I', payload, 28, 7)
        with self.assertRaisesRegex(ValueError, 'key length'):
            decode(payload)

    def test_reject_wrong_trailer_or_float_alignment(self):
        for weights in [b'', b'bad', struct.pack('<I', 43)]:
            with self.subTest(weights=weights), self.assertRaises(ValueError):
                decode(container(weights=weights))

    def test_reject_graph_layer_count(self):
        with self.assertRaisesRegex(ValueError, 'layer count'):
            decode(container(graph=GRAPH.replace('1 1 42', '1 5 42')))


class ConversionTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.path = Path(self.temp.name)

    def tearDown(self):
        self.temp.cleanup()

    def model(self, graph, weights):
        graph_path, weight_path = self.path / 'graph.txt', self.path / 'weights.f32'
        graph_path.write_text(graph)
        np.asarray(weights, dtype='<f4').tofile(weight_path)
        output = self.path / 'model.onnx'
        manifest = convert(graph_path, weight_path, output)
        return output, manifest

    def run_model(self, graph, weights, pixels):
        output, manifest = self.model(graph, weights)
        options = ort.SessionOptions()
        options.intra_op_num_threads = 1
        session = ort.InferenceSession(str(output), options, providers=['CPUExecutionProvider'])
        return session.run(None, {'data': np.asarray(pixels, np.float32)})[0], manifest

    def test_regular_convolution_ohwi_layout_and_bias(self):
        graph = ('1 2 42\nDataV2 data 1 3 3 2 4 0 0\n'
                 'Convolution conv 2 2 2 1 1 0 0 1 0 4 0 4 0 4 0 data conv\n'
                 'Tanh Tanh_134 conv Tanh_134 4 0\n')
        weights = np.arange(16, dtype=np.float32).reshape(2, 2, 2, 2) / 32
        bias = np.array([-.1, .2], np.float32)
        pixels = np.arange(18, dtype=np.float32).reshape(1, 2, 3, 3) / 20
        result, manifest = self.run_model(graph, np.r_[weights.ravel(), bias], pixels)
        expected = np.zeros((1, 2, 2, 2), np.float32)
        for c in range(2):
            for y in range(2):
                for x in range(2):
                    window = pixels[0, :, y:y+2, x:x+2].transpose(1, 2, 0)
                    expected[0, c, y, x] = np.tanh((window * weights[c]).sum() + bias[c])
        np.testing.assert_allclose(result, expected, atol=2e-7)
        self.assertEqual(manifest['weights'], 18)

    def test_depthwise_hwo1_layout(self):
        graph = ('1 2 42\nDataV2 data 1 3 3 2 4 0 0\n'
                 'DepthwiseSeparableConvolution conv 2 2 2 1 1 0 0 1 0 4 0 4 0 4 0 data conv\n'
                 'Tanh Tanh_134 conv Tanh_134 4 0\n')
        weights = np.arange(8, dtype=np.float32).reshape(2, 2, 2, 1) / 16
        pixels = np.arange(18, dtype=np.float32).reshape(1, 2, 3, 3) / 20
        result, _ = self.run_model(graph, np.r_[weights.ravel(), [0, 0]], pixels)
        expected = np.zeros((1, 2, 2, 2), np.float32)
        for c in range(2):
            for y in range(2):
                for x in range(2):
                    expected[0, c, y, x] = np.tanh((pixels[0, c, y:y+2, x:x+2] * weights[:, :, c, 0]).sum())
        np.testing.assert_allclose(result, expected, atol=2e-7)

    def test_fused_add_relu(self):
        graph = ('1 2 42\nDataV2 data 1 2 2 1 4 0 0\n'
                 'Eltwise add data data add 4 0 1\nTanh Tanh_134 add Tanh_134 4 0\n')
        pixels = np.array([[[[-.5, .25], [.4, -.2]]]], np.float32)
        actual, _ = self.run_model(graph, [], pixels)
        np.testing.assert_allclose(actual, np.tanh(np.maximum(pixels * 2, 0)), atol=2e-7)

    def test_half_pixel_bilinear_resize(self):
        graph = ('1 2 42\nDataV2 data 1 2 2 1 4 0 0\n'
                 'UpSampling up data up BILINEAR\nTanh Tanh_134 up Tanh_134 4 0\n')
        pixels = np.array([[[[0, .4], [.8, 1.2]]]], np.float32)
        actual, _ = self.run_model(graph, [], pixels)
        expected = np.array([[0, .1, .3, .4], [.2, .3, .5, .6], [.6, .7, .9, 1], [.8, .9, 1.1, 1.2]], np.float32)
        np.testing.assert_allclose(actual[0, 0], np.tanh(expected), atol=2e-7)

    def test_reject_invalid_weights(self):
        graph = ('1 2 42\nDataV2 data 1 2 2 1 4 0 0\n'
                 'Convolution conv 1 1 1 1 1 0 0 1 0 4 0 4 0 4 0 data conv\n'
                 'Tanh Tanh_134 conv Tanh_134 4 0\n')
        for weights in [[], [1], [1, 0, 2], [float('nan'), 0], [float('inf'), 0]]:
            with self.subTest(weights=weights), self.assertRaises(ValueError):
                self.model(graph, weights)

    def test_reject_unsupported_activation_and_layer(self):
        for graph in [GRAPH.replace('Tanh Tanh_134', 'Mystery Tanh_134'),
                      GRAPH.replace('4 0\n', '4 9\n'), GRAPH.replace('1 1 42', '1 9 42')]:
            with self.subTest(graph=graph), self.assertRaises(ValueError):
                self.model(graph, [])


if __name__ == '__main__':
    unittest.main()
