import {expect,test} from 'bun:test';
import {createBoundedRecordingWriter,createRecordingDiskFile} from '../src/recording-storage';

test('live capture never retains more than its pending-byte limit',async()=>{
  let unblock!:()=>void;
  const gate=new Promise<void>(resolve=>{unblock=resolve;});
  let writes=0,aborts=0;const errors:Error[]=[];
  const writer=createBoundedRecordingWriter({async write(){writes++;await gate;},async close(){},async abort(){aborts++;}},error=>errors.push(error),8);
  writer.append(new Blob(['1234']));await Promise.resolve();
  writer.append(new Blob(['5678']));
  expect(writer.pendingBytes).toBe(8);expect(writer.peakPendingBytes).toBe(8);
  writer.append(new Blob(['9']));
  expect(errors).toHaveLength(1);expect(errors[0].message).toContain('could not keep up');
  expect(writer.pendingBytes).toBe(8);
  unblock();await writer.abort();
  expect(writer.pendingBytes).toBe(0);expect(writes).toBe(1);expect(aborts).toBe(1);
});
test('disk quota failure stops acceptance and rejects finishing',async()=>{
  const errors:Error[]=[];
  const writer=createBoundedRecordingWriter({async write(){throw new DOMException('Full','QuotaExceededError');},async close(){},async abort(){}},error=>errors.push(error));
  writer.append(new Blob(['chunk']));
  await expect(writer.close()).rejects.toMatchObject({name:'QuotaExceededError'});
  writer.append(new Blob(['not queued']));
  expect(errors).toHaveLength(1);expect(writer.pendingBytes).toBe(0);expect(writer.writtenBytes).toBe(0);
  await writer.abort();
});
test('completed chunks leave the queue and close waits for the final disk write',async()=>{
  let ended=false;let body='';
  const writer=createBoundedRecordingWriter({async write(value){body+=await(value as Blob).text();},async close(){ended=true;},async abort(){}},()=>{});
  writer.append(new Blob(['one']));writer.append(new Blob(['two']));
  await writer.close();
  expect(body).toBe('onetwo');expect(ended).toBe(true);expect(writer.pendingBytes).toBe(0);expect(writer.writtenBytes).toBe(6);
});
test('live recording storage fails visibly when OPFS is unavailable',async()=>{
  const descriptor=Object.getOwnPropertyDescriptor(globalThis,'navigator');
  Object.defineProperty(globalThis,'navigator',{configurable:true,value:{storage:{}}});
  try{await expect(createRecordingDiskFile()).rejects.toThrow('temporary disk storage');}
  finally{if(descriptor)Object.defineProperty(globalThis,'navigator',descriptor);else Reflect.deleteProperty(globalThis,'navigator');}
});
