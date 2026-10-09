"""Compare every legacy face activation on a synthetic gradient against native CPU.

Example: .venv/bin/python tests/trace_face_model.py base public/models/face-base.onnx
Requires the locally built native oracle and libbytenn. Saves numerical JSON only;
intermediate tensors are temporary and are deleted after comparison.
"""
import argparse
import json
import os
from pathlib import Path
import subprocess
import tempfile
import numpy as np
import onnx
from onnx import helper, TensorProto
import onnxruntime as ort

ROOT = Path(__file__).resolve().parents[1]


def outputs(graph):
    names = []
    for line in graph.splitlines():
        t = line.split()
        if not t: continue
        if t[0] in ('Convolution', 'DepthwiseSeparableConvolution', 'Shuffle', 'Reshape', 'InnerProduct'):
            names.append(t[-1])
        elif t[0] in ('Slice', 'ShuffleNet'):
            names.extend([t[7], t[9]])
        elif t[0] == 'Eltwise': names.append(t[4])
        elif t[0] == 'Concat': names.append(t[3 + int(t[2])])
        elif t[0] == 'PoolingDown': names.append(t[-2])
        elif t[0] == 'Softmax': names.append(t[3])
        elif t[0] == 'OnnxOp1' and t[2] == 'Reshape': names.append(t[4])
    return names


def trace(folder, model_path, pattern='gradient'):
    graph_path = ROOT / 'research/face-network' / folder / 'network.txt'
    if not graph_path.exists(): graph_path = ROOT / 'research/face-extra' / folder / 'network.txt'
    graph = graph_path.read_text()
    names = outputs(graph)
    model = onnx.load(model_path)
    available = {name for node in model.graph.node for name in node.output}
    names = [name for name in names if name in available]
    size = model.graph.input[0].type.tensor_type.shape.dim[2].dim_value
    if not size:
        data = next(line.split() for line in graph.splitlines() if line.startswith(('DataV2 ', 'data ')))
        size = int(data[3] if data[0]=='DataV2' else data[2])
    with tempfile.TemporaryDirectory(prefix='face-activation-audit-') as directory:
        temporary = Path(directory)
        if pattern == 'gradient':
            y,x=np.mgrid[:size,:size].astype(np.float32)/(size-1)
            pixels=np.rint(np.stack([x*255-128,y*255-128,(x+y)*127.5-128],-1)*64).astype('<i2')
        elif pattern == 'zero': pixels=np.zeros((size,size,3),'<i2')
        else: pixels=np.random.default_rng(20261009).integers(-8192,8129,(size,size,3),dtype=np.int16)
        input_path=temporary/'input.i16';pixels.tofile(input_path)
        environment=os.environ.copy()
        environment.setdefault('DYLD_LIBRARY_PATH','/Volumes/Effect House/Effect House.app/Contents/Frameworks')
        command=[str(ROOT/'research/native-legacy-reference'),str(graph_path),str(graph_path.with_name('weights.bin')),
                 str(input_path),str(temporary/'native'),*names]
        native=subprocess.run(command,env=environment,capture_output=True,text=True,check=True,timeout=120)
        metadata=[json.loads((temporary/f'native-{i}.raw.json').read_text()) for i in range(len(names))]
        del model.graph.output[:]
        for item in metadata:
            n,h,w,c=item['shape_nhwc']
            model.graph.output.append(helper.make_tensor_value_info(item['name'],TensorProto.FLOAT,[n,c,h,w]))
        options=ort.SessionOptions();options.intra_op_num_threads=1
        session=ort.InferenceSession(model.SerializeToString(),options,providers=['CPUExecutionProvider'])
        predicted=session.run(names,{'data':pixels.astype(np.float32).transpose(2,0,1)[None]/64})
        rows=[]
        for i,(name,meta,actual) in enumerate(zip(names,metadata,predicted)):
            native_type={1:'i1',2:'<i2',4:'<f4'}[meta['dtype']]
            expected=np.fromfile(temporary/f'native-{i}.raw',native_type).astype(np.float64).reshape(meta['shape_nhwc'])
            expected/=2**meta['fraction']
            actual=actual.transpose(0,2,3,1)
            difference=abs(actual-expected)
            row={'name':name,'shape_nhwc':meta['shape_nhwc'],'dtype':meta['dtype'],'fraction':meta['fraction'],
                 'values':int(actual.size),'exact':int(np.count_nonzero(difference==0)),
                 'mae':float(difference.mean()),'max_abs':float(difference.max()),
                 'max_in_native_units':float(difference.max()*2**meta['fraction'])}
            rows.append(row)
            if row['max_abs']>0: print(json.dumps(row))
    for row in rows:
        row['passed']=row['max_abs']==0 if row['dtype']!=4 else row['max_abs']<=2e-4
    report={'synthetic':True,'pattern':pattern,'model':folder,
            'scope':'Only operations retained in the supplied ONNX graph; pruned auxiliary outputs are excluded',
            'thresholds':{'integer_max_abs':0,'float_max_abs':2e-4},
            'layers':rows,'passed':all(row['passed'] for row in rows)}
    destination=ROOT/f'research/face-{folder}-{pattern}-layer-validation.json'
    destination.write_text(json.dumps(report,indent=2)+'\n')
    print('Report:',destination)
    return report


if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('folder');parser.add_argument('model',type=Path)
    parser.add_argument('--pattern',choices=['gradient','zero','noise'],default='gradient')
    args=parser.parse_args();trace(args.folder,args.model,args.pattern)
