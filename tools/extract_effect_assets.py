"""Extract only package-authored assets. Never reads photographs or rendered outputs."""
import argparse, hashlib, json, struct
from pathlib import Path
ASSETS = {
 'peach.png':'texture/8089989799668825771-5578589686468603062.png',
 'contour.png':'texture/1823516777907017010-15901366735133081223.png',
 'lips.png':'texture/14721824955981598186-9582924473130741695.png',
 'berry.png':'texture/4921093628064734880-6255301141957278347.png',
 'opacity.png':'texture/4415129028110280169-9668386161258049457.png',
 'ganmask.png':'skinunified/ganmask.png',
 'filter.frag':'Library/ShaderData/a3ac6e18a05484b9ca8961b612d476ff/shaderGLES/9b5a7ffa4ce1ab8a8a54cd2fcab2c7a9.frag',
 'skin.frag':'skinunified/shaderGLES/f6b6dfb8a5768ba3d18c52c1ddfab413.frag',
}
def main():
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('package',type=Path);p.add_argument('--library',type=Path,help='Optional original arm64 libeffect for exact alignment template');p.add_argument('--output',type=Path,default=Path('public/effects/boy-ii'));a=p.parse_args()
 a.output.mkdir(parents=True,exist_ok=True); records={}
 for name,rel in ASSETS.items():
  source=a.package/'AmazingFeature'/rel; data=source.read_bytes();(a.output/name).write_bytes(data)
  records[name]={'source':'AmazingFeature/'+rel,'sha256':hashlib.sha256(data).hexdigest(),'bytes':len(data)}
 (a.output/'assets.json').write_text(json.dumps(records,indent=2)+'\n')
 if a.library:
  library=a.library.read_bytes(); values=struct.unpack_from('<212f',library,0x318ce40)
  if abs(values[0]+.094971)>1e-6 or abs(values[1]-.151144)>1e-6:
   raise ValueError('Native library layout differs; re-identify NHFaceAlign reference template')
  (a.output/'alignment.json').write_text(json.dumps({'template':list(values),'size':320,'margin':.375,'offsetX':0,'offsetY':31,'source':'libeffect arm64 NHFaceAlign crop_type1 template, virtual/file address 0x318ce40','librarySha256':hashlib.sha256(library).hexdigest()},indent=2)+'\n')
 print(json.dumps({k:v['bytes'] for k,v in records.items()}))
if __name__=='__main__':main()
