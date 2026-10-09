import {expect,test} from 'bun:test';
import {inspectVideo,videoOutputSize,resolveVideoFrameDuration} from '../src/video-file';

test('video export respects portrait and landscape resolution caps',()=>{
  expect(videoOutputSize(1920,1080,720)).toEqual([720,404]);
  expect(videoOutputSize(1080,1920,1080)).toEqual([606,1080]);
  expect(videoOutputSize(640,480,1080)).toEqual([640,480]);
  expect(videoOutputSize(1919,1079,null)).toEqual([1918,1078]);
});
test('video export rejects invalid dimensions instead of allocating an invalid canvas',()=>{
  for(const [width,height,max] of [[0,10,null],[NaN,10,null],[Infinity,10,null],[10,10,0],[10,10,NaN]] as const){
    expect(()=>videoOutputSize(width,height,max)).toThrow();
  }
});
test('metadata inspection rejects an empty file and an already cancelled operation',async()=>{
  await expect(inspectVideo(new Blob())).rejects.toThrow('empty');
  const controller=new AbortController();controller.abort();
  await expect(inspectVideo(new Blob(['not a movie']),controller.signal)).rejects.toMatchObject({name:'AbortError'});
});

test('an omitted VFR frame duration uses the next timestamp or exact final duration',()=>{
  expect(resolveVideoFrameDuration(.08,0,.21,1.4,.08)).toBeCloseTo(.13,8);
  expect(resolveVideoFrameDuration(1.1,0,undefined,1.4,.3)).toBeCloseTo(.3,8);
  expect(resolveVideoFrameDuration(0,.08,.21,1.4,0)).toBe(.08);
  expect(()=>resolveVideoFrameDuration(0,0,undefined,0,0)).toThrow('timing');
});
