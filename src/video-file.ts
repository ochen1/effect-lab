import {createRecordingDiskFile} from './recording-storage';
import {
  ALL_FORMATS, BlobSource, Conversion, EncodedPacketSink, EncodedVideoPacketSource, Input, Mp4OutputFormat, Output, Quality,
  StreamTarget, VideoSample, VideoSampleSink, VideoSampleSource, WebMOutputFormat, getFirstEncodableVideoCodec,
  type InputVideoTrack, type StreamTargetChunk, type VideoCodec,
} from 'mediabunny';

export interface VideoFileInfo {
  width:number;
  height:number;
  duration:number;
  videoCodec:string;
  audioTracks:number;
  canDecode:boolean;
}
export interface VideoExportOptions {
  maxDimension:number|null;
  signal?:AbortSignal;
  onProgress?:(fraction:number)=>void;
  onStatus?:(message:string)=>void;
  /** Return an owned canvas. The exporter snapshots and releases it after each frame. */
  processFrame:(source:HTMLCanvasElement,width:number,height:number,signal?:AbortSignal)=>Promise<HTMLCanvasElement>;
  includeAudio?:boolean;
}
export interface VideoExportResult {
  blob:Blob;
  extension:'mp4'|'webm';
  width:number;
  height:number;
  duration:number;
  framesProcessed:number;
  hasAudio:boolean;
  /** Call after revoking the download/preview URL; releases temporary local storage. */
  release:()=>Promise<void>;
}

const CHUNK_BYTES=1024*1024;
const FALLBACK_LIMIT=128*1024*1024;
function abortIfNeeded(signal?:AbortSignal):void {
  if(signal?.aborted)throw new DOMException('Video export cancelled.','AbortError');
}
function openInput(file:Blob):Input<BlobSource> {
  if(!file.size)throw new Error('This video file is empty.');
  return new Input({source:new BlobSource(file,{maxCacheSize:8*1024*1024}),formats:ALL_FORMATS});
}

/** Even dimensions accepted by common hardware encoders, preserving the full frame. */
export function videoOutputSize(width:number,height:number,maxDimension:number|null):[number,number] {
  if(!Number.isFinite(width)||!Number.isFinite(height)||width<=0||height<=0)throw new Error('The video has invalid dimensions.');
  if(maxDimension!==null&&(!Number.isFinite(maxDimension)||maxDimension<2))throw new Error('The export resolution must be at least 2 pixels.');
  const scale=maxDimension===null?1:Math.min(1,maxDimension/Math.max(width,height));
  return [Math.max(2,Math.floor(width*scale/2)*2),Math.max(2,Math.floor(height*scale/2)*2)];
}

async function readInfo(input:Input,track:InputVideoTrack):Promise<VideoFileInfo> {
  const [width,height,end,audio,codec,canDecode,start]=await Promise.all([
    track.getDisplayWidth(),track.getDisplayHeight(),input.computeDuration(),
    input.getAudioTracks(),track.getCodec(),track.canDecode(),input.getFirstTimestamp(),
  ]);
  // A video-only WebM may omit its final packet duration. Its container duration
  // is then the only endpoint; with audio, precise packet timing includes codec
  // delay/padding corrections that container metadata often does not.
  const mediaEnd=audio.length===0?Math.max(end,(await input.getDurationFromMetadata())??0):end;
  const duration=mediaEnd-Math.max(0,start);
  if(!Number.isFinite(duration)||duration<=0)throw new Error('The video has no readable duration.');
  return {width,height,duration,videoCodec:codec??'unknown',audioTracks:audio.length,canDecode};
}

/** Metadata reads do not decode or retain the whole clip. */
export async function inspectVideo(file:Blob,signal?:AbortSignal):Promise<VideoFileInfo> {
  abortIfNeeded(signal);
  const input=openInput(file);
  const abort=()=>input.dispose();
  signal?.addEventListener('abort',abort,{once:true});
  try {
    const track=await input.getPrimaryVideoTrack();
    abortIfNeeded(signal);
    if(!track)throw new Error('This file does not contain a video track.');
    const result=await readInfo(input,track);
    abortIfNeeded(signal);
    return result;
  } catch(error) {
    abortIfNeeded(signal);
    throw error;
  } finally {
    signal?.removeEventListener('abort',abort);
    input.dispose();
  }
}

interface ExportStorage {
  target:StreamTarget;
  getBlob:(mime:string)=>Promise<Blob>;
  release:()=>Promise<void>;
}

async function createStorage(requireDisk=false):Promise<ExportStorage> {
  if(requireDisk){
    const disk=await createRecordingDiskFile('finalized');
    return {
      target:new StreamTarget(disk.writable as WritableStream<StreamTargetChunk>,{chunked:true,chunkSize:CHUNK_BYTES}),
      async getBlob(mime){const file=await disk.getFile();return file.slice(0,file.size,mime);},
      release:disk.release,
    };
  }
  // A File returned by OPFS remains backed by disk while the UI owns its URL.
  // Keeping the temporary file until release() avoids invalidating that snapshot.
  let directory:FileSystemDirectoryHandle|undefined;
  let filename:string|undefined;
  let writable:FileSystemWritableFileStream|undefined;
  try {
    if(typeof navigator!=='undefined'&&navigator.storage?.getDirectory){
      directory=await navigator.storage.getDirectory();
      filename=`effect-lab-export-${crypto.randomUUID()}.tmp`;
      const file=await directory.getFileHandle(filename,{create:true});
      writable=await file.createWritable();
      const target=new StreamTarget(writable as WritableStream<StreamTargetChunk>,{chunked:true,chunkSize:CHUNK_BYTES});
      let released=false;
      return {
        target,
        async getBlob(mime){const value=await file.getFile();return value.slice(0,value.size,mime);},
        async release(){
          if(released)return;released=true;
          if(writable&&!writable.locked)await writable.abort().catch(()=>{});
          await directory!.removeEntry(filename!).catch(()=>{});
        },
      };
    }
  } catch {
    if(writable&&!writable.locked)await writable.abort().catch(()=>{});
    if(directory&&filename)await directory.removeEntry(filename).catch(()=>{});
    // Private browsing and older engines may deny temporary disk storage.
  }
  // A capped, seekable encoded-data buffer is the fallback. Raw frames are never
  // accumulated; the cap is checked before allocation, including sparse writes.
  const chunks=new Map<number,Uint8Array<ArrayBuffer>>();
  let length=0;
  const stream=new WritableStream<StreamTargetChunk>({
    write({data,position}){
      const end=position+data.byteLength;
      if(end>FALLBACK_LIMIT)throw new Error('This browser cannot store an export larger than 128 MB. Choose a lower resolution or a shorter clip.');
      length=Math.max(length,end);
      for(let offset=0;offset<data.length;){
        const index=Math.floor((position+offset)/CHUNK_BYTES),inside=(position+offset)%CHUNK_BYTES;
        let chunk=chunks.get(index);
        if(!chunk){chunk=new Uint8Array(CHUNK_BYTES);chunks.set(index,chunk);}
        const take=Math.min(data.length-offset,CHUNK_BYTES-inside);
        chunk.set(data.subarray(offset,offset+take),inside);offset+=take;
      }
    },
  });
  return {
    target:new StreamTarget(stream,{chunked:true,chunkSize:CHUNK_BYTES}),
    async getBlob(mime){
      const parts:BlobPart[]=[];
      for(let i=0;i<Math.ceil(length/CHUNK_BYTES);i++){
        const chunk=chunks.get(i)??new Uint8Array(CHUNK_BYTES);
        parts.push(chunk.subarray(0,Math.min(CHUNK_BYTES,length-i*CHUNK_BYTES)));
      }
      const blob=new Blob(parts,{type:mime});chunks.clear();return blob;
    },
    async release(){chunks.clear();},
  };
}

/** Recover an omitted final-frame duration without dropping that frame. */
export function resolveVideoFrameDuration(timestamp:number,reported:number,nextTimestamp:number|undefined,end:number,previous:number):number {
  if(Number.isFinite(reported)&&reported>0)return reported;
  if(nextTimestamp!==undefined&&nextTimestamp>timestamp)return nextTimestamp-timestamp;
  if(end>timestamp)return end-timestamp;
  if(previous>0)return previous;
  throw new Error('This video has a frame without readable timing.');
}

/**
 * Offline export is driven by decoded samples, never a playback clock. It awaits
 * each frame renderer, then snapshots the owned canvas and closes it. Missing
 * WebM final-frame durations are recovered from the track/file duration.
 *
 * A composable Mediabunny conversion advances audio in lockstep with video,
 * copying compatible packets or transcoding. Unsupported tracks fail visibly.
 * https://mediabunny.dev/guide/converting-media-files#running-in-lockstep
 */
export async function exportFilteredVideo(file:Blob,options:VideoExportOptions):Promise<VideoExportResult> {
  const {signal}=options;
  abortIfNeeded(signal);
  if(typeof VideoEncoder==='undefined'||typeof VideoDecoder==='undefined'){
    throw new Error('This browser cannot export filtered video. Use a browser with WebCodecs support, such as current Chrome or Edge.');
  }
  const input=openInput(file);
  let conversion:Conversion|undefined,output:Output|undefined,storage:ExportStorage|undefined;
  let videoSource:VideoSampleSource|undefined;
  let cancellation:Promise<unknown>|undefined;
  let completed=false,framesProcessed=0;
  let heldSample:VideoSample|undefined;
  const source=document.createElement('canvas');
  const abort=()=>{
    cancellation=Promise.allSettled([conversion?.cancel(),output?.cancel()]);
    input.dispose();
  };
  signal?.addEventListener('abort',abort,{once:true});
  try {
    options.onStatus?.('Reading video…');options.onProgress?.(0);
    const primary=await input.getPrimaryVideoTrack();
    if(!primary)throw new Error('This file does not contain a video track.');
    const info=await readInfo(input,primary);
    if(!info.canDecode)throw new Error(`This browser cannot decode ${info.videoCodec} video. Try an H.264 MP4 or VP9 WebM file.`);
    abortIfNeeded(signal);
    const startTime=Math.max(0,await input.getFirstTimestamp());
    const videoEnd=Math.min((await primary.getDurationFromMetadata())??Infinity,info.duration+startTime);
    const [width,height]=videoOutputSize(info.width,info.height,options.maxDimension);
    source.width=width;source.height=height;
    const context=source.getContext('2d',{alpha:false});
    if(!context)throw new Error('This browser cannot create a video canvas.');
    const quality=new Quality('high');
    const candidates:{extension:'mp4'|'webm';codec:VideoCodec}[]=[];
    const mp4=await getFirstEncodableVideoCodec(['avc'],{width,height,quality});
    if(mp4)candidates.push({extension:'mp4',codec:mp4});
    const webm=await getFirstEncodableVideoCodec(['vp9','vp8'],{width,height,quality});
    if(webm)candidates.push({extension:'webm',codec:webm});
    if(!candidates.length)throw new Error('No compatible video encoder is available at this resolution. Try a lower export resolution or Chrome/Edge.');
    const errors:string[]=[];
    let selected:typeof candidates[number]|undefined;
    for(const candidate of candidates){
      abortIfNeeded(signal);
      storage=await createStorage();
      output=new Output({
        format:candidate.extension==='mp4'?new Mp4OutputFormat({fastStart:false}):new WebMOutputFormat(),
        target:storage.target,
      });
      videoSource=new VideoSampleSource({codec:candidate.codec,quality});
      output.addVideoTrack(videoSource);
      conversion=await Conversion.init({
        input,output,showWarnings:false,composable:true,trim:{start:startTime},
        video:{discard:true},audio:options.includeAudio===false?{discard:true}:{},
      });
      abortIfNeeded(signal);
      const lost=conversion.discardedTracks.filter(track=>track.reason!=='discarded_by_user');
      if(conversion.isValid&&!lost.length){selected=candidate;break;}
      errors.push(...lost.map(item=>`${item.track.type}: ${item.reason.replaceAll('_',' ')}`));
      await conversion.cancel();await output.cancel();await storage.release();
      conversion=undefined;output=undefined;storage=undefined;videoSource=undefined;
    }
    if(!selected||!conversion||!storage||!output||!videoSource)throw new Error(`This browser cannot preserve the video's tracks (${errors.join('; ')||'unsupported codec'}). Try another file or browser.`);
    options.onStatus?.('Processing every video frame…');
    await output.start();
    let previousDuration=0;
    const process=async(sample:VideoSample,nextTimestamp?:number)=>{
      abortIfNeeded(signal);
      const frameDuration=resolveVideoFrameDuration(sample.timestamp,sample.duration,nextTimestamp,videoEnd,previousDuration);
      previousDuration=frameDuration;
      const timestamp=sample.timestamp-startTime;
      // Negative preroll samples are decoder warmup, not visible source frames.
      if(timestamp+frameDuration<=0)return;
      context.fillStyle='black';context.fillRect(0,0,width,height);
      const scale=Math.min(width/sample.displayWidth,height/sample.displayHeight);
      const drawWidth=sample.displayWidth*scale,drawHeight=sample.displayHeight*scale;
      sample.draw(context,(width-drawWidth)/2,(height-drawHeight)/2,drawWidth,drawHeight);
      let rendered:HTMLCanvasElement|undefined,frame:VideoSample|undefined;
      try {
        rendered=await options.processFrame(source,width,height,signal);
        abortIfNeeded(signal);
        if(rendered.width!==width||rendered.height!==height)throw new Error('The frame renderer returned a different video resolution.');
        frame=new VideoSample(rendered,{timestamp:Math.max(0,timestamp),duration:frameDuration+Math.min(0,timestamp)});
        // VideoSample snapshots the canvas synchronously; release pixel storage
        // immediately, before waiting for the encoder or advancing audio.
        if(rendered!==source)rendered.width=rendered.height=1;
        await videoSource!.add(frame);
        framesProcessed++;
        await conversion!.execute({until:Math.max(0,timestamp+frameDuration)});
        options.onProgress?.(Math.min(.99,Math.max(0,(timestamp+frameDuration)/info.duration)*.99));
      }finally{
        frame?.close();
        if(rendered&&rendered!==source)rendered.width=rendered.height=1;
      }
    };
    // One-frame lookahead handles VFR samples that omit duration. Only two raw
    // frames plus the decoder's bounded prefetch can be retained here.
    for await(const sample of new VideoSampleSink(primary).samples()){
      if(heldSample){
        try{await process(heldSample,sample.timestamp);}catch(error){sample.close();throw error;}
        finally{heldSample.close();heldSample=undefined;}
      }
      heldSample=sample;
    }
    if(heldSample){try{await process(heldSample);}finally{heldSample.close();heldSample=undefined;}}
    abortIfNeeded(signal);
    if(!framesProcessed)throw new Error('No video frames could be decoded.');
    videoSource.close();
    await conversion.execute();
    options.onStatus?.('Finishing video…');
    await output.finalize();
    abortIfNeeded(signal);
    const blob=await storage.getBlob(selected.extension==='mp4'?'video/mp4':'video/webm');
    abortIfNeeded(signal);
    if(!blob.size)throw new Error('The exported video is empty.');
    options.onProgress?.(1);completed=true;
    return {blob,extension:selected.extension,width,height,duration:info.duration,framesProcessed,
      hasAudio:options.includeAudio!==false&&info.audioTracks>0,release:storage.release};
  }catch(error){
    abortIfNeeded(signal);
    if(error instanceof DOMException&&error.name==='QuotaExceededError')throw new Error('There is not enough local storage for this export. Choose a lower resolution or a shorter clip.',{cause:error});
    throw error;
  }finally{
    signal?.removeEventListener('abort',abort);
    heldSample?.close();
    if(!completed){
      await cancellation;
      if(conversion)await conversion.cancel().catch(()=>{});
      if(output)await output.cancel().catch(()=>{});
      await storage?.release();
    }
    source.width=source.height=1;
    input.dispose();
  }
}

/**
 * MediaRecorder commonly writes WebM with no duration or seek index. Remux its
 * existing packets into a finalized container; no decoder, effect pass, or
 * encoder is involved. The returned file follows the same release() ownership
 * as an offline export.
 */
export async function finalizeRecording(file:Blob,options:{signal?:AbortSignal;requireDisk?:boolean;durationSeconds?:number}={}):Promise<Pick<VideoExportResult,'blob'|'extension'|'release'>> {
  if(options.durationSeconds!==undefined)return finalizeRecordingWindow(file,options as {signal?:AbortSignal;requireDisk?:boolean;durationSeconds:number});
  const {signal}=options;
  abortIfNeeded(signal);
  const input=openInput(file);
  let output:Output|undefined,conversion:Conversion|undefined,storage:ExportStorage|undefined;
  let done=false,cancellation:Promise<unknown>|undefined;
  const abort=()=>{cancellation=conversion?.cancel().catch(()=>{});input.dispose();};
  signal?.addEventListener('abort',abort,{once:true});
  try {
    const format=await input.getFormat();
    const preferred:'mp4'|'webm'=format.mimeType.includes('mp4')?'mp4':'webm';
    const candidates:('mp4'|'webm')[]=[preferred,preferred==='mp4'?'webm':'mp4'];
    const failures:string[]=[];
    for(const extension of candidates){
      abortIfNeeded(signal);
      storage=await createStorage(options.requireDisk??false);
      output=new Output({format:extension==='webm'?new WebMOutputFormat():new Mp4OutputFormat({fastStart:false}),target:storage.target});
      conversion=await Conversion.init({input,output,copy:{mode:'forced'},showWarnings:false,tags:{}});
      abortIfNeeded(signal);
      if(!conversion.isValid||conversion.discardedTracks.length){
        failures.push(...conversion.discardedTracks.map(item=>`${item.track.type}: ${item.reason.replaceAll('_',' ')}`));
        await conversion.cancel();await storage.release();
        conversion=undefined;output=undefined;storage=undefined;
        continue;
      }
      await conversion.execute();
      abortIfNeeded(signal);
      const blob=await storage.getBlob(extension==='webm'?'video/webm':'video/mp4');
      abortIfNeeded(signal);
      if(!blob.size)throw new Error('The finalized recording is empty.');
      done=true;
      return {blob,extension,release:storage.release};
    }
    throw new Error(`This recording cannot be finalized without changing its encoded tracks (${failures.join('; ')||'unsupported container'}).`);
  }catch(error){abortIfNeeded(signal);throw error;}
  finally{
    signal?.removeEventListener('abort',abort);
    if(!done){
      await cancellation;
      if(conversion)await conversion.cancel().catch(()=>{});
      else if(output)await output.cancel().catch(()=>{});
      await storage?.release();
    }
    input.dispose();
  }
}

/** Keep the last captured picture visible until a shared recording stop clock. */
async function finalizeRecordingWindow(file:Blob,options:{signal?:AbortSignal;requireDisk?:boolean;durationSeconds:number}):Promise<Pick<VideoExportResult,'blob'|'extension'|'release'>> {
  const {signal,durationSeconds}=options;
  abortIfNeeded(signal);
  if(!Number.isFinite(durationSeconds)||durationSeconds<=0)throw new Error('The recording window has invalid timing.');
  const input=openInput(file);
  let storage:ExportStorage|undefined,output:Output|undefined,audio:Conversion|undefined;
  let done=false,cancellation:Promise<unknown>|undefined;
  const abort=()=>{cancellation=Promise.allSettled([audio?.cancel(),output?.cancel()]);input.dispose();};
  signal?.addEventListener('abort',abort,{once:true});
  try{
    const track=await input.getPrimaryVideoTrack();
    if(!track)throw new Error('The recording has no video frames.');
    const codec=await track.getCodec();
    if(!codec)throw new Error('The recording video codec could not be identified.');
    const extension=(await input.getFormat()).mimeType.includes('mp4')?'mp4':'webm';
    const origin=Math.max(0,await input.getFirstTimestamp());
    const packets=new EncodedPacketSink(track);
    const last=await packets.getPacket(Infinity,{metadataOnly:true});
    if(!last)throw new Error('The recording has no video frames.');
    storage=await createStorage(options.requireDisk??false);
    output=new Output({format:extension==='mp4'?new Mp4OutputFormat({fastStart:false}):new WebMOutputFormat(),target:storage.target});
    const video=new EncodedVideoPacketSource(codec);
    output.addVideoTrack(video,{rotation:await track.getRotation(),flip:await track.getFlip()});
    audio=await Conversion.init({input,output,composable:true,video:{discard:true},copy:{mode:'forced'},trim:{start:origin},showWarnings:false});
    const discarded=audio.discardedTracks.filter(item=>item.reason!=='discarded_by_user');
    if(discarded.length)throw new Error('This browser could not retain the recording audio without re-encoding.');
    const decoderConfig=await track.getDecoderConfig();
    abortIfNeeded(signal);await output.start();
    for await(const packet of packets.packets()){
      abortIfNeeded(signal);
      const timestamp=packet.timestamp-origin;
      const duration=packet.sequenceNumber===last.sequenceNumber&&durationSeconds>timestamp?durationSeconds-timestamp:packet.duration;
      await video.add(packet.clone({timestamp,duration}),{decoderConfig:decoderConfig??undefined});
      await audio.execute({until:Math.max(0,timestamp+duration)});
    }
    video.close();await audio.execute();await output.finalize();abortIfNeeded(signal);
    const blob=await storage.getBlob(extension==='mp4'?'video/mp4':'video/webm');
    abortIfNeeded(signal);done=true;
    return {blob,extension,release:storage.release};
  }catch(error){abortIfNeeded(signal);throw error;}
  finally{
    signal?.removeEventListener('abort',abort);
    if(!done){await cancellation;await audio?.cancel().catch(()=>{});await output?.cancel().catch(()=>{});await storage?.release();}
    input.dispose();
  }
}
