/** Disk-only temporary storage for live capture. No encoded-media RAM fallback. */
export interface RecordingDiskFile {
  readonly name:string;
  readonly writable:FileSystemWritableFileStream;
  getFile:()=>Promise<File>;
  release:()=>Promise<void>;
}

export function recordingStorageError(cause?:unknown):Error {
  if(cause instanceof DOMException&&cause.name==='QuotaExceededError'){
    return new Error('Recording stopped because browser disk storage is full. Free some storage before recording again.',{cause});
  }
  return new Error('Live recording needs browser temporary disk storage. Use a current browser on HTTPS and allow site storage.',{cause});
}

export async function createRecordingDiskFile(label='capture'):Promise<RecordingDiskFile> {
  if(typeof navigator==='undefined'||!navigator.storage?.getDirectory)throw recordingStorageError();
  let directory:FileSystemDirectoryHandle|undefined,name:string|undefined,writable:FileSystemWritableFileStream|undefined;
  try {
    directory=await navigator.storage.getDirectory();
    name=`effect-lab-recording-${label}-${crypto.randomUUID()}.tmp`;
    const handle=await directory.getFileHandle(name,{create:true});
    writable=await handle.createWritable();
    // Probe the actual writable API before starting capture, including in private
    // browsing contexts where obtaining the directory alone can still succeed.
    await writable.write(new Uint8Array(0));
    let releasing:Promise<void>|undefined;
    return {
      name,writable,
      getFile:()=>handle.getFile(),
      release(){
        return releasing??=(async()=>{
          if(writable&&!writable.locked)await writable.abort().catch(()=>{});
          try{await directory!.removeEntry(name!);}
          catch(error){if(!(error instanceof DOMException&&error.name==='NotFoundError'))throw error;}
        })();
      },
    };
  }catch(error){
    if(writable&&!writable.locked)await writable.abort().catch(()=>{});
    if(directory&&name)await directory.removeEntry(name).catch(()=>{});
    throw recordingStorageError(error);
  }
}

export interface BoundedRecordingWriter {
  append:(blob:Blob)=>void;
  close:()=>Promise<void>;
  abort:()=>Promise<void>;
  readonly pendingBytes:number;
  readonly peakPendingBytes:number;
  readonly writtenBytes:number;
}

/**
 * MediaRecorder cannot be backpressured without pausing capture. Bound pending
 * encoded bytes instead: if disk falls behind, fail the recording rather than
 * silently skipping camera frames or retaining the whole clip in memory.
 */
export function createBoundedRecordingWriter(
  writable:Pick<FileSystemWritableFileStream,'write'|'close'|'abort'>,
  onError:(error:Error)=>void,
  limitBytes=8*1024*1024,
):BoundedRecordingWriter {
  let tail:Promise<void>=Promise.resolve(),closing:Promise<void>|undefined,aborting:Promise<void>|undefined;
  let pending=0,peak=0,written=0,accepting=true,failure:Error|undefined;
  function fail(error:unknown){
    if(failure)return;
    failure=error instanceof Error?error:new Error(String(error));accepting=false;
    try{onError(failure);}catch{/* Error reporting must not strand queued Blob references. */}
  }
  return {
    get pendingBytes(){return pending;},get peakPendingBytes(){return peak;},get writtenBytes(){return written;},
    append(blob){
      if(!accepting||!blob.size)return;
      if(blob.size>limitBytes-pending){
        fail(new Error('Recording stopped because disk writes could not keep up. Try a lower camera resolution or free disk space.'));
        return;
      }
      pending+=blob.size;peak=Math.max(peak,pending);
      // The queued reference covers only pending chunks; each Blob becomes
      // unreachable as soon as its disk write settles.
      tail=tail.then(async()=>{
        try{if(!failure){await writable.write(blob);written+=blob.size;}}
        catch(error){fail(error);}
        finally{pending-=blob.size;}
      });
    },
    close(){
      accepting=false;
      return closing??=(async()=>{await tail;if(failure)throw failure;await writable.close();})();
    },
    abort(){
      accepting=false;
      failure??=new DOMException('Recording cancelled.','AbortError');
      return aborting??=(async()=>{await tail;if(closing)await closing.catch(()=>{});await writable.abort().catch(()=>{});})();
    },
  };
}
