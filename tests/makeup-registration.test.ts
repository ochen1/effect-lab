import {describe,expect,test} from 'bun:test';
import template from '../public/models/face-templates.json';
import topology from '../public/effects/boy-ii/makeup-tt295.json';
import {reorderExtraLandmarks} from '../src/face';
import {imageToTT295Coordinates,tt295ToImageCoordinates,type MakeupPoint} from '../src/makeup-geometry';
import {buildTT295Positions} from '../src/makeup-tt295';

// Authored model mean and authored mesh UVs; no photo-derived fixtures.
const networkMean=Array.from({length:240},(_,i)=>({x:template.extra[2*i],y:template.extra[2*i+1]}));
const base=networkMean.slice(0,106);
const dense=reorderExtraLandmarks(networkMean);
const mesh=tt295ToImageCoordinates(buildTT295Positions(imageToTT295Coordinates(base,256,256),imageToTT295Coordinates(dense,256,256)),256,256);
const p=(i:number):MakeupPoint=>({x:mesh[2*i],y:mesh[2*i+1]});
function bounds(points:readonly MakeupPoint[]){return {left:Math.min(...points.map(p=>p.x)),right:Math.max(...points.map(p=>p.x)),top:Math.min(...points.map(p=>p.y)),bottom:Math.max(...points.map(p=>p.y))};}
function inside(point:MakeupPoint,b:ReturnType<typeof bounds>,padding:number){expect(point.x).toBeGreaterThanOrEqual(b.left-padding);expect(point.x).toBeLessThanOrEqual(b.right+padding);expect(point.y).toBeGreaterThanOrEqual(b.top-padding);expect(point.y).toBeLessThanOrEqual(b.bottom+padding);}
function projectUV(u:number,v:number):MakeupPoint {
 for(let i=0;i<topology.indices.length;i+=3){
  const [a,b,c]=topology.indices.slice(i,i+3);
  const ax=topology.uv[a*2],ay=topology.uv[a*2+1],bx=topology.uv[b*2],by=topology.uv[b*2+1],cx=topology.uv[c*2],cy=topology.uv[c*2+1];
  const d=(by-cy)*(ax-cx)+(cx-bx)*(ay-cy);if(Math.abs(d)<1e-12)continue;
  const wa=((by-cy)*(u-cx)+(cx-bx)*(v-cy))/d,wb=((cy-ay)*(u-cx)+(ax-cx)*(v-cy))/d,wc=1-wa-wb;
  if(Math.min(wa,wb,wc)>=-1e-7)return {x:wa*p(a).x+wb*p(b).x+wc*p(c).x,y:wa*p(a).y+wb*p(b).y+wc*p(c).y};
 }
 throw new Error('Authored pigment sample is outside original mesh');
}

describe('Original makeup feature registration',()=>{
 test('all authored eye, brow and lip vertices land in their own anatomical regions',()=>{
  const eye=bounds([...base.slice(52,64),...base.slice(72,78)]),brow=bounds([...base.slice(33,43),...base.slice(64,72)]),mouth=bounds(base.slice(84,104));
  for(let i=46;i<90;i++)inside(p(i),eye,1);
  for(let i=90;i<116;i++)inside(p(i),brow,1);
  for(let i=116;i<180;i++)inside(p(i),mouth,1);
 });
 test('left/right eye, brow and mouth corners preserve native traversal',()=>{
  // Anatomical endpoints are also represented in base106, independently of the dense layout.
  for(const [meshIndex,baseIndex] of [[46,52],[57,55],[68,61],[79,58],[90,33],[96,37],[103,42],[109,38],[176,84],[177,90],[178,96],[179,100]]){
   expect(Math.hypot(p(meshIndex).x-base[baseIndex].x,p(meshIndex).y-base[baseIndex].y)).toBeLessThan(.02);
  }
 });
 test('original lips PNG pigment UV projects onto the lips, below eyes and nose',()=>{
  // Alpha-weighted centroid of the original 1024x1024 lips PNG is image UV (.4987,.6667).
  // The authored mesh uses V-up; its corresponding texture coordinate is (.4987,.3333).
  const pigment=projectUV(.4987,1-.6667);
  inside(pigment,bounds(base.slice(84,104)),0);
  expect(pigment.y).toBeGreaterThan(base[49].y+20);
  expect(Math.abs(pigment.x-base[87].x)).toBeLessThan(5);
 });
 test('incomplete network output cannot silently produce a mesh',()=>{
  expect(()=>reorderExtraLandmarks(networkMean.slice(0,239))).toThrow('240');
 });
});
