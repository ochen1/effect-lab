/** Native FaceUCV248 landmark conversion, independently transcribed from ARM64.
 * Input and output coordinates use source-image pixels. No learned geometry,
 * finite-difference weights, or private image data are used here.
 */
export interface MakeupPoint { x: number; y: number }
const f = Math.fround;
const add = (a: number, b: number) => f(a + b);
const sub = (a: number, b: number) => f(a - b);
const mul = (a: number, b: number) => f(a * b);
const div = (a: number, b: number) => f(a / b);
const extend = (a: MakeupPoint, b: MakeupPoint): MakeupPoint => ({x:sub(a.x,sub(b.x,a.x)),y:sub(a.y,sub(b.y,a.y))});

/** Native open Catmull–Rom: reflected endpoints; 1=uniform, 2=chordal. */
export function makeupCatmullRom(points: readonly MakeupPoint[], subdivisions: readonly number[], type: 1 | 2): MakeupPoint[] {
  if (points.length < 3) return points.map(p => ({...p}));
  if (subdivisions.length !== points.length-1 || subdivisions.some(n => n<1 || !Number.isInteger(n))) throw new Error('Invalid spline subdivisions');
  const result: MakeupPoint[] = [];
  for (let i=0;i<points.length-1;i++) {
    const p1=points[i], p2=points[i+1];
    const p0=i===0 ? extend(p1,p2) : points[i-1];
    const p3=i===points.length-2 ? extend(p2,p1) : points[i+2];
    const p=[p0,p1,p2,p3];
    const times=[0,1,2,3];
    if(type===2) for(let k=1;k<4;k++) {
      const dx=sub(p[k].x,p[k-1].x),dy=sub(p[k].y,p[k-1].y);
      times[k]=add(times[k-1],f(Math.sqrt(add(mul(dx,dx),mul(dy,dy)))));
    }
    result.push({...p1});
    for(let j=1;j<subdivisions[i];j++) {
      const t=add(times[1],div(mul(sub(times[2],times[1]),j),subdivisions[i]));
      const coordinate=(axis:'x'|'y')=>{
        const blend=(a:number,b:number,t0:number,t1:number)=>add(div(mul(sub(t1,t),a),sub(t1,t0)),div(mul(sub(t,t0),b),sub(t1,t0)));
        const a1=blend(p0[axis],p1[axis],times[0],times[1]);
        const a2=blend(p1[axis],p2[axis],times[1],times[2]);
        const a3=blend(p2[axis],p3[axis],times[2],times[3]);
        const b1=blend(a1,a2,times[0],times[2]);
        const b2=blend(a2,a3,times[1],times[3]);
        return blend(b1,b2,times[1],times[2]);
      };
      result.push({x:coordinate('x'),y:coordinate('y')});
    }
  }
  result.push({...points[points.length-1]});
  return result;
}
const selected=(points:readonly MakeupPoint[],ids:readonly number[],subdivisions:readonly number[],type:1|2)=>makeupCatmullRom(ids.map(i=>points[i]),subdivisions,type);
export function cvtEye106to240(points:readonly MakeupPoint[]): MakeupPoint[] {
  const upperLeft=selected(points,[52,53,72,54,55],[11,11,11,11],1);
  const lowerLeft=selected(points,[52,57,73,56,55],[11,11,11,11],1);
  const upperRight=selected(points,[58,59,75,60,61],[11,11,11,11],1);
  const lowerRight=selected(points,[58,63,76,62,61],[11,11,11,11],1);
  return [...Array.from({length:11},(_,i)=>upperLeft[i*4]),...Array.from({length:11},(_,i)=>lowerLeft[44-i*4]),...Array.from({length:11},(_,i)=>upperRight[44-i*4]),...Array.from({length:11},(_,i)=>lowerRight[i*4])];
}
export function cvtBrow106to240(points:readonly MakeupPoint[]): MakeupPoint[] {
  const groups=[[33,34,35],[35,36,37],[33,64,65],[65,66,67],[42,41,40],[40,39,38],[42,71,70],[70,69,68]];
  return groups.flatMap((ids,i)=> {
    const p=selected(points,ids,[3,3],1);
    return (i===0||i===4 ? [0,2,4,6] : [2,4,6]).map(j=>p[j]);
  });
}
export function cvtMouth106to240(points:readonly MakeupPoint[]): MakeupPoint[] {
  const outerUpper=selected(points,[84,85,86,87,88,89,90],[3,3,2,2,3,3],2);
  const innerUpper=selected(points,[96,97,98,99,100],[4,4,4,4],2);
  const innerLower=selected(points,[96,103,102,101,100],[4,4,4,4],2);
  const outerLower=selected(points,[84,95,94,93,92,91,90],[8,8,8,8,8,8],2);
  return [...outerUpper.slice(1,-1),...innerUpper.slice(1,-1),...innerLower.slice(1,-1),...Array.from({length:15},(_,i)=>outerLower[(i+1)*3]),outerUpper[0],outerUpper[16],innerUpper[0],innerUpper[16]];
}
/** 106 detector landmarks + 8 perimeter + 26 brow + 44 eye + 64 lip. */
export function buildMakeupPositions(points:readonly MakeupPoint[]):Float32Array {
  if(points.length!==106 || points.some(p=>!Number.isFinite(p.x)||!Number.isFinite(p.y))) throw new Error('Makeup requires 106 finite landmarks');
  const base=points.map(p=>({x:f(p.x),y:f(p.y)}));
  const center=base[46];
  const perimeter=[34,6,12,16,20,26,41,43].map((index,i)=>({x:add(center.x,mul(sub(base[index].x,center.x),i===7?3:2)),y:add(center.y,mul(sub(base[index].y,center.y),i===7?3:2))}));
  const result=[...base,...perimeter,...cvtBrow106to240(base),...cvtEye106to240(base),...cvtMouth106to240(base)];
  return new Float32Array(result.flatMap(p=>[p.x,p.y]));
}

export interface MakeupGeometryData { uv: readonly number[]; indices: readonly number[] }
export interface MakeupMesh { positions: Float32Array; uv: Float32Array; indices: Uint16Array }
export function buildMakeupMesh(points: readonly MakeupPoint[], data: MakeupGeometryData): MakeupMesh {
  if (data.uv.length !== 496 || data.indices.length % 3 !== 0 || data.indices.some(i=>!Number.isInteger(i)||i<0||i>=248)) throw new Error('Invalid native makeup topology');
  return {positions:buildMakeupPositions(points),uv:new Float32Array(data.uv),indices:new Uint16Array(data.indices)};
}

/** Coordinate adapters for TT295, whose native geometry uses y-up coordinates.
 * Native SDK landmarks are normalized independently by image width and height.
 * This adapter is useful for image-space landmarks; mesh assembly itself is
 * validated separately from SDK normalization and renderer rescaling.
 */
export function imageToTT295Coordinates(points:readonly MakeupPoint[],width:number,height:number):MakeupPoint[] {
  if(!(width>0&&height>0)) throw new Error('Invalid image size');
  const aspect=f(height/width);
  return points.map(p=>({x:f(p.x/width),y:mul(sub(1,f(p.y/height)),aspect)}));
}
export function tt295ToImageCoordinates(positions:Float32Array,width:number,height:number):Float32Array {
  const result=new Float32Array(positions.length);
  for(let i=0;i<positions.length;i+=2){result[i]=mul(positions[i],width);result[i+1]=sub(height,mul(positions[i+1],width));}
  return result;
}
