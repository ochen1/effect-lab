import { expect, test } from 'bun:test';
import { decodeFaceProposals, detectorPixels, detectorSize, initialFaceCrop, intersectionOverUnion, sampleFacePixels, sampleFaceRectangle, type FaceTensor } from './face';

function syntheticImage(width:number,height:number):ImageData {
  const data=new Uint8ClampedArray(width*height*4);
  for(let y=0;y<height;y++)for(let x=0;x<width;x++) {
    const p=(y*width+x)*4;data[p]=x%256;data[p+1]=y%256;data[p+2]=(x+3*y)%256;data[p+3]=255;
  }
  return {width,height,data,colorSpace:'srgb'} as ImageData;
}

test('native initial rectangle uses 1.4 expansion and edge anchoring',()=>{
  // Independently captured from the original rectangle helper, not fit to its output.
  expect(initialFaceCrop({x:120,y:145,width:131,height:178},360,640))
    .toEqual({x:37,y:109,width:249,height:249});
});

test('native rectangle sampling is nearest with BGR and binary fraction 6',()=>{
  const image=syntheticImage(360,640),crop=sampleFaceRectangle(image,{x:37,y:109,width:249,height:249});
  expect(crop.length).toBe(43200);
  // Four source pixel correspondences, including both ends, fix resize convention.
  for(const [x,y,sx,sy] of [[0,0,37,109],[90,10,223,129],[80,20,203,150],[119,119,283,355]]) {
    const p=y*120+x;
    expect(crop[p]).toBe(((sx+3*sy)%256-128)/64);
    expect(crop[14400+p]).toBe((sy%256-128)/64);
    expect(crop[28800+p]).toBe((sx%256-128)/64);
  }
});

test('native affine warp rounds the two terms separately',()=>{
  const result=sampleFacePixels(syntheticImage(8,8),[1,0,.4,1,.4,0],2);
  // (1,1): round(1+.4)+round(.4)=1; ordinary round(1+.4+.4)=2.
  expect(result[8+3]).toBe((1-128)/64);
  expect(result[3]).toBe((4-128)/64);
});

test('detector resize aligns the longer dimension and preserves native integer sampling',()=>{
  expect(detectorSize(360,640)).toEqual([160,288]);
  expect(detectorSize(640,360)).toEqual([288,160]);
  const pixels=detectorPixels(syntheticImage(8,8),2,2);
  expect(pixels[3]).toBe((16-128)/64); // BGR at source(4,4).
});

test('original SSD channels and inclusive coordinates decode correctly',()=>{
  const tensors:Record<string,FaceTensor>={};
  for(const [stride,anchors,size] of [[8,2,5],[16,2,3],[32,3,2]]) {
    const logits=new Float32Array(anchors*2*size*size);
    logits.fill(10,0,anchors*size*size);
    tensors[`rpn_cls_score/${stride}s`]={data:logits,dims:[1,anchors*2,size,size]};
    tensors[`rpn_bbox_pred/${stride}s`]={data:new Float32Array(anchors*4*size*size),dims:[1,anchors*4,size,size]};
  }
  const score=tensors['rpn_cls_score/8s'].data;
  score[4*5+3]=0;score[2*25+4*5+3]=10;
  const boxes=decodeFaceProposals(tensors,40,40);
  expect(boxes).toHaveLength(1);
  expect(boxes[0]).toMatchObject({x:16,y:22,width:15,height:18}); // bottomclips39.
  expect(boxes[0].score).toBeGreaterThan(.999);
  expect(intersectionOverUnion({x:0,y:0,width:2,height:2},{x:1,y:1,width:2,height:2})).toBeCloseTo(1/7);
});
