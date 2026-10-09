"""Extract package-authored geometry for spatial tests; never reads input photos."""
import argparse, hashlib, json, struct
from pathlib import Path
parser=argparse.ArgumentParser(description=__doc__)
parser.add_argument('package',type=Path)
parser.add_argument('--output',type=Path,default=Path(__file__).resolve().parents[1]/'tests/makeup-authored295.json')
args=parser.parse_args()
relative='AmazingFeature/model/12700175322249611987-5891583894714228915.mesh'
raw=(args.package/relative).read_bytes()
header=struct.pack('<III',0xcf7a586e,24,8850)
offset=raw.index(header)+len(header)
vertices=struct.unpack_from('<1475f',raw,offset)
fixture={'positions':[v for i in range(295) for v in vertices[i*5:i*5+2]],'provenance':{'source':relative,'sha256':hashlib.sha256(raw).hexdigest(),'kind':'Package-authored reference mesh positions; no user image or inferred landmarks','mouthVertices':[116,180],'browVertices':[90,116],'eyeVertices':[46,90]}}
args.output.write_text(json.dumps(fixture,separators=(',',':'))+'\n')
print('Extracted 295 authored reference vertices for registration tests.')
