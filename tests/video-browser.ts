/** Browser-only synthetic codec roundtrip. No camera, personal file, or photo input. */
import {
  ALL_FORMATS, AudioBufferSource, AudioSampleSink, BlobSource, BufferTarget,
  CanvasSource, Input, Output, Quality, VideoSampleSink, WebMOutputFormat,
} from 'mediabunny';
import { exportFilteredVideo, inspectVideo } from '../src/video-file';

const timestamps=[0,.08,.21,.25,.5,.57,.8,1.1];
const duration=1.4;
export async function createSyntheticVideo(withAudio=true):Promise<Blob> {
  const canvas=document.createElement('canvas');canvas.width=160;canvas.height=96;
  const context=canvas.getContext('2d')!;
  const output=new Output({format:new WebMOutputFormat(),target:new BufferTarget()});
  const video=new CanvasSource(canvas,{codec:'vp8',quality:new Quality('high')});
  const audio=new AudioBufferSource({codec:'opus',quality:new Quality('high')});
  output.addVideoTrack(video);if(withAudio)output.addAudioTrack(audio);
  try {
    await output.start();
    for(let i=0;i<timestamps.length;i++){
      context.fillStyle=`rgb(${20+i*25},35,160)`;context.fillRect(0,0,160,96);
      context.fillStyle='white';context.fillRect(8+i*14,55,9,20);
      await video.add(timestamps[i],(timestamps[i+1]??duration)-timestamps[i]);
    }
    const tone=new AudioBuffer({numberOfChannels:1,length:Math.round(duration*48000),sampleRate:48000});
    const values=tone.getChannelData(0);
    for(let i=0;i<values.length;i++)values[i]=.15*Math.sin(2*Math.PI*440*i/48000);
    if(withAudio){await audio.add(tone);audio.close();}video.close();await output.finalize();
    return new Blob([output.target.buffer!],{type:'video/webm'});
  } catch(error){await output.cancel().catch(()=>{});throw error;}
  finally{canvas.width=canvas.height=1;}
}

async function decodeSummary(blob:Blob){
  const input=new Input({source:new BlobSource(blob),formats:ALL_FORMATS});
  const canvas=document.createElement('canvas');canvas.width=160;canvas.height=96;
  const context=canvas.getContext('2d',{willReadFrequently:true})!;
  try {
    const video=await input.getPrimaryVideoTrack(),audio=await input.getPrimaryAudioTrack();
    if(!video)throw new Error('Synthetic export lost its video track.');
    const frames:{timestamp:number;duration:number;green:number;red:number}[]=[];
    for await(const sample of new VideoSampleSink(video).samples()){
      try {
        sample.draw(context,0,0,160,96);
        const marker=context.getImageData(5,5,1,1).data;
        const background=context.getImageData(120,30,1,1).data;
        frames.push({timestamp:sample.timestamp,duration:sample.duration,
          green:marker[1]-Math.max(marker[0],marker[2]),red:background[0]});
      } finally{sample.close();}
    }
    let squares=0,samples=0;
    if(audio)for await(const sample of new AudioSampleSink(audio).samples()){
      try {
        const values=new Float32Array(sample.allocationSize({format:'f32',planeIndex:0})/4);
        sample.copyTo(values,{format:'f32',planeIndex:0});
        for(const value of values)squares+=value*value;
        samples+=values.length;
      }finally{sample.close();}
    }
    return {frames,duration:await input.computeDuration(),audio:!!audio,audioSamples:samples,
      audioRms:samples?Math.sqrt(squares/samples):0};
  }finally{input.dispose();canvas.width=canvas.height=1;}
}

export async function validateVideoExport(){
  const file=await createSyntheticVideo();
  const metadata=await inspectVideo(file);
  const original=await decodeSummary(file);
  const progress:number[]=[];
  let active=0,maxActive=0;
  const started=performance.now();
  const result=await exportFilteredVideo(file,{
    maxDimension:null,onProgress:value=>progress.push(value),
    async processFrame(source,width,height){
      active++;maxActive=Math.max(maxActive,active);
      try {
        // Deliberately slower than playback: every frame must survive anyway.
        await new Promise(resolve=>setTimeout(resolve,220));
        const filtered=document.createElement('canvas');filtered.width=width;filtered.height=height;
        const context=filtered.getContext('2d')!;
        context.drawImage(source,0,0);context.fillStyle='rgb(20,220,30)';context.fillRect(0,0,40,24);
        return filtered;
      }finally{active--;}
    },
  });
  try {
    const encoded=await decodeSummary(result.blob);
    const frameCountMatches=encoded.frames.length===original.frames.length&&result.framesProcessed===original.frames.length;
    const timestampsMatch=frameCountMatches&&encoded.frames.every((frame,i)=>Math.abs(frame.timestamp-original.frames[i].timestamp)<.002);
    const everyFrameFiltered=encoded.frames.every(frame=>frame.green>100);
    const frameSequenceMatches=frameCountMatches&&encoded.frames.every((frame,i)=>Math.abs(frame.red-original.frames[i].red)<12);
    const audioPreserved=encoded.audio&&encoded.audioRms>.05&&Math.abs(encoded.audioSamples-original.audioSamples)<=1024;
    const durationMatches=Math.abs(encoded.duration-original.duration)<.03;
    const progressValid=progress.at(-1)===1&&progress.every((p,i)=>p>=0&&p<=1&&(i===0||p>=progress[i-1]));
    const report={synthetic:true,passed:frameCountMatches&&timestampsMatch&&everyFrameFiltered&&frameSequenceMatches&&audioPreserved&&durationMatches&&progressValid&&maxActive===1,
      format:result.extension,bytes:result.blob.size,metadata,elapsedMs:performance.now()-started,
      inputFrames:original.frames.length,outputFrames:encoded.frames.length,framesProcessed:result.framesProcessed,
      inputFrameTiming:original.frames.map(({timestamp,duration})=>({timestamp,duration})),outputFrameTiming:encoded.frames.map(({timestamp,duration})=>({timestamp,duration})),
      inputDuration:original.duration,outputDuration:encoded.duration,frameCountMatches,timestampsMatch,
      everyFrameFiltered,frameSequenceMatches,audioPreserved,audioRms:encoded.audioRms,
      inputAudioSamples:original.audioSamples,outputAudioSamples:encoded.audioSamples,durationMatches,progressValid,maxActive};
    return report;
  }finally{await result.release();}
}

async function temporaryExports(){
  try {
    const root=await navigator.storage.getDirectory();const files:string[]=[];
    for await(const name of root.keys())if(name.startsWith('effect-lab-export-'))files.push(name);
    return files;
  }catch{return [];}
}

export async function validateVideoCancellation(){
  const file=await createSyntheticVideo();
  const controller=new AbortController();let processed=0,inputDisposals=0,decoderClosures=0;
  const before=await temporaryExports();
  const disposeInput=Input.prototype.dispose,closeDecoder=VideoDecoder.prototype.close;
  Input.prototype.dispose=function(){inputDisposals++;return disposeInput.call(this);};
  VideoDecoder.prototype.close=function(){if(this.state!=='closed')decoderClosures++;return closeDecoder.call(this);};
  try {
    await exportFilteredVideo(file,{maxDimension:160,signal:controller.signal,async processFrame(source,width,height){
      processed++;
      const result=document.createElement('canvas');result.width=width;result.height=height;
      result.getContext('2d')!.drawImage(source,0,0);
      if(processed===2)controller.abort();
      return result;
    }});
    return {passed:false,error:'Export unexpectedly completed',processed};
  }catch(error){
    // The library closes its decoder in the asynchronous demux pump's finally.
    // Wait for that documented disposal work, not an arbitrary playback delay.
    for(let i=0;i<50&&decoderClosures===0;i++)await new Promise(resolve=>setTimeout(resolve,10));
    const leaked=(await temporaryExports()).filter(name=>!before.includes(name));
    return {passed:error instanceof DOMException&&error.name==='AbortError'&&processed===2&&inputDisposals>0&&decoderClosures>0&&!leaked.length,
      processed,inputDisposals,decoderClosures,temporaryFilesLeaked:leaked.length,error:String(error)};
  }finally{Input.prototype.dispose=disposeInput;VideoDecoder.prototype.close=closeDecoder;}
}

export async function validateSilentVideoExport(){
  const file=await createSyntheticVideo();
  const result=await exportFilteredVideo(file,{maxDimension:128,includeAudio:false,async processFrame(source,width,height){
    const frame=document.createElement('canvas');frame.width=width;frame.height=height;
    frame.getContext('2d')!.drawImage(source,0,0);return frame;
  }});
  try{
    const summary=await decodeSummary(result.blob);
    return {passed:!summary.audio&&summary.frames.length===8&&Math.abs(summary.duration-1.4)<.002,
      frames:summary.frames.length,audio:summary.audio,duration:summary.duration,width:result.width,height:result.height};
  }finally{await result.release();}
}

/** Exercise actual WebM encoding and the bounded RAM fallback without OPFS. */
export async function validateVideoFallback(){
  const file=await createSyntheticVideo();
  const support=VideoEncoder.isConfigSupported;
  const directory=navigator.storage.getDirectory;
  VideoEncoder.isConfigSupported=async(config)=>config.codec.startsWith('avc')?{supported:false,config}:support.call(VideoEncoder,config);
  navigator.storage.getDirectory=async()=>{throw new DOMException('Synthetic unavailable storage','SecurityError');};
  try {
    const result=await exportFilteredVideo(file,{maxDimension:154,async processFrame(source,width,height){
      const frame=document.createElement('canvas');frame.width=width;frame.height=height;
      frame.getContext('2d')!.drawImage(source,0,0);return frame;
    }});
    try {
      const summary=await decodeSummary(result.blob);
      return {passed:result.extension==='webm'&&summary.frames.length===8&&summary.audio&&summary.audioRms>.05&&Math.abs(summary.duration-1.4)<.03,
        format:result.extension,frames:summary.frames.length,audio:summary.audio,audioRms:summary.audioRms,duration:summary.duration,bytes:result.blob.size};
    }finally{await result.release();}
  }finally{VideoEncoder.isConfigSupported=support;navigator.storage.getDirectory=directory;}
}

export async function validateVideoWithoutAudioInput(){
  const file=await createSyntheticVideo(false);
  const info=await inspectVideo(file);
  const result=await exportFilteredVideo(file,{maxDimension:null,async processFrame(source,width,height){
    const frame=document.createElement('canvas');frame.width=width;frame.height=height;
    frame.getContext('2d')!.drawImage(source,0,0);return frame;
  }});
  try{const actual=await decodeSummary(result.blob);return {passed:actual.frames.length===8&&!actual.audio&&Math.abs(actual.duration-1.4)<.002&&Math.abs(info.duration-1.4)<.002,metadataDuration:info.duration,outputDuration:actual.duration,frames:actual.frames.length,audio:actual.audio};}
  finally{await result.release();}
}
