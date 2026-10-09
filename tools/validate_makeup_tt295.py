#!/usr/bin/env python3
"""Validate original TT295 geometry using deterministic synthetic landmarks."""
import json,math,os,random,struct,subprocess,tempfile
from pathlib import Path
from validate_makeup_geometry import ROOT,FRAMEWORKS,cases

def main():
    env={**os.environ,'DYLD_LIBRARY_PATH':str(FRAMEWORKS)}
    rows=[];rng=random.Random(295240)
    with tempfile.TemporaryDirectory(prefix='makeup-tt295-') as temp:
        temp=Path(temp);oracle=temp/'oracle'
        subprocess.run(['clang++','-std=c++17',str(ROOT/'tools/native_makeup_tt295_reference.cpp'),'-o',str(oracle)],check=True)
        for name,base in cases():
            extra=[(rng.uniform(-300,300),rng.uniform(-300,300)) for _ in range(134)]
            if name=='coincident':extra=[(128.,128.)]*134
            input_path=temp/'input.f32'
            input_path.write_bytes(struct.pack('<480f',*(v for p in base+extra for v in p)))
            native=temp/'native.f32';browser=temp/'browser.f32'
            subprocess.run([str(oracle),str(input_path),str(native)],env=env,check=True,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
            subprocess.run(['bun',str(ROOT/'tools/validate_makeup_tt295.ts'),str(input_path),str(browser)],check=True)
            a=native.read_bytes();b=browser.read_bytes()
            va=struct.unpack('<590f',a);vb=struct.unpack('<590f',b)
            error=max(abs(x-y) for x,y in zip(va,vb))
            assert error==0,(name,error)
            rows.append({'case':name,'maxAbsoluteError':error,'identicalBytes':a==b})
    report={'nativeSymbol':'AmazingEngine::FaceMakeupUtils::calcTT295Pts','inputProvenance':'Deterministic synthetic106base+134extra arrays; no private images or photo-derived landmarks.', 'caseCount':len(rows),'vertices':295,'maxAbsoluteError':0,'cases':rows,
      'scope':'Original TT295 geometric assembly with eye/brow/mouth flags enabled. Landmark network output, preprocessing, SDK240-to-extra134 mapping and texture rasterization are independent validation requirements.'}
    path=ROOT/'research/makeup-geometry-tt295-validation.json';path.write_text(json.dumps(report,indent=2)+'\n')
    print(f'{len(rows)} synthetic cases; all 590 float32 coordinates match native exactly; {path}')
if __name__=='__main__':main()
