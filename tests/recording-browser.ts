/** Real MediaRecorder container regression, using a generated canvas only. */
import {ALL_FORMATS,BlobSource,EncodedPacketSink,Input} from 'mediabunny';
import {finalizeRecording} from '../src/video-file';

async function recordedCanvas():Promise<Blob>{
  const canvas=document.createElement('canvas');canvas.width=160;canvas.height=96;
  const context=canvas.getContext('2d')!;
  context.fillStyle='navy';context.fillRect(0,0,160,96);
  const stream=canvas.captureStream(15);
  const recorder=new MediaRecorder(stream,{mimeType:'video/webm;codecs=vp8'});
  const chunks:Blob[]=[];
  const stopped=new Promise<Blob>((resolve,reject)=>{
    recorder.ondataavailable=event=>{if(event.data.size)chunks.push(event.data);};
    recorder.onerror=()=>reject(new Error('Synthetic MediaRecorder failed.'));
    recorder.onstop=()=>resolve(new Blob(chunks,{type:recorder.mimeType}));
  });
  try{
    recorder.start(100);
    for(let i=0;i<30;i++){
      context.fillStyle=`rgb(${30+i*6},50,160)`;context.fillRect(0,0,160,96);
      context.fillStyle='lime';context.fillRect((i*5)%150,30,10,35);
      await new Promise(resolve=>setTimeout(resolve,67));
    }
    recorder.stop();return await stopped;
  }finally{if(recorder.state!=='inactive')recorder.stop();stream.getTracks().forEach(track=>track.stop());canvas.width=canvas.height=1;}
}

async function browserVideo(blob:Blob,seek:boolean){
  const video=document.createElement('video');video.preload='metadata';video.muted=true;
  const url=URL.createObjectURL(blob);video.src=url;document.body.append(video);
  const event=(name:string)=>new Promise<void>((resolve,reject)=>{
    const timeout=setTimeout(()=>{clean();reject(new Error(`Video ${name} timed out.`));},5000);
    const success=()=>{clean();resolve();},error=()=>{clean();reject(new Error('Browser could not read the finalized recording.'));};
    const clean=()=>{clearTimeout(timeout);video.removeEventListener(name,success);video.removeEventListener('error',error);};
    video.addEventListener(name,success,{once:true});video.addEventListener('error',error,{once:true});
  });
  try{
    await event('loadedmetadata');
    const duration=video.duration;
    let seeked=false;
    if(seek&&Number.isFinite(duration)&&duration>0){const ready=event('seeked');video.currentTime=duration*.6;await ready;seeked=Math.abs(video.currentTime-duration*.6)<.05;}
    return {finiteDuration:Number.isFinite(duration),duration:Number.isFinite(duration)?duration:null,seeked};
  }finally{video.pause();video.removeAttribute('src');video.load();video.remove();URL.revokeObjectURL(url);}
}

async function packetSummary(blob:Blob){
  const input=new Input({source:new BlobSource(blob),formats:ALL_FORMATS});
  try{
    const track=await input.getPrimaryVideoTrack();if(!track)throw new Error('Recording lost video.');
    const buffers:Uint8Array[]=[];const timestamps:number[]=[];let bytes=0;
    for await(const packet of new EncodedPacketSink(track).packets()){buffers.push(packet.data);bytes+=packet.data.length;timestamps.push(packet.timestamp);}
    const data=new Uint8Array(bytes);let offset=0;for(const buffer of buffers){data.set(buffer,offset);offset+=buffer.length;}
    const hash=Array.from(new Uint8Array(await crypto.subtle.digest('SHA-256',data)),value=>value.toString(16).padStart(2,'0')).join('');
    return {packets:timestamps.length,timestamps,hash,codec:await track.getCodec()};
  }finally{input.dispose();}
}

export async function validateRecordingFinalization(){
  const input=await recordedCanvas();
  const originalMetadata=await browserVideo(input,false),original=await packetSummary(input);
  const OriginalEncoder=VideoEncoder,OriginalDecoder=VideoDecoder;let codecConstructions=0;
  globalThis.VideoEncoder=new Proxy(OriginalEncoder,{construct(){codecConstructions++;throw new Error('Remux must not encode.');}});
  globalThis.VideoDecoder=new Proxy(OriginalDecoder,{construct(){codecConstructions++;throw new Error('Remux must not decode.');}});
  let result:Awaited<ReturnType<typeof finalizeRecording>>;
  try{result=await finalizeRecording(input);}
  finally{globalThis.VideoEncoder=OriginalEncoder;globalThis.VideoDecoder=OriginalDecoder;}
  try{
    const metadata=await browserVideo(result.blob,true),actual=await packetSummary(result.blob);
    const packetsPreserved=actual.packets===original.packets&&actual.hash===original.hash;
    const timestampsPreserved=actual.timestamps.every((timestamp,i)=>Math.abs(timestamp-original.timestamps[i])<.002);
    return {synthetic:true,passed:metadata.finiteDuration&&metadata.seeked&&packetsPreserved&&timestampsPreserved&&codecConstructions===0,
      originalMetadata,finalMetadata:metadata,inputBytes:input.size,outputBytes:result.blob.size,extension:result.extension,
      inputPackets:original.packets,outputPackets:actual.packets,packetsPreserved,timestampsPreserved,codecConstructions,codec:actual.codec};
  }finally{await result.release();}
}
