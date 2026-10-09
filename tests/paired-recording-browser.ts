/** Real stream/recorder tests driven through Aside; generated pixels and tone only. */
import {ALL_FORMATS,BlobSource,EncodedPacketSink,Input,VideoSampleSink} from 'mediabunny';
import {startPairedRecording} from '../src/live-recording';

async function temporaryFiles(){
  const directory=await navigator.storage.getDirectory();const names:string[]=[];
  for await(const name of directory.keys())if(name.startsWith('effect-lab-recording-'))names.push(name);
  return names;
}
function sources(){
  const raw=document.createElement('canvas'),filtered=document.createElement('canvas');
  raw.width=320;raw.height=180;filtered.width=160;filtered.height=90;
  const r=raw.getContext('2d')!,f=filtered.getContext('2d')!;
  let count=0;
  const paintRaw=()=>{count++;r.fillStyle=`rgb(${30+count%160},35,180)`;r.fillRect(0,0,320,180);r.fillStyle='white';r.fillRect(count*7%300,60,20,50);};
  const paintFiltered=()=>{f.drawImage(raw,0,0,160,90);f.fillStyle='rgb(20,230,30)';f.fillRect(0,0,40,30);};
  paintRaw();paintFiltered();
  const rawTimer=setInterval(paintRaw,40),filteredTimer=setInterval(paintFiltered,300);
  const stream=raw.captureStream(25);
  return {stream,filtered,stop(){clearInterval(rawTimer);clearInterval(filteredTimer);stream.getTracks().forEach(track=>track.stop());raw.width=raw.height=filtered.width=filtered.height=1;}};
}
async function summary(blob:Blob){
  const input=new Input({source:new BlobSource(blob),formats:ALL_FORMATS});
  const canvas=document.createElement('canvas');canvas.width=100;canvas.height=100;
  try{
    const track=await input.getPrimaryVideoTrack();if(!track)throw new Error('Video track missing.');
    let count=0;for await(const _ of new EncodedPacketSink(track).packets(undefined,undefined,{metadataOnly:true}))count++;
    const frame=await new VideoSampleSink(track).getSample(.8);
    let green=0;
    if(frame){try{frame.draw(canvas.getContext('2d')!,0,0,100,100);const pixel=canvas.getContext('2d')!.getImageData(5,5,1,1).data;green=pixel[1]-Math.max(pixel[0],pixel[2]);}finally{frame.close();}}
    return {width:await track.getDisplayWidth(),height:await track.getDisplayHeight(),frames:count,duration:Math.max(await input.computeDuration(),(await input.getDurationFromMetadata())??0),audio:(await input.getAudioTracks()).length,green};
  }finally{input.dispose();canvas.width=canvas.height=1;}
}
const wait=(ms:number)=>new Promise(resolve=>setTimeout(resolve,ms));

export async function validatePairedRecording(withMicrophone=false){
  let audio:AudioContext|undefined,microphone:MediaStream|undefined,oscillator:OscillatorNode|undefined;
  if(withMicrophone){
    audio=new AudioContext();const destination=audio.createMediaStreamDestination();
    oscillator=audio.createOscillator();oscillator.frequency.value=440;
    const volume=audio.createGain();volume.gain.value=.1;oscillator.connect(volume).connect(destination);
    oscillator.start();await audio.resume();microphone=destination.stream;
  }
  const before=await temporaryFiles();const media=sources();
  let writesBeforeStop=0;
  const write=FileSystemWritableFileStream.prototype.write;
  FileSystemWritableFileStream.prototype.write=function(data){if(data instanceof Blob&&data.size)writesBeforeStop++;return write.call(this,data);};
  try{
    const session=await startPairedRecording({originalStream:media.stream,filteredCanvas:media.filtered,microphoneStream:microphone});
    await wait(2200);
    const streamingWrites=writesBeforeStop;
    const result=await session.stop();
    try{
      const original=await summary(result.original.blob),filtered=await summary(result.filtered.blob);
      const liveOriginal=media.stream.getVideoTracks()[0].readyState==='live';
      await result.original.release();
      // Independent ownership: deleting the raw download must not break edited.
      const filteredStillReadable=(await result.filtered.blob.slice(0,32).arrayBuffer()).byteLength===32;
      const report={synthetic:true,passed:original.width===320&&original.height===180&&filtered.width===160&&filtered.height===90&&original.frames>=filtered.frames*2&&original.frames>=35&&filtered.frames>=5&&filtered.green>100&&original.green<0&&streamingWrites>=4&&liveOriginal&&filteredStillReadable&&Math.abs(original.duration-filtered.duration)<.1&&original.audio===(withMicrophone?1:0)&&filtered.audio===(withMicrophone?1:0),
        original,filtered,streamingWrites,liveOriginal,filteredStillReadable,metadata:result.metadata};
      return report;
    }finally{await result.release();}
  }finally{FileSystemWritableFileStream.prototype.write=write;media.stop();oscillator?.stop();microphone?.getTracks().forEach(track=>track.stop());await audio?.close();const after=await temporaryFiles();if(after.some(name=>!before.includes(name)))throw new Error('Paired recording leaked temporary files.');}
}

export async function validatePairedAbort(){
  const before=await temporaryFiles(),media=sources();
  try{
    const session=await startPairedRecording({originalStream:media.stream,filteredCanvas:media.filtered});
    await wait(450);await session.abort();
    let rejected=false;try{await session.stop();}catch(error){rejected=error instanceof DOMException&&error.name==='AbortError';}
    const leaked=(await temporaryFiles()).filter(name=>!before.includes(name));
    return {passed:session.state==='aborted'&&rejected&&!leaked.length&&media.stream.getVideoTracks()[0].readyState==='live',state:session.state,stopRejected:rejected,temporaryFilesLeaked:leaked.length,originalTrackState:media.stream.getVideoTracks()[0].readyState};
  }finally{media.stop();}
}

export async function validatePairedQuotaFailure(){
  const before=await temporaryFiles(),media=sources();
  const write=FileSystemWritableFileStream.prototype.write;
  let notify!:(error:Error)=>void;const failed=new Promise<Error>(resolve=>{notify=resolve;});
  FileSystemWritableFileStream.prototype.write=function(data){if(data instanceof Blob&&data.size)return Promise.reject(new DOMException('Synthetic disk full','QuotaExceededError'));return write.call(this,data);};
  try{
    const session=await startPairedRecording({originalStream:media.stream,filteredCanvas:media.filtered,onError:notify});
    const error=await Promise.race([failed,wait(5000).then(()=>{throw new Error('Quota failure was not reported.');})]);
    await session.abort();
    const leaked=(await temporaryFiles()).filter(name=>!before.includes(name));
    return {passed:session.state==='error'&&error.message.includes('storage is full')&&!leaked.length&&media.stream.getVideoTracks()[0].readyState==='live',state:session.state,error:error.message,temporaryFilesLeaked:leaked.length,originalTrackState:media.stream.getVideoTracks()[0].readyState};
  }finally{FileSystemWritableFileStream.prototype.write=write;media.stop();}
}

export async function validatePairedNoDisk(){
  const media=sources(),getDirectory=navigator.storage.getDirectory;
  navigator.storage.getDirectory=async()=>{throw new DOMException('Synthetic denial','SecurityError');};
  try{
    try{const session=await startPairedRecording({originalStream:media.stream,filteredCanvas:media.filtered});await session.abort();return {passed:false};}
    catch(error){return {passed:error instanceof Error&&error.message.includes('temporary disk storage')&&media.stream.getVideoTracks()[0].readyState==='live',error:String(error),originalTrackState:media.stream.getVideoTracks()[0].readyState};}
  }finally{navigator.storage.getDirectory=getDirectory;media.stop();}
}

export async function validatePairedStopCancellation(){
  const before=await temporaryFiles(),media=sources(),controller=new AbortController();
  try{
    const session=await startPairedRecording({originalStream:media.stream,filteredCanvas:media.filtered,signal:controller.signal});
    await wait(350);const stopping=session.stop();controller.abort();
    let error:unknown;try{await stopping;}catch(value){error=value;}
    await session.abort();
    const leaked=(await temporaryFiles()).filter(name=>!before.includes(name));
    return {passed:error instanceof DOMException&&error.name==='AbortError'&&!leaked.length&&media.stream.getVideoTracks()[0].readyState==='live',state:session.state,error:String(error),temporaryFilesLeaked:leaked.length};
  }finally{media.stop();}
}
export async function validatePairedPageHide(){
  const before=await temporaryFiles(),media=sources();
  try{
    const session=await startPairedRecording({originalStream:media.stream,filteredCanvas:media.filtered});
    await wait(350);window.dispatchEvent(new PageTransitionEvent('pagehide'));await session.abort();
    const leaked=(await temporaryFiles()).filter(name=>!before.includes(name));
    return {passed:session.state==='aborted'&&!leaked.length&&media.stream.getVideoTracks()[0].readyState==='live',state:session.state,temporaryFilesLeaked:leaked.length};
  }finally{media.stop();}
}
export async function validatePairedFinalizationDiskFailure(){
  const before=await temporaryFiles(),media=sources(),getDirectory=navigator.storage.getDirectory;
  let notifications=0;
  try{
    const session=await startPairedRecording({originalStream:media.stream,filteredCanvas:media.filtered,onError:()=>notifications++});
    await wait(400);
    navigator.storage.getDirectory=async()=>{throw new DOMException('Synthetic finalization denial','SecurityError');};
    let error:unknown;try{await session.stop();}catch(value){error=value;}
    await session.abort();navigator.storage.getDirectory=getDirectory;
    const leaked=(await temporaryFiles()).filter(name=>!before.includes(name));
    return {passed:session.state==='error'&&notifications===1&&String(error).includes('temporary disk storage')&&!leaked.length&&media.stream.getVideoTracks()[0].readyState==='live',state:session.state,notifications,error:String(error),temporaryFilesLeaked:leaked.length};
  }finally{navigator.storage.getDirectory=getDirectory;media.stop();}
}

export async function validatePairedPartialStartupFailure(){
  const before=await temporaryFiles(),media=sources(),Recorder=MediaRecorder;let constructed=0;
  globalThis.MediaRecorder=new Proxy(Recorder,{construct(target,args){if(++constructed===2)throw new Error('Synthetic second recorder initialization failure');return Reflect.construct(target,args,target);}});
  try{
    let error:unknown;
    try{const session=await startPairedRecording({originalStream:media.stream,filteredCanvas:media.filtered});await session.abort();}catch(value){error=value;}
    const leaked=(await temporaryFiles()).filter(name=>!before.includes(name));
    return {passed:String(error).includes('second recorder')&&!leaked.length&&media.stream.getVideoTracks()[0].readyState==='live',error:String(error),temporaryFilesLeaked:leaked.length,originalTrackState:media.stream.getVideoTracks()[0].readyState};
  }finally{globalThis.MediaRecorder=Recorder;media.stop();}
}
