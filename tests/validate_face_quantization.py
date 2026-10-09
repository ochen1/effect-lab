"""Synthetic integer arithmetic audit for the recovered detector's first layers.

Uses photo-free gradient files and native outputs produced by the legacy oracle.
The report distinguishes bit-exact integer kernels from whole-network ONNX error.
Run from repo root: .venv/bin/python tests/validate_face_quantization.py
"""
import json
from pathlib import Path
import numpy as np

ROOT = Path(__file__).resolve().parents[1]


def audit():
    raw = (ROOT / 'research/face-network/image_detect/weights.bin').read_bytes()
    image = np.fromfile(ROOT / 'research/face-gradient-160.i16', '<i2').reshape(160, 160, 3).astype(np.int64)
    results = []
    # Each tuple is (weight offset, input fraction, weight fraction, bias fraction,
    # output fraction, kernel, stride, channels, activation, depthwise).
    configurations = [
        ('conv1', 0, 6, 14, 24, 10, 3, 2, 8, True, False),
        ('block1a_conv_a', 464, 10, 3, 13, 9, 3, 1, 8, True, True),
        ('block1a_conv_b', 640, 9, 9, 18, 8, 1, 1, 8, False, False),
    ]
    current = image
    for index, (name, offset, input_frac, weight_frac, bias_frac, output_frac,
                kernel, stride, channels, relu, depthwise) in enumerate(configurations):
        height, width, inputs = current.shape
        padding = kernel // 2
        count = kernel * kernel * channels * (1 if depthwise else inputs)
        weights = np.frombuffer(raw, '<i2', offset=offset, count=count).astype(np.int64)
        bias = np.frombuffer(raw, '<i4', offset=offset + count * 2, count=channels).astype(np.int64)
        weight_shape = (kernel, kernel, channels) if depthwise else (channels, kernel, kernel, inputs)
        weights = weights.reshape(weight_shape)
        padded = np.pad(current, ((padding, padding), (padding, padding), (0, 0)))
        out_height = (height + 2 * padding - kernel) // stride + 1
        out_width = (width + 2 * padding - kernel) // stride + 1
        accumulator = np.zeros((out_height, out_width, channels), np.int64)
        for ky in range(kernel):
            for kx in range(kernel):
                window = padded[ky:ky+out_height*stride:stride, kx:kx+out_width*stride:stride]
                accumulator += window * weights[ky, kx] if depthwise else np.einsum('hwc,oc->hwo', window, weights[:, ky, kx])
        bias_shift = bias_frac - input_frac - weight_frac
        if bias_shift > 0:
            bias = (bias + (1 << (bias_shift - 1))) >> bias_shift
        elif bias_shift < 0:
            bias <<= -bias_shift
        accumulator += bias
        shift = input_frac + weight_frac - output_frac
        if shift > 0:
            result = (accumulator + (1 << (shift - 1))) >> shift
        else:
            result = accumulator << -shift
        result = np.clip(result, 0 if relu else -2047, 2047)
        native = np.fromfile(ROOT / f'research/native-face-detect-layers-{index}.raw', '<i2').reshape(result.shape)
        difference = np.abs(result - native)
        results.append({'layer': name, 'values': int(result.size),
                        'identical': int(np.count_nonzero(difference == 0)),
                        'max_integer_error': int(difference.max()),
                        'passed': bool(np.array_equal(result, native))})
        # Isolate arithmetic in each layer from errors in preceding layers.
        current = native.astype(np.int64)
    report = {'synthetic': True, 'input': 'mathematical RGB gradients; no photographs',
              'native_runtime': 'libbytenn 3.12.30 macOS arm64 CPU',
              'arithmetic': {'stored_dtype': 'int16', 'saturation': [-2047, 2047],
                             'rounding': 'floor(x + 0.5)',
                             'bias': 'round bias to input_fraction + weight_fraction before accumulation'},
              'layers': results, 'passed': all(item['passed'] for item in results)}
    destination = ROOT / 'research/face-quantization-validation.json'
    destination.write_text(json.dumps(report, indent=2) + '\n')
    print(json.dumps(report, indent=2))
    return report['passed']


if __name__ == '__main__':
    raise SystemExit(0 if audit() else 1)
