import {readFileSync,writeFileSync} from 'node:fs';
import {buildMakeupPositions,cvtEye106to240,cvtBrow106to240,cvtMouth106to240} from '../src/makeup-geometry';
const raw=readFileSync(process.argv[2]);const f=new Float32Array(raw.buffer,raw.byteOffset,raw.byteLength/4);
const p=Array.from({length:106},(_,i)=>({x:f[2*i],y:f[2*i+1]}));
for(const [name,fn] of [['eye',cvtEye106to240],['brow',cvtBrow106to240],['mouth',cvtMouth106to240]] as const) writeFileSync(`${process.argv[3]}.${name}.f32`,Buffer.from(new Float32Array(fn(p).flatMap(p=>[p.x,p.y])).buffer));
writeFileSync(`${process.argv[3]}.mesh.f32`,Buffer.from(buildMakeupPositions(p).buffer));
