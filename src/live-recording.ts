import {finalizeRecording} from './video-file';
import {createBoundedRecordingWriter,createRecordingDiskFile,recordingStorageError,type BoundedRecordingWriter,type RecordingDiskFile} from './recording-storage';

export type PairedRecordingState='recording'|'stopping'|'stopped'|'aborted'|'error';
export interface RecordedMedia {
  blob:Blob;
  extension:'mp4'|'webm';
  release:()=>Promise<void>;
}
export interface PairedRecordingMetadata {
  startedAt:string;
  stoppedAt:string;
  elapsedSeconds:number;
  microphone:boolean;
  original:{width:number;height:number;startOffsetMs:number};
  filtered:{width:number;height:number;startOffsetMs:number};
  timingNote:string;
  storage:{backend:'opfs';maxPendingBytesPerStream:number;originalPeakPendingBytes:number;filteredPeakPendingBytes:number;originalBytesWritten:number;filteredBytesWritten:number};
}
export interface PairedRecordingResult {
  original:RecordedMedia;
  filtered:RecordedMedia;
  metadata:PairedRecordingMetadata;
  release:()=>Promise<void>;
}
export interface PairedRecordingOptions {
  originalStream:MediaStream;
  filteredCanvas:HTMLCanvasElement;
  microphoneStream?:MediaStream;
  signal?:AbortSignal;
  onError?:(error:Error)=>void;
}
export interface PairedRecordingSession {
  readonly state:PairedRecordingState;
  stop:()=>Promise<PairedRecordingResult>;
  abort:()=>Promise<void>;
}

export const RECORDING_PENDING_BYTES=8*1024*1024;
const abortError=()=>new DOMException('Recording cancelled.','AbortError');
function checkAbort(signal:AbortSignal){if(signal.aborted)throw abortError();}
interface Channel {
  recorder:MediaRecorder;
  disk:RecordingDiskFile;
  writer:BoundedRecordingWriter;
  stopped:Promise<void>;
  started:boolean;
  resolveStopped:()=>void;
}

/**
 * Capture original and edited views independently. Native MediaRecorder consumes
 * the original camera track directly, so effect inference cannot lower its input
 * resolution or deliberately throttle its cadence. Filtered recording follows
 * the stable canvas. Both use short disk-written chunks, never a clip Blob array.
 */
export async function startPairedRecording(options:PairedRecordingOptions):Promise<PairedRecordingSession> {
  if(options.signal?.aborted)throw abortError();
  if(typeof MediaRecorder==='undefined')throw new Error('This browser cannot record live video.');
  const camera=options.originalStream.getVideoTracks()[0];
  if(!camera||camera.readyState!=='live')throw new Error('Start the camera before recording.');
  if(!options.filteredCanvas.width||!options.filteredCanvas.height||!options.filteredCanvas.captureStream)throw new Error('A filtered preview is required before recording.');
  const mic=options.microphoneStream?.getAudioTracks()[0];
  if(options.microphoneStream&&(!mic||mic.readyState!=='live'))throw new Error('The selected microphone is not available.');
  const mimeCandidates=mic?['video/webm;codecs=vp8,opus','video/mp4','video/webm']:['video/webm;codecs=vp8','video/mp4','video/webm'];
  const mime=mimeCandidates.find(value=>MediaRecorder.isTypeSupported(value));
  if(!mime)throw new Error('This browser has no compatible live video recorder.');
  const control=new AbortController();
  const disks:RecordingDiskFile[]=[];
  const channels:Channel[]=[];
  const ownedTracks:MediaStreamTrack[]=[];
  const finished:RecordedMedia[]=[];
  let state:PairedRecordingState='recording',failure:Error|undefined;
  let stopPromise:Promise<PairedRecordingResult>|undefined,abortPromise:Promise<void>|undefined;
  let result:PairedRecordingResult|undefined,startupComplete=false;
  let stopClock=0,stoppedAt='';
  let canvasTrack:CanvasCaptureMediaStreamTrack|undefined;
  let seedFrame=0;
  const ended=()=>{if(state==='recording')void stop().catch(()=>{});};
  const stopOwnedTracks=()=>{
    cancelAnimationFrame(seedFrame);
    for(const track of ownedTracks){track.removeEventListener('ended',ended);track.stop();}
  };
  const detach=()=>{options.signal?.removeEventListener('abort',externalAbort);globalThis.removeEventListener('pagehide',externalAbort);};
  function stopRecorders(){
    for(const channel of channels)if(channel.recorder.state!=='inactive'){
      try{channel.recorder.stop();}catch{/* A track may have ended between the state read and stop. */}
    }
  }
  async function cleanup(){
    stopRecorders();stopOwnedTracks();
    for(const channel of channels)if(!channel.started)channel.resolveStopped();
    await Promise.allSettled(channels.map(channel=>channel.stopped));
    await Promise.allSettled(channels.map(channel=>channel.writer.abort()));
    await Promise.allSettled([...finished.map(file=>file.release()),...disks.map(disk=>disk.release())]);
  }
  function abort():Promise<void>{
    if(abortPromise)return abortPromise;
    if(state!=='error')state='aborted';
    control.abort();detach();
    abortPromise=(async()=>{await cleanup();if(result)await result.release();})();
    return abortPromise;
  }
  function externalAbort(){void abort();}
  function fail(error:unknown){
    if(failure||state==='aborted'||state==='stopped')return;
    failure=error instanceof DOMException&&error.name==='QuotaExceededError'?recordingStorageError(error):error instanceof Error?error:new Error(String(error));
    state='error';
    void abort();
    if(startupComplete){try{options.onError?.(failure);}catch{/* UI callbacks cannot prevent resource cleanup. */}}
  }
  options.signal?.addEventListener('abort',externalAbort,{once:true});
  globalThis.addEventListener('pagehide',externalAbort,{once:true});
  let startedAt='',startClock=0,originalOffset=0,filteredOffset=0;
  const cameraSettings=camera.getSettings();
  const originalDimensions={width:cameraSettings.width??0,height:cameraSettings.height??0};
  const filteredDimensions={width:options.filteredCanvas.width,height:options.filteredCanvas.height};

  function captureBoundary(){
    const canvas=options.filteredCanvas,context=canvas.getContext('2d');
    if(context){
      context.save();context.resetTransform();context.globalAlpha=1;context.globalCompositeOperation='copy';
      context.filter='none';context.shadowBlur=0;context.shadowColor='transparent';
      context.drawImage(canvas,0,0);context.restore();
    }
    canvasTrack?.requestFrame?.();
  }
  async function commitBoundaryFrame(){
    captureBoundary();
    if(document.visibilityState!=='visible')return;
    await new Promise<void>(resolve=>{
      let frame=0,timer=0,settled=false;
      const finish=()=>{if(settled)return;settled=true;cancelAnimationFrame(frame);clearTimeout(timer);control.signal.removeEventListener('abort',finish);resolve();};
      frame=requestAnimationFrame(()=>setTimeout(finish,0));
      timer=window.setTimeout(finish,80);
      control.signal.addEventListener('abort',finish,{once:true});
      if(control.signal.aborted)finish();
    });
  }

  async function stop():Promise<PairedRecordingResult>{
    if(stopPromise)return stopPromise;
    if(state==='aborted'||state==='error')throw failure??abortError();
    state='stopping';
    stopPromise=(async()=>{
      try {
        // Capture the held filtered picture at the end too. Waiting only until
        // this canvas paint commits prevents low preview FPS from truncating it.
        await commitBoundaryFrame();checkAbort(control.signal);
        stopClock=performance.now();stoppedAt=new Date().toISOString();
        // Stop both in the same task; await neither before stopping the other.
        stopRecorders();
        await Promise.all(channels.map(channel=>channel.stopped));
        stopOwnedTracks();
        checkAbort(control.signal);
        await Promise.all(channels.map(channel=>channel.writer.close()));
        checkAbort(control.signal);
        for(const channel of channels){
          const file=await channel.disk.getFile();
          checkAbort(control.signal);
          if(!file.size)throw new Error('The recording ended before any video could be captured.');
          // Strict disk mode prevents the upload-export RAM fallback from ever
          // being used for live recordings, including the seek-metadata pass.
          const finalized=await finalizeRecording(file,{signal:control.signal,requireDisk:true,durationSeconds:(stopClock-startClock)/1000});
          finished.push(finalized);
          checkAbort(control.signal);
          await channel.disk.release();
        }
        const metadata:PairedRecordingMetadata={
          startedAt,stoppedAt,elapsedSeconds:(stopClock-startClock)/1000,microphone:!!mic,
          original:{...originalDimensions,startOffsetMs:originalOffset},filtered:{...filteredDimensions,startOffsetMs:filteredOffset},
          timingNote:'Both recorders start and stop in the same JavaScript task. Each file retains its native capture timestamps with its own zero point; start-call offsets are recorded here. The final encoded video frame is held until the shared stop clock without re-encoding; audio packets retain native timing. No frame-accurate content alignment is claimed. Filtered frames follow processing cadence and include effect latency; original frames come directly from the camera.',
          storage:{backend:'opfs',maxPendingBytesPerStream:RECORDING_PENDING_BYTES,
            originalPeakPendingBytes:channels[0].writer.peakPendingBytes,filteredPeakPendingBytes:channels[1].writer.peakPendingBytes,
            originalBytesWritten:channels[0].writer.writtenBytes,filteredBytesWritten:channels[1].writer.writtenBytes},
        };
        result={original:finished[0],filtered:finished[1],metadata,async release(){await Promise.all(finished.map(file=>file.release()));}};
        state='stopped';detach();
        return result;
      }catch(error){
        if(!control.signal.aborted)fail(error);
        await cleanup();
        throw failure??abortError();
      }
    })();
    return stopPromise;
  }

  try {
    // Fail disk access before attaching either recorder. No memory fallback.
    for(const label of ['original','filtered']){
      disks.push(await createRecordingDiskFile(label));checkAbort(control.signal);
    }
    const originalTrack=camera.clone();ownedTracks.push(originalTrack);
    const filteredStream=options.filteredCanvas.captureStream();
    const filteredTrack=filteredStream.getVideoTracks()[0];
    if(!filteredTrack)throw new Error('This browser cannot record the filtered canvas.');
    ownedTracks.push(...filteredStream.getTracks());
    canvasTrack=filteredTrack as CanvasCaptureMediaStreamTrack;
    const originals:MediaStreamTrack[]=[originalTrack],filtered:MediaStreamTrack[]=[filteredTrack];
    if(mic){
      const originalMic=mic.clone(),filteredMic=mic.clone();ownedTracks.push(originalMic,filteredMic);
      originals.push(originalMic);filtered.push(filteredMic);
    }
    const streams=[new MediaStream(originals),new MediaStream(filtered)];
    for(let i=0;i<streams.length;i++){
      const dimensions=i===0?originalDimensions:filteredDimensions;
      const bitRate=Math.round(Math.min(24e6,Math.max(2e6,dimensions.width*dimensions.height*(cameraSettings.frameRate??30)*.12)));
      const recorder=new MediaRecorder(streams[i],{mimeType:mime,videoBitsPerSecond:bitRate,audioBitsPerSecond:128000});
      const writer=createBoundedRecordingWriter(disks[i].writable,fail,RECORDING_PENDING_BYTES);
      let finish!:()=>void;
      const stopped=new Promise<void>(resolve=>{finish=resolve;});
      recorder.addEventListener('dataavailable',event=>writer.append(event.data));
      recorder.addEventListener('error',event=>fail((event as Event&{error?:DOMException}).error??new Error('The live video recorder failed.')));
      recorder.addEventListener('stop',()=>{finish();if(state==='recording')void stop().catch(()=>{});},{once:true});
      channels.push({recorder,disk:disks[i],writer,stopped,started:false,resolveStopped:finish});
    }
    checkAbort(control.signal);
    for(const track of ownedTracks)track.addEventListener('ended',ended,{once:true});
    startedAt=new Date().toISOString();startClock=performance.now();
    originalOffset=performance.now()-startClock;channels[0].recorder.start(250);channels[0].started=true;
    filteredOffset=performance.now()-startClock;channels[1].recorder.start(250);channels[1].started=true;
    // Seed the filtered recording even if inference does not paint another frame
    // immediately. Subsequent captures follow canvas updates automatically.
    captureBoundary();
    // Recorder initialization is asynchronous. Repeat the unchanged opening
    // picture for the next few paints so a slow first inference cannot delay
    // the filtered file's zero point until its next real preview update.
    let openingPaints=3;
    const seed=()=>{if(state!=='recording')return;captureBoundary();if(--openingPaints>0)seedFrame=requestAnimationFrame(seed);};
    seedFrame=requestAnimationFrame(seed);
    startupComplete=true;
    return {get state(){return state;},stop,abort};
  }catch(error){
    // A recorder that never started does not emit a stop event. Avoid waiting on
    // such channels during failed startup; their writers are still released.
    for(const channel of channels)if(!channel.started)channel.resolveStopped();
    if((state as PairedRecordingState)!=='aborted')state='error';
    control.abort();detach();await cleanup();
    throw error;
  }
}
