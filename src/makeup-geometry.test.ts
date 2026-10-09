import {expect,test} from 'bun:test';
import {readFileSync} from 'node:fs';
import {buildMakeupPositions} from './makeup-geometry';
import {buildTT295Positions} from './makeup-tt295';
function fixture(name:string):Float32Array {
  const data=readFileSync(new URL(`../research/makeup-geometry-synthetic-${name}.f32`,import.meta.url));
  return new Float32Array(data.buffer,data.byteOffset,data.byteLength/4);
}
const input=fixture('input');
const points=Array.from({length:240},(_,i)=>({x:input[i*2],y:input[i*2+1]}));
test('native FaceUCV248 nonlinear fallback synthetic reference',()=>{
  expect(buildMakeupPositions(points.slice(0,106))).toEqual(fixture('248'));
});
test('original native TT295 dense mesh synthetic reference',()=>{
  expect(buildTT295Positions(points.slice(0,106),points.slice(106))).toEqual(fixture('tt295'));
});
