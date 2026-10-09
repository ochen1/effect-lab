"""Regression tests for native-verified legacy face arithmetic and output pruning."""
import struct
import tempfile
import unittest
from pathlib import Path

import numpy as np
import onnxruntime as ort
from convert_face import convert


class FaceConversionTests(unittest.TestCase):
    def setUp(self):
        self.temp=tempfile.TemporaryDirectory();self.path=Path(self.temp.name)

    def tearDown(self):self.temp.cleanup()

    def run_graph(self,graph,weights,pixels,outputs=None):
        (self.path/'network.txt').write_text(graph)
        (self.path/'weights.bin').write_bytes(weights)
        report=convert(self.path,self.path/'model.onnx',True,outputs)
        options=ort.SessionOptions();options.intra_op_num_threads=1
        session=ort.InferenceSession(str(self.path/'model.onnx'),options,providers=['CPUExecutionProvider'])
        actual=session.run(None,{'data':np.asarray(pixels,np.float32)})
        return dict(zip([output.name for output in session.get_outputs()],actual)),report

    def test_signed_rounding_is_floor_plus_half_and_saturation_is_symmetric12(self):
        graph=('1 1\nDataV2 data 1 1 8 1 2 0 0\n'
               'Convolution conv 1 1 1 1 1 0 0 1 0 2 1 4 1 2 0 data conv\n')
        actual,_=self.run_graph(graph,struct.pack('<hi',1,0),[[[[-10000,-3,-1,1,3,10000,-4095,4095]]]])
        np.testing.assert_array_equal(actual['conv'],[[[[-2047,-1,0,1,2,2047,-2047,2047]]]])

    def test_shuffle_native_branch_clamp_quirk(self):
        # Native oracle result: first input only upper-saturates; second only
        # lower-saturates. Channels move in groups of four, not individually.
        graph=('1 2\nDataV2 data 1 1 1 16 2 0 0\n'
               'Slice parts data 1 1 8 2 a 0 b 0\n'
               'ShuffleNet shuffle 2 a b 4 2 u 1 v 1\n')
        pixels=np.asarray([-1800,-1500,-1100,-900,900,1100,1500,1800]*2,np.float32).reshape(1,16,1,1)
        actual,_=self.run_graph(graph,b'',pixels)
        np.testing.assert_array_equal(actual['u'].ravel(),np.array([-3600,-3000,-2200,-1800,-2047,-2047,-2047,-1800])/2)
        np.testing.assert_array_equal(actual['v'].ravel(),np.array([1800,2047,2047,2047,1800,2200,3000,3600])/2)

    def test_slice_equal_fraction_preserves_out_of_12bit_range(self):
        graph=('1 1\nDataV2 data 1 1 1 8 2 0 0\nSlice parts data 1 1 4 2 a 0 b 0\n')
        pixels=np.asarray([-3000,-2000,-1000,-500,500,1000,2000,3000],np.float32).reshape(1,8,1,1)
        actual,_=self.run_graph(graph,b'',pixels)
        np.testing.assert_array_equal(actual['a'].ravel(),pixels.ravel()[:4])
        np.testing.assert_array_equal(actual['b'].ravel(),pixels.ravel()[4:])

    def test_pruning_still_consumes_and_validates_all_model_weights(self):
        graph=('1 2\nDataV2 data 1 1 1 1 2 0 0\n'
               'Convolution keep 1 1 1 1 1 0 0 1 0 2 0 4 0 2 0 data keep\n'
               'Convolution unused 1 1 1 1 1 0 0 1 0 2 0 4 0 2 0 data unused\n')
        weights=struct.pack('<hihi',2,0,3,0)
        actual,report=self.run_graph(graph,weights,[[[[3]]]],['keep'])
        self.assertEqual(list(actual),['keep']);self.assertEqual(float(actual['keep'].ravel()[0]),6)
        self.assertEqual(report['weight_bytes'],12)
        with self.assertRaises(ValueError):self.run_graph(graph,weights[:6],[[[[3]]]],['keep'])


if __name__=='__main__':unittest.main()
