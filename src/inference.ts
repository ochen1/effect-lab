import * as ort from "onnxruntime-web/webgpu";

export const SKIN_SIZE = 320;
const PIXELS = SKIN_SIZE * SKIN_SIZE;
export type SkinBackend = "webgpu" | "wasm";
export type SkinBackendPreference = "auto" | "wasm";
export interface SkinRuntimeValidation {
  phase: "checking" | "passed" | "failed";
  reference: "wasm";
  diagnostic: "rgb-pattern-v1";
  values: number;
  accepted?: boolean;
  strictPassed?: boolean;
  mae?: number;
  maxAbsoluteError?: number;
  meanByteError?: number;
  maxByteError?: number;
  milliseconds?: number;
  reason?: string;
}
export const SKIN_VALIDATION_LIMITS = Object.freeze({
  strictMae: 1e-5, strictMaxAbsoluteError: 2e-4,
  meanByteError: .25, maxByteError: 1,
});
export interface SkinRuntimeStatus {
	state: "idle" | "loading" | "ready" | "error" | "disposed";
	backend: SkinBackend | null;
	preference?: "auto" | SkinBackend;
	validation?: SkinRuntimeValidation;
	fallbackReason?: string;
	error?: string;
}
export interface SkinRuntimeOptions {
	modelUrl?: string;
	wasmBaseUrl?: string;
	backend?: "auto" | SkinBackend;
}

function message(error: unknown): string {
	return error instanceof Error ? error.message : String(error);
}

/** Convert native RGB NHWC to ONNX NCHW without changing normalization. */
export function skinInputToPlanar(rgb: Float32Array): Float32Array {
	if (!(rgb instanceof Float32Array) || rgb.length !== PIXELS * 3) {
		throw new Error(
			`Skin input must contain ${PIXELS * 3} float32 RGB values (320 × 320).`,
		);
	}
	const planar = new Float32Array(rgb.length);
	for (let pixel = 0; pixel < PIXELS; pixel++) {
		for (let channel = 0; channel < 3; channel++) {
			const value = rgb[pixel * 3 + channel];
			if (!Number.isFinite(value) || value < -1 || value > 1) {
				throw new Error(
					"Skin input must be finite RGB values normalized to [-1, 1].",
				);
			}
			planar[channel * PIXELS + pixel] = value;
		}
	}
	return planar;
}

/** Return the original model's normalized RGBA NHWC; alpha is also [-1, 1]. */
export function skinOutputToInterleaved(planar: Float32Array): Float32Array {
	if (!(planar instanceof Float32Array) || planar.length !== PIXELS * 4) {
		throw new Error("Skin model returned an unexpected output tensor.");
	}
	const rgba = new Float32Array(planar.length);
	for (let pixel = 0; pixel < PIXELS; pixel++) {
		for (let channel = 0; channel < 4; channel++) {
			const value = planar[channel * PIXELS + pixel];
			if (!Number.isFinite(value))
				throw new Error("Skin model returned a non-finite value.");
			rgba[pixel * 4 + channel] = value;
		}
	}
	return rgba;
}

/** Nonuniform planar RGB values exercise channels, layout, and spatial operations. */
export function createSkinDiagnosticInput(): Float32Array {
  const input = new Float32Array(PIXELS * 3);
  for (let y = 0; y < SKIN_SIZE; y++) for (let x = 0; x < SKIN_SIZE; x++) {
    const i = y * SKIN_SIZE + x;
    const checker = ((x >> 4) + (y >> 4)) % 2 ? 1 : -1;
    input[i] = x / (SKIN_SIZE - 1) * 1.8 - .9 + checker * .1;
    input[PIXELS + i] = y / (SKIN_SIZE - 1) * 1.6 - .8 + ((x + 2 * y) % 31 / 30 - .5) * .4;
    input[PIXELS * 2 + i] = Math.sin((x + y) * .041) * .5 + Math.cos((x - y) * .023) * .4;
  }
  return input;
}

export function compareSkinDiagnostics(actual: Float32Array, reference: Float32Array): SkinRuntimeValidation {
  const base = { reference: 'wasm', diagnostic: 'rgb-pattern-v1', values: PIXELS * 4 } as const;
  if (actual.length !== base.values || reference.length !== base.values) {
    return { ...base, phase: 'failed', accepted: false, reason: 'Unexpected diagnostic output length.' };
  }
  let total = 0, maximum = 0;
  for (let i = 0; i < actual.length; i++) {
    const difference = Math.abs(actual[i] - reference[i]);
    if (!Number.isFinite(difference)) return { ...base, phase: 'failed', accepted: false, reason: 'Non-finite diagnostic output.' };
    total += difference; maximum = Math.max(maximum, difference);
  }
  const mae = total / actual.length;
  // Every output channel, including alpha, maps [-1,1] to byte space using 127.5.
  // Keep strict floating parity separate from the small visual-error allowance.
  const meanByteError = mae * 127.5, maxByteError = maximum * 127.5;
  const strictPassed = mae <= SKIN_VALIDATION_LIMITS.strictMae && maximum <= SKIN_VALIDATION_LIMITS.strictMaxAbsoluteError;
  const accepted = meanByteError <= SKIN_VALIDATION_LIMITS.meanByteError && maxByteError <= SKIN_VALIDATION_LIMITS.maxByteError;
  return { ...base, phase: accepted ? 'passed' : 'failed', accepted, strictPassed, mae, maxAbsoluteError: maximum,
    meanByteError, maxByteError,
    ...(accepted ? {} : { reason: `WebGPU output did not match WASM (mean ${meanByteError.toFixed(3)}, maximum ${maxByteError.toFixed(3)} byte levels).` }),
  };
}

/** One session, serialized runs, no DOM dependency: usable inside a module worker. */
export function createSkinRuntime(options: SkinRuntimeOptions = {}) {
  let session: ort.InferenceSession | undefined;
  let model: Uint8Array | undefined;
  let status: SkinRuntimeStatus = { state: 'idle', backend: null };
  let queue: Promise<unknown> = Promise.resolve();
  let disposed = false;
  let disposal: Promise<void> | undefined;
  const preferred = options.backend ?? 'auto';
  const base = new URL(import.meta.env?.BASE_URL ?? '/', globalThis.location?.href ?? 'http://localhost/');
  const modelUrl = options.modelUrl ?? new URL('models/skin.onnx', base).href;
  const wasmBaseUrl = options.wasmBaseUrl ?? new URL('vendor/onnx/', base).href;
  const snapshot = (): SkinRuntimeStatus => ({ ...status, preference: preferred,
    ...(status.validation ? { validation: { ...status.validation } } : {}) });

  function enqueue<T>(work: () => Promise<T>): Promise<T> {
    if (disposed) return Promise.reject(new Error('Skin runtime has been disposed.'));
    const next = queue.then(() => {
      if (disposed) throw new Error('Skin runtime has been disposed.');
      return work();
    });
    queue = next.catch(() => {});
    return next;
  }
  async function releaseSession() {
    const previous = session; session = undefined;
    if (previous) await previous.release();
  }
  async function openSession(backend: SkinBackend): Promise<ort.InferenceSession> {
    if (!model) {
      const response = await fetch(modelUrl);
      if (!response.ok) throw new Error(`Could not load the skin model (HTTP ${response.status}).`);
      const bytes = new Uint8Array(await response.arrayBuffer());
      if (bytes.byteLength < 1024) throw new Error('The downloaded skin model is empty or incomplete.');
      model = bytes;
    }
    ort.env.wasm.numThreads = 1;
    ort.env.wasm.proxy = false;
    ort.env.wasm.wasmPaths = wasmBaseUrl;
    const network = await ort.InferenceSession.create(model, {
      executionProviders: [backend], graphOptimizationLevel: 'all', preferredOutputLocation: 'cpu',
    });
    if (network.inputNames.length !== 1 || network.inputNames[0] !== 'data' ||
        network.outputNames.length !== 1 || network.outputNames[0] !== 'Tanh_134') {
      await network.release();
      throw new Error('The skin model has an incompatible input/output contract.');
    }
    return network;
  }
  async function inferOn(network: ort.InferenceSession, planar: Float32Array): Promise<Float32Array> {
    const input = new ort.Tensor('float32', planar, [1, 3, SKIN_SIZE, SKIN_SIZE]);
    let outputs: ort.InferenceSession.OnnxValueMapType | undefined;
    try {
      outputs = await network.run({ data: input });
      const tensor = outputs.Tanh_134;
      if (!tensor || tensor.type !== 'float32' || tensor.dims.join(',') !== '1,4,320,320') {
        throw new Error('Skin model returned an incompatible output shape.');
      }
      return skinOutputToInterleaved(await tensor.getData() as Float32Array);
    } finally {
      input.dispose();
      if (outputs) for (const value of Object.values(outputs)) value.dispose();
    }
  }
  async function infer(planar: Float32Array) {
    if (!session) throw new Error('Skin model session is unavailable.');
    return inferOn(session, planar);
  }
  async function initialize() {
    if (session) return;
    status = { state: 'loading', backend: null };
    const useGPU = preferred === 'webgpu' || (preferred === 'auto' && typeof navigator !== 'undefined' && 'gpu' in navigator);
    let cpu: ort.InferenceSession | undefined, gpu: ort.InferenceSession | undefined;
    try {
      try {
        const diagnostic = createSkinDiagnosticInput();
        // Keep a warmed CPU session available for fallback. A failed CPU reference
        // cannot qualify the GPU, so errors here remain visible and retryable.
        cpu = await openSession('wasm');
        const expected = await inferOn(cpu, diagnostic.slice());
        if (!useGPU) {
          session = cpu; cpu = undefined;
          status = { state: 'ready', backend: 'wasm' };
          return;
        }
        const started = performance.now();
        status.validation = { phase: 'checking', reference: 'wasm', diagnostic: 'rgb-pattern-v1', values: PIXELS * 4 };
        try {
          gpu = await openSession('webgpu');
          const actual = await inferOn(gpu, diagnostic.slice());
          status.validation = { ...compareSkinDiagnostics(actual, expected), milliseconds: performance.now() - started };
        } catch (error) {
          status.validation = { phase: 'failed', reference: 'wasm', diagnostic: 'rgb-pattern-v1', values: PIXELS * 4,
            accepted: false, reason: message(error), milliseconds: performance.now() - started };
        }
        if (status.validation.accepted) {
          session = gpu; gpu = undefined;
          status = { ...status, state: 'ready', backend: 'webgpu' };
        } else if (preferred === 'auto') {
          session = cpu; cpu = undefined;
          status = { ...status, state: 'ready', backend: 'wasm', fallbackReason: status.validation.reason ?? 'WebGPU validation failed.' };
        } else {
          throw new Error(status.validation.reason ?? 'WebGPU validation failed.');
        }
      } finally {
        // Both release attempts run even if one backend's cleanup fails.
        await Promise.all([cpu?.release(), gpu?.release()]);
      }
    } catch (error) {
      await releaseSession();
      status = { ...status, state: 'error', backend: null, error: message(error) };
      throw new Error(`Skin model could not start: ${message(error)}`, { cause: error });
    }
  }
  return {
    getStatus: snapshot,
    warm: () => enqueue(async () => { await initialize(); return snapshot(); }),
    run: (rgb: Float32Array) => {
      let planar: Float32Array;
      try { planar = skinInputToPlanar(rgb); } catch (error) { return Promise.reject(error); }
      return enqueue(async () => {
        await initialize();
        try { return await infer(planar); }
        catch (error) {
          if (status.backend === 'webgpu' && preferred === 'auto') {
            await releaseSession();
            status = { ...status, state: 'loading', backend: null, fallbackReason: message(error) };
            try {
              session = await openSession('wasm');
              const result = await infer(planar);
              status = { ...status, state: 'ready', backend: 'wasm' };
              return result;
            } catch (fallbackError) {
              await releaseSession();
              status = { ...status, state: 'error', backend: null, error: message(fallbackError) };
              throw fallbackError;
            }
          }
          await releaseSession();
          status = { ...status, state: 'error', backend: null, error: message(error) };
          throw error;
        }
      });
    },
    dispose: () => {
      disposed = true;
      return disposal ??= (async () => {
        await queue; await releaseSession(); model = undefined;
        status = { state: 'disposed', backend: null };
      })();
    },
  };
}

const BACKEND_PREFERENCE_KEY = 'effect-lab.skin-backend.v1';
let sessionPreference: SkinBackendPreference | undefined;
export function getSkinBackendPreference(): SkinBackendPreference {
  if (sessionPreference) return sessionPreference;
  try { return globalThis.localStorage?.getItem(BACKEND_PREFERENCE_KEY) === 'wasm' ? 'wasm' : 'auto'; }
  catch { return 'auto'; }
}
let shared: ReturnType<typeof createSkinRuntime> | undefined;
const runtime = () => shared ??= createSkinRuntime({ backend: getSkinBackendPreference() });
export const runSkin = (rgb: Float32Array): Promise<Float32Array> => runtime().run(rgb);
export const warmSkin = (): Promise<SkinRuntimeStatus> => runtime().warm();
export const getSkinStatus = (): SkinRuntimeStatus => shared?.getStatus() ?? { state: 'idle', backend: null, preference: getSkinBackendPreference() };
export async function disposeSkin(): Promise<void> {
  const previous = shared; shared = undefined; await previous?.dispose();
}
/** Caller serializes this with pipeline work before invalidating cached patches. */
export async function setSkinBackendPreference(preference: SkinBackendPreference): Promise<void> {
  if (preference !== 'auto' && preference !== 'wasm') throw new Error('Unknown skin backend preference.');
  sessionPreference = preference;
  try { globalThis.localStorage?.setItem(BACKEND_PREFERENCE_KEY, preference); } catch { /* Session preference still works without storage. */ }
  await disposeSkin();
}
