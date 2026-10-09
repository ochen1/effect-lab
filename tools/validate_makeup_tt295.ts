import {readFileSync,writeFileSync} from 'node:fs';
import {buildTT295Positions} from '../src/makeup-tt295';
const raw=readFileSync(process.argv[2]);const f=new Float32Array(raw.buffer,raw.byteOffset,raw.byteLength/4);
const p=Array.from({length:240},(_,i)=>({x:f[2*i],y:f[2*i+1]}));
writeFileSync(process.argv[3],Buffer.from(buildTT295Positions(p.slice(0,106),p.slice(106)).buffer));
