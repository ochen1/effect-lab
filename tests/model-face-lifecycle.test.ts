import { afterEach, beforeEach, describe, expect, mock, test } from 'bun:test';

let tensorDisposals=0,sessionDisposals=0,creations=0;
let runGate:Promise<void>|undefined;
class FakeTensor {
  type='float32';
  constructor(_type:string,public data:Float32Array,public dims:number[]){}
  async getData(){return this.data;}
  dispose(){tensorDisposals++;this.data.fill(NaN);}
}
mock.module('onnxruntime-web/webgpu',()=>({
  env:{wasm:{}},Tensor:FakeTensor,
  InferenceSession:{create:async()=>{
    creations++;
    return {
      async run(input:Record<string,FakeTensor>){
        await runGate;
        return {prediction:new FakeTensor('float32',new Float32Array([input.data.data[0],.75]),[1,2])};
      },
      async release(){sessionDisposals++;},
    };
  }},
}));
const {createFaceRuntime}=await import('../src/face');
const originalFetch=globalThis.fetch;
beforeEach(()=>{
  tensorDisposals=0;sessionDisposals=0;creations=0;runGate=undefined;
  globalThis.fetch=mock(async()=>new Response(new Uint8Array(2048))) as unknown as typeof fetch;
});
afterEach(()=>{globalThis.fetch=originalFetch;});

describe('face inference lifetime',()=>{
  test('copies outputs before disposing native input/output tensors',async()=>{
    const runtime=createFaceRuntime();
    const pixels=new Float32Array([.25,0,0]);
    const output=await runtime.infer('test',pixels,1);
    expect(Array.from(output.prediction.data)).toEqual([.25,.75]);
    expect(pixels[0]).toBe(.25);
    expect(tensorDisposals).toBe(2);
    await runtime.dispose();
    expect(sessionDisposals).toBe(1);
  });

  test('disposal waits for inference, rejects new work, and releases only once',async()=>{
    let finish!:()=>void;
    runGate=new Promise<void>(resolve=>{finish=resolve;});
    const runtime=createFaceRuntime();
    const running=runtime.infer('test',new Float32Array(3),1);
    // Allow fetch + session setup to enter the gated native run.
    while(creations===0)await new Promise(resolve=>setTimeout(resolve,0));
    await new Promise(resolve=>setTimeout(resolve,0));
    const disposing=runtime.dispose();
    expect(sessionDisposals).toBe(0);
    await expect(runtime.infer('test',new Float32Array(3),1)).rejects.toThrow('disposed');
    finish();
    await running;await disposing;await runtime.dispose();
    expect(tensorDisposals).toBe(2);
    expect(sessionDisposals).toBe(1);
  });

  test('a failed model download can be retried',async()=>{
    let downloads=0;
    globalThis.fetch=mock(async()=>++downloads===1?new Response('',{status:503}):new Response(new Uint8Array(2048))) as unknown as typeof fetch;
    const runtime=createFaceRuntime();
    await expect(runtime.infer('test',new Float32Array(3),1)).rejects.toThrow('HTTP 503');
    await runtime.infer('test',new Float32Array(3),1);
    expect(downloads).toBe(2);expect(creations).toBe(1);
    await runtime.dispose();
  });
});
