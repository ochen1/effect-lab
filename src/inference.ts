import * as ort from "onnxruntime-web/webgpu";

export const SKIN_SIZE = 320;
const PIXELS = SKIN_SIZE * SKIN_SIZE;
export type SkinBackend = "webgpu" | "wasm";
export interface SkinRuntimeStatus {
	state: "idle" | "loading" | "ready" | "error" | "disposed";
	backend: SkinBackend | null;
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

/** One session, serialized runs, no DOM dependency: usable inside a module worker. */
export function createSkinRuntime(options: SkinRuntimeOptions = {}) {
	let session: ort.InferenceSession | undefined;
	let model: Uint8Array | undefined;
	let status: SkinRuntimeStatus = { state: "idle", backend: null };
	let queue: Promise<unknown> = Promise.resolve();
	let disposed = false;
	const preferred = options.backend ?? "auto";
	// Resolve against the document/worker URL so GitHub Pages subpaths work too.
	const base = new URL(
		import.meta.env.BASE_URL,
		globalThis.location?.href ?? "http://localhost/",
	);
	const modelUrl = options.modelUrl ?? new URL("models/skin.onnx", base).href;
	const wasmBaseUrl = options.wasmBaseUrl ?? new URL("vendor/onnx/", base).href;

	function enqueue<T>(work: () => Promise<T>): Promise<T> {
		if (disposed)
			return Promise.reject(new Error("Skin runtime has been disposed."));
		const next = queue.then(work);
		queue = next.catch(() => {});
		return next;
	}

	async function releaseSession() {
		const previous = session;
		session = undefined;
		if (previous) await previous.release();
	}

	async function createSession(backend: SkinBackend) {
		if (!model) {
			const response = await fetch(modelUrl);
			if (!response.ok)
				throw new Error(
					`Could not load the skin model (HTTP ${response.status}).`,
				);
			model = new Uint8Array(await response.arrayBuffer());
			if (model.byteLength < 1024)
				throw new Error("The downloaded skin model is empty or incomplete.");
		}
		// Pages does not supply cross-origin isolation headers. Single-thread WASM
		// also works in workers and avoids SharedArrayBuffer requirements.
		ort.env.wasm.numThreads = 1;
		ort.env.wasm.proxy = false;
		ort.env.wasm.wasmPaths = wasmBaseUrl;
		session = await ort.InferenceSession.create(model, {
			executionProviders: [backend],
			graphOptimizationLevel: "all",
			preferredOutputLocation: "cpu",
		});
		if (
			session.inputNames.length !== 1 ||
			session.inputNames[0] !== "data" ||
			session.outputNames.length !== 1 ||
			session.outputNames[0] !== "Tanh_134"
		) {
			await releaseSession();
			throw new Error(
				"The skin model has an incompatible input/output contract.",
			);
		}
		status = { ...status, backend };
	}

	async function infer(planar: Float32Array): Promise<Float32Array> {
		if (!session) throw new Error("Skin model session is unavailable.");
		const input = new ort.Tensor("float32", planar, [
			1,
			3,
			SKIN_SIZE,
			SKIN_SIZE,
		]);
		let output: ort.InferenceSession.OnnxValueMapType | undefined;
		try {
			output = await session.run({ data: input });
			const tensor = output.Tanh_134;
			if (
				!tensor ||
				tensor.type !== "float32" ||
				tensor.dims.join(",") !== "1,4,320,320"
			) {
				throw new Error("Skin model returned an incompatible output shape.");
			}
			const data = await tensor.getData();
			return skinOutputToInterleaved(data as Float32Array);
		} finally {
			input.dispose();
			if (output) for (const value of Object.values(output)) value.dispose();
		}
	}

	async function initialize() {
		if (session) return;
		status = { state: "loading", backend: null };
		const hasGPU = typeof navigator !== "undefined" && "gpu" in navigator;
		const first =
			preferred === "auto" ? (hasGPU ? "webgpu" : "wasm") : preferred;
		try {
			await createSession(first);
			// Compile kernels and check actual execution before declaring readiness.
			await infer(new Float32Array(PIXELS * 3));
			status = { ...status, state: "ready" };
		} catch (error) {
			await releaseSession();
			if (first === "webgpu" && preferred === "auto") {
				status = {
					state: "loading",
					backend: null,
					fallbackReason: message(error),
				};
				try {
					await createSession("wasm");
					await infer(new Float32Array(PIXELS * 3));
					status = { ...status, state: "ready" };
					return;
				} catch (fallbackError) {
					await releaseSession();
					status = { ...status, state: "error", error: message(fallbackError) };
					throw new Error(
						`Skin model could not start: ${message(fallbackError)}`,
						{ cause: fallbackError },
					);
				}
			}
			status = { ...status, state: "error", error: message(error) };
			throw new Error(`Skin model could not start: ${message(error)}`, {
				cause: error,
			});
		}
	}

	return {
		getStatus: (): SkinRuntimeStatus => ({ ...status }),
		warm: () =>
			enqueue(async () => {
				await initialize();
				return { ...status };
			}),
		run: (rgb: Float32Array) => {
			// Validate and copy now: a queued caller may reuse its input immediately.
			let planar: Float32Array;
			try {
				planar = skinInputToPlanar(rgb);
			} catch (error) {
				return Promise.reject(error);
			}
			return enqueue(async () => {
				await initialize();
				try {
					return await infer(planar);
				} catch (error) {
					if (status.backend === "webgpu" && preferred === "auto") {
						await releaseSession();
						status = {
							state: "loading",
							backend: null,
							fallbackReason: message(error),
						};
						try {
							await createSession("wasm");
							const result = await infer(planar);
							status = { ...status, state: "ready" };
							return result;
						} catch (fallbackError) {
							await releaseSession();
							status = {
								...status,
								state: "error",
								error: message(fallbackError),
							};
							throw fallbackError;
						}
					}
					await releaseSession();
					status = { ...status, state: "error", error: message(error) };
					throw error;
				}
			});
		},
		dispose: async () => {
			disposed = true;
			await queue;
			await releaseSession();
			model = undefined;
			status = { state: "disposed", backend: null };
		},
	};
}

let shared: ReturnType<typeof createSkinRuntime> | undefined;
const runtime = () => (shared ??= createSkinRuntime());
export const runSkin = (rgb: Float32Array): Promise<Float32Array> =>
	runtime().run(rgb);
export const warmSkin = (): Promise<SkinRuntimeStatus> => runtime().warm();
export const getSkinStatus = (): SkinRuntimeStatus =>
	shared?.getStatus() ?? { state: "idle", backend: null };
export async function disposeSkin(): Promise<void> {
	const previous = shared;
	shared = undefined;
	await previous?.dispose();
}
