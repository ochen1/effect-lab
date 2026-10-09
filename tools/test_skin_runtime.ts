// Run in an isolated Bun process: module mocks must not affect face runtime tests.
import {mock} from 'bun:test';
import assert from 'node:assert/strict';

const scenario=process.argv[2];
const created:{backend:string;runs:number;releases:number}[]=[];
const inputs:{backend:string;values:Float32Array}[]=[];
let tensorsCreated=0,tensorsDisposed=0,fetches=0;
let failCPU=scenario==='reference-retry',failGPU=scenario==='gpu-error';
let invalidDownload=scenario==='download-retry';
let releaseGate:(()=>void)|undefined;
let referenceEntered=false;
const gate=scenario==='dispose-during-check'?new Promise<void>(resolve=>{releaseGate=resolve;}):undefined;
class Tensor {
  type='float32';disposed=false;
  constructor(_type:string,public data:Float32Array,public dims:number[]){tensorsCreated++;}
  async getData(){return this.data;}
  dispose(){assert.equal(this.disposed,false,'Tensor disposed twice');this.disposed=true;tensorsDisposed++;}
}
mock.module('onnxruntime-web/webgpu',()=>({
  env:{wasm:{}},Tensor,
  InferenceSession:{async create(_model:Uint8Array,options:{executionProviders:string[]}){
    const record={backend:options.executionProviders[0],runs:0,releases:0};created.push(record);
    return {
      inputNames:['data'],outputNames:['Tanh_134'],
      async run(feed:{data:Tensor}){
        record.runs++;inputs.push({backend:record.backend,values:feed.data.data.slice()});
        if(record.backend==='wasm'){
          referenceEntered=true;await gate;
          if(failCPU)throw new Error('Synthetic CPU failure');
        }
        if(record.backend==='webgpu'&&(failGPU||(scenario==='run-fallback'&&record.runs>1)))throw new Error('Synthetic GPU failure');
        const count=320*320,output=new Float32Array(count*4);
        output.set(feed.data.data.map(value=>value*.5));
        for(let i=0;i<count;i++)output[3*count+i]=.2+feed.data.data[i]*.1;
        if(record.backend==='webgpu'&&scenario==='finite-wrong')output.fill(.123);
        if(record.backend==='webgpu'&&scenario==='minor-drift')output[1000]+=.001;
        if(record.backend==='webgpu'&&scenario==='alpha-wrong')output[3*count+100]+=.2;
        if(record.backend==='webgpu'&&scenario==='mean-drift')for(let i=0;i<output.length;i++)output[i]+=.003;
        if(record.backend==='webgpu'&&scenario==='nonfinite')output[100]=NaN;
        return {Tanh_134:new Tensor('float32',output,[1,4,320,320])};
      },
      async release(){assert.equal(record.releases,0,'Session released twice');record.releases++;},
    };
  }},
}));
Object.defineProperty(globalThis,'navigator',{configurable:true,value:{gpu:{}}});
if(scenario==='preference')Object.defineProperty(globalThis,'localStorage',{configurable:true,get(){throw new Error('Storage unavailable');}});
globalThis.fetch=mock(async()=>{fetches++;return new Response(new Uint8Array(invalidDownload?16:2048));}) as unknown as typeof fetch;
const api=await import('../src/inference');
const runtime=api.createSkinRuntime();
const releases=(backend:string)=>created.filter(record=>record.backend===backend).reduce((sum,record)=>sum+record.releases,0);

if(scenario==='preference'){
  assert.equal(api.getSkinBackendPreference(),'auto');
  await api.setSkinBackendPreference('wasm');assert.equal(api.getSkinBackendPreference(),'wasm');
  assert.equal((await api.warmSkin()).backend,'wasm');assert.equal(created.some(record=>record.backend==='webgpu'),false);
  await api.setSkinBackendPreference('auto');assert.equal(releases('wasm'),1);
  assert.equal((await api.warmSkin()).backend,'webgpu');
  await assert.rejects(api.setSkinBackendPreference('invalid' as never));
  await api.disposeSkin();
}else if(scenario==='dispose-during-check'){
  const warming=runtime.warm();
  while(!referenceEntered)await new Promise(resolve=>setTimeout(resolve,0));
  const queued=runtime.run(new Float32Array(320*320*3)).catch(error=>error);
  const disposing=runtime.dispose();
  assert.equal(releases('wasm'),0);
  releaseGate!();await warming;await disposing;
  assert.match(String(await queued),/disposed/);assert.equal(runtime.getStatus().state,'disposed');
  await runtime.dispose();
}else{
  if(scenario==='reference-retry'){
    await assert.rejects(runtime.warm(),/Synthetic CPU failure/);
    assert.equal(releases('wasm'),1);assert.equal(created.some(record=>record.backend==='webgpu'),false);
    failCPU=false;
  }
  if(scenario==='download-retry'){
    await assert.rejects(runtime.warm(),/incomplete/);assert.equal(created.length,0);
    invalidDownload=false;
  }
  const status=await runtime.warm();
  if(['finite-wrong','gpu-error','alpha-wrong','mean-drift','nonfinite'].includes(scenario)){
    assert.equal(status.backend,'wasm');assert.equal(status.validation?.accepted,false);
    assert.equal(releases('webgpu'),1);assert.equal(releases('wasm'),0);
    assert.ok(status.fallbackReason);
  }else{
    assert.equal(status.backend,'webgpu');assert.equal(status.validation?.accepted,true);
    assert.equal(status.validation?.strictPassed,scenario!=='minor-drift');
    assert.equal(releases('wasm'),scenario==='reference-retry'?2:1);assert.equal(releases('webgpu'),0);
    const cpuInput=inputs.find(record=>record.backend==='wasm')!.values;
    const gpuInput=inputs.find(record=>record.backend==='webgpu')!.values;
    assert.deepEqual(cpuInput,gpuInput,'Backends must receive the exact same diagnostic');
    assert.notEqual(cpuInput[0],cpuInput[2*320*320]);assert.notEqual(cpuInput[0],cpuInput[319]);
  }
  const runs=created.reduce((sum,record)=>sum+record.runs,0);
  await runtime.warm();assert.equal(created.reduce((sum,record)=>sum+record.runs,0),runs,'Qualification repeated');
  await runtime.run(new Float32Array(320*320*3));
  if(scenario==='run-fallback')assert.equal(runtime.getStatus().backend,'wasm');
  if(scenario==='download-retry')assert.equal(fetches,2);else assert.equal(fetches,1);
  await runtime.dispose();await runtime.dispose();
}
assert.equal(tensorsDisposed,tensorsCreated,'Native tensors leaked');
assert.equal(created.every(record=>record.releases===1),true,'Native sessions leaked');
console.log(JSON.stringify({scenario,passed:true,sessions:created.length,tensors:tensorsCreated}));
