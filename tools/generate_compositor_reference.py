"""Create a tiny GPU diagnostic reference from original effect PNGs and shader equations.

Only mathematical input patterns and authored package textures are used.
The browser compares this CPU result with its actual WebGL driver at startup.
"""
from pathlib import Path
import hashlib,json,math
from PIL import Image
ROOT=Path(__file__).resolve().parents[1]
ASSETS=ROOT/'public/effects/boy-ii'
N=16
textures={name:Image.open(ASSETS/(name+'.png')).convert('RGBA') for name in ['peach','contour','lips','berry','opacity','ganmask']}
def sample(name,u,v):
 im=textures[name];x=max(0,min(im.width-1,u*im.width-.5));y=max(0,min(im.height-1,v*im.height-.5));x0=int(x);y0=int(y);fx=x-x0;fy=y-y0
 p=[im.getpixel((xx,yy)) for yy in [y0,min(y0+1,im.height-1)] for xx in [x0,min(x0+1,im.width-1)]]
 return [((p[0][c]*(1-fx)+p[1][c]*fx)*(1-fy)+(p[2][c]*(1-fx)+p[3][c]*fx)*fy)/255 for c in range(4)]
def byte(v):return max(0,min(255,round(v*255)))
def mulmat(m,v):return [sum(m[c][r]*v[c] for c in range(3)) for r in range(3)]
def colour(c):
 blue=math.floor(c[2]*63);row=math.floor(blue/8)
 lut=sample('peach',(blue-row*8)*.125+.0009765625+c[0]*.123046875,row*.125+.0009765625+c[1]*.123046875)
 c=[c[i]*.7+lut[i]*.3-.02 for i in range(3)]
 t=-.01;x=t*(-1.538461446762085)*(.1 if t*1.538461446762085<0 else .05)+.3127099871635437
 y=2.869999885559082*x-3*x*x-.2750950753688812;X=x/y;Z=(1-x-y)/y
 white=[.9492369890213013/(-.1624000072479248*Z+.7328000068664551*X+.4296000003814697),1.0354199409484863/(.0060999998822808266*Z-.7035999894142151*X+1.6974999904632568),1.087280035018921/(.9833999872207642*Z+.003000000026077032*X+.01360000018030405)]
 lms=mulmat([[.39040499925613403,.5499410033226013,.008926319889724255],[.07084160298109055,.9631720185279846,.0013577500358223915],[.02310819923877716,.1280210018157959,.9362450242042542]],c)
 return mulmat([[2.8584699630737305,-1.628790020942688,-.024891000241041184],[-.21018199622631073,1.1582000255584717,.00032428099075332284],[-.041811998933553696,-.11816900223493576,1.0686700344085693]],[lms[i]*white[i] for i in range(3)])
def soft(b,s):return 2*b*s+b*b*(1-2*s) if s<.5 else math.sqrt(max(0,b))*(2*s-1)+2*b*(1-s)
known=[[0,0,0],[255,255,255],[255,0,0],[0,255,0],[0,0,255],[85,85,85],[170,170,170],[127,64,191]]
source=[];expected={'identity':[],'color':[],'makeup':[],'skin':[]}
for y in range(N):
 for x in range(N):
  pixel=known[x] if y==0 and x<len(known) else [x*17,y*17,(x*13+y*29)%256]
  source+=pixel+[255];c=[n/255 for n in pixel];u=(x+.5)/N;v=(y+.5)/N
  expected['identity']+=pixel+[255]
  expected['color']+=[byte(n) for n in colour(c)]+[255]
  m=c[:]
  for name in ['contour','lips','berry']:
   tex=sample(name,u,v);a=tex[3]*(sample('opacity',u,v)[0] if name!='berry' else 1)
   m=[byte((1-a)*m[i]+a*(soft(m[i],tex[i]) if name=='contour' else m[i]*tex[i]))/255 for i in range(3)]
  expected['makeup']+=[byte(n) for n in m]+[255]
  a=(223/255)*sample('ganmask',u,v)[0]*.65
  expected['skin']+=[byte(c[i]*(1-a)+[159/255,80/255,191/255][i]*a) for i in range(3)]+[255]
reference={'version':1,'width':N,'height':N,'input':source,'expected':expected,'skinRGBA':[.25,-.375,.5,.75],'skinStrength':.65,'tolerance':{'identity':2,'color':3,'makeup':4,'skin':3},'provenance':{'kind':'Synthetic CPU color pattern; original package-authored textures','textures':{name:hashlib.sha256((ASSETS/(name+'.png')).read_bytes()).hexdigest() for name in textures},'filterShader':hashlib.sha256((ASSETS/'filter.frag').read_bytes()).hexdigest()}}
(ROOT/'src/compositor-reference.json').write_text(json.dumps(reference,separators=(',',':'))+'\n')
print('Generated independent CPU reference for four 16x16 synthetic rendering stages.')
