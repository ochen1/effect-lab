#!/usr/bin/env python3
"""Verify raw extra-network ordering against an independently captured native SDK.

The trace directory must remain outside the repository. Only aggregate errors
and the non-personal index permutation are written to the report; photographs,
network tensors, affine matrices, and landmarks are never copied into the repo.
"""
import argparse,json,math,struct
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
GROUPS={'eyes':list(range(196,240)),'brows':list(range(170,196)),'mouth':list(range(106,170))}

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('trace',type=Path)
    parser.add_argument('--sdk-output',default='face.bin')
    parser.add_argument('--prediction',default='3-fc.raw')
    parser.add_argument('--warp',default='warp-1.json')
    parser.add_argument('--report',type=Path,default=ROOT/'research/makeup-extra-order-validation.json')
    args=parser.parse_args()
    trace=args.trace.resolve()
    if trace==ROOT or ROOT in trace.parents:raise SystemExit('Keep image-derived native traces outside the publish repository.')
    raw=struct.unpack('<480f',(trace/args.prediction).read_bytes())
    template=json.loads((ROOT/'public/models/face-templates.json').read_text())
    mean=template['extra'];factor=160/template['referenceSize']
    warp=json.loads((trace/args.warp).read_text())
    a,b,c,d,e,f=warp['matrices'][1]['data']
    decoded=[]
    for i in range(240):
        x,y=raw[2*i]+mean[2*i]*factor,raw[2*i+1]+mean[2*i+1]*factor
        decoded.append((a*x+b*y+c,d*x+e*y+f))
    sdk=(trace/args.sdk_output).read_bytes()
    if len(sdk)<27324 or struct.unpack_from('<i',sdk,27320)[0]<1:raise SystemExit('Trace must contain a complete native SDK face result.')
    # bef_face_ext_info_t begins after10base records; points start after16headerbytes.
    native=struct.unpack_from('<268f',sdk,13240+16)
    report={'scope':'Raw native extra-network decode compared with native SDK final extra ABI; no photo-derived coordinates are included.',
        'rawNetworkOrder':['base106','mouth64','brow26','eye44'],
        'rendererOrder':['eye44','brow26','mouth64'],'pointCount':134,'groups':{}}
    cursor=0
    for name,indices in GROUPS.items():
        errors=[]
        for index in indices:
            x,y=decoded[index]
            errors.append(math.hypot(x-native[2*cursor],y-native[2*cursor+1]));cursor+=1
        report['groups'][name]={'networkIndices':indices,'pointCount':len(indices),'maxErrorPixels':max(errors),'meanErrorPixels':sum(errors)/len(errors)}
    report['maxErrorPixels']=max(v['maxErrorPixels'] for v in report['groups'].values())
    if report['maxErrorPixels']>=.0001:raise SystemExit(f'Native mapping mismatch: {report["maxErrorPixels"]} pixels')
    report['withinGroupReversalRequired']=False
    args.report.write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps({'pointCount':134,'maxErrorPixels':report['maxErrorPixels'],'report':str(args.report)}))

if __name__=='__main__':main()
