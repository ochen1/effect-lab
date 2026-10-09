#!/usr/bin/env python3
"""Compare TypeScript makeup geometry with native helpers on synthetic data only.

Run on macOS with Effect House mounted at /Volumes/Effect House. The oracle is
compiled into a temporary directory; no native framework or image is copied.
"""
import argparse
import json
import math
import os
from pathlib import Path
import random
import struct
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parents[1]
FRAMEWORKS = Path('/Volumes/Effect House/Effect House.app/Contents/Frameworks')

def packed(points):
    return struct.pack('<212f', *(v for p in points for v in p))

def cases():
    rng = random.Random(248106)
    for case in range(32):
        scale = [1, 64, 256, 4096][case % 4]
        yield f'random-{case}', [(rng.uniform(-scale, scale), rng.uniform(-scale, scale)) for _ in range(106)]
    base = [(i * 2.23 + 13 * math.sin(i), i * .73 + 7 * math.cos(i * .7)) for i in range(106)]
    for angle in [0, .3, 1.57, 3.14]:
        for scale in [.1, 1, 8]:
            c, s = math.cos(angle), math.sin(angle)
            yield f'transform-{angle}-{scale}', [(scale*(c*x-s*y)+153, scale*(s*x+c*y)-29) for x,y in base]
    yield 'collinear', [(i * 3., i * .5) for i in range(106)]
    # Degenerate inputs document native non-finite behavior rather than replacing
    # it with a different interpolator. A caller must reject unusable geometry.
    yield 'coincident', [(128., 128.) for _ in range(106)]
    repeated = base.copy()
    repeated[85] = repeated[84]
    yield 'one-zero-chord', repeated

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--report', type=Path, default=ROOT/'research/makeup-geometry-validation.json')
    args=parser.parse_args()
    if not (FRAMEWORKS/'libeffect.dylib').exists():
        raise SystemExit('Mount a local Effect House installation before running the native comparison.')
    env={**os.environ,'DYLD_LIBRARY_PATH':str(FRAMEWORKS)}
    rows=[]
    with tempfile.TemporaryDirectory(prefix='makeup-geometry-') as temp:
        temp=Path(temp)
        oracle=temp/'native-reference'
        subprocess.run(['clang++','-std=c++17',str(ROOT/'tools/native_makeup_geometry_reference.cpp'),'-o',str(oracle)],check=True)
        for name, points in cases():
            input_path=temp/'input.f32';input_path.write_bytes(packed(points))
            native=temp/'native';browser=temp/'browser'
            subprocess.run([str(oracle),str(input_path),str(native)],env=env,check=True,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
            subprocess.run(['bun',str(ROOT/'tools/validate_makeup_geometry.ts'),str(input_path),str(browser)],check=True)
            outputs={}
            for part in ['eye','brow','mouth','mesh']:
                a=Path(f'{native}.{part}.f32').read_bytes();b=Path(f'{browser}.{part}.f32').read_bytes()
                assert len(a)==len(b),(name,part,'shape')
                va=struct.unpack('<'+'f'*(len(a)//4),a);vb=struct.unpack('<'+'f'*(len(b)//4),b)
                finite=[(x,y) for x,y in zip(va,vb) if math.isfinite(x) and math.isfinite(y)]
                assert all(math.isfinite(x)==math.isfinite(y) for x,y in zip(va,vb)),(name,part,'finite mask')
                error=max((abs(x-y) for x,y in finite),default=0)
                assert error == 0,(name,part,error)
                outputs[part]={'vertices':len(va)//2,'maxAbsoluteError':error,'nonFiniteCoordinates':len(va)-len(finite),'identicalBytes':a==b}
            rows.append({'case':name,'outputs':outputs})
    report={'inputProvenance':'Deterministic mathematical points; no photos, landmarks derived from photos, or user images.',
        'nativeSymbols':['BEF::MakeupV2::cvtEye106to240','BEF::MakeupV2::cvtBrow106to240','BEF::MakeupV2::cvtMouth106to240','BEF::FaceParamFaceUCV248::update'],
        'cases':rows,'caseCount':len(rows),'maxAbsoluteError':0,
        'scope':'Native FaceUCV248 fallback when dense extra landmarks are absent; does not claim equivalence to the packaged 295-vertex scene mesh.'}
    args.report.parent.mkdir(parents=True,exist_ok=True)
    args.report.write_text(json.dumps(report,indent=2)+'\n')
    print(f'{len(rows)} synthetic cases; all finite coordinates exactly match native; non-finite masks match; {args.report}')

if __name__=='__main__':
    main()
