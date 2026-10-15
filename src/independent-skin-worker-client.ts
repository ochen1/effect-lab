import type { SkinPatch } from "./compositor";
import type { Face } from "./face";
import type { Affine } from "./alignment";
import {
	publishIndependentSkinStatus,
	prepareIndependentSkinPixels,
	type IndependentSkinStatus,
} from "./independent-skin";
import type {
	IndependentSkinWorkerOptions,
	IndependentSkinWorkerRequest,
	IndependentSkinWorkerResponse,
} from "./independent-skin-worker-protocol";

export class IndependentSkinBusyError extends Error {
	constructor() {
		super("Independent skin already has a frame in flight.");
		this.name = "IndependentSkinBusyError";
	}
}
interface WorkerTransport {
	postMessage(
		message: IndependentSkinWorkerRequest,
		transfer?: Transferable[],
	): void;
	terminate(): void;
	onmessage:
		| ((event: MessageEvent<IndependentSkinWorkerResponse>) => void)
		| null;
	onerror: ((event: ErrorEvent) => void) | null;
	onmessageerror: ((event: MessageEvent) => void) | null;
}
/** Narrow injectable boundary for transfer, cancellation and worker crash tests. */
export interface IndependentSkinWorkerDependencies {
	createWorker(): WorkerTransport;
	preparePixels?(
		input: HTMLCanvasElement | OffscreenCanvas,
		face: Face,
	): { rgba: Uint8ClampedArray; cropToSource: Affine };
}
const defaults: IndependentSkinWorkerDependencies = {
	createWorker: () =>
		new Worker(new URL("./independent-skin-worker.ts", import.meta.url), {
			type: "module",
			name: "effect-lab-independent-skin",
		}),
};
type Result = SkinPatch | IndependentSkinStatus;
interface Job {
	id: number;
	type: "warm" | "process";
	promise: Promise<Result>;
	resolve(value: Result): void;
	reject(error: unknown): void;
}
function aborted(signal?: AbortSignal) {
	if (signal?.aborted) throw new DOMException("Cancelled", "AbortError");
}
function abortable<T>(
	promise: Promise<T>,
	signal?: AbortSignal,
): Promise<T> {
	if (!signal) return promise;
	return new Promise<T>((resolve, reject) => {
		const cancel = () => {
			reject(new DOMException("Cancelled", "AbortError"));
		};
		if (signal.aborted) {
			cancel();
			return;
		}
		signal.addEventListener("abort", cancel, { once: true });
		promise
			.then(resolve, reject)
			.finally(() => signal.removeEventListener("abort", cancel));
	});
}

/** One owned model runtime and at most one captured/inferred frame. The main thread prepares the exact original
 * 512-pixel crop and transfers its 1 MiB RGBA buffer to preserve rasterization. A cancelled
 * caller detaches immediately; a posted inference completes without exposing its
 * stale result. No frames queue behind it and the 121 MB model stays warm.
 * Disposal and worker failure terminate the actual worker and release its memory.
 */
export function createIndependentSkinWorkerClient(
	options: Partial<IndependentSkinWorkerOptions> & {
		onStatus?: (status: IndependentSkinStatus) => void;
	} = {},
	dependencies: IndependentSkinWorkerDependencies = defaults,
) {
	const root = new URL(
		import.meta.env?.BASE_URL ?? "/",
		globalThis.location?.href ?? "http://localhost/",
	);
	const configuration: IndependentSkinWorkerOptions = {
		backend: options.backend ?? "auto",
		modelBaseUrl: new URL(options.modelBaseUrl ?? "models/independent/", root)
			.href,
		wasmBaseUrl: new URL(options.wasmBaseUrl ?? "vendor/onnx/", root).href,
	};
	let worker: WorkerTransport | undefined;
	let cropCanvas: HTMLCanvasElement | OffscreenCanvas | undefined;
	let pending: Job | undefined;
	let disposed = false;
	let nextId = 1;
	let lastDurationMs: number | null = null;
	let status: IndependentSkinStatus = {
		state: "idle",
		backend: null,
		provider: "Alibaba ModelScope / Apache-2.0",
		model: "cv_unet_skin_retouching_torch",
		whitening: false,
		localBlemishInpainting: false,
		downloadedBytes: 0,
	};
	const publish = (value: IndependentSkinStatus) => {
		status = structuredClone(value);
		publishIndependentSkinStatus(status);
		options.onStatus?.(structuredClone(status));
	};
	function stopWorker() {
		if (worker) {
			worker.onmessage = worker.onerror = worker.onmessageerror = null;
			worker.terminate();
			worker = undefined;
		}
	}
	function rejectJob(error: unknown, fatal = false) {
		const job = pending;
		pending = undefined;
		if (fatal) {
			stopWorker();
			publish({
				...status,
				state: "error",
				backend: null,
				error: error instanceof Error ? error.message : String(error),
			});
		}
		job?.reject(error);
	}
	function ensureWorker() {
		if (worker) return worker;
		const created = dependencies.createWorker();
		worker = created;
		created.onmessage = (event) => {
			if (worker !== created || disposed) return;
			const message = event.data;
			const job = pending;
			if (!job || message.id !== job.id) return;
			if (message.status) publish(message.status);
			if (message.type === "status") return;
			if (message.type === "error") {
				const error = new Error(message.message);
				error.name = message.name;
				rejectJob(error);
				return;
			}
			if ((message.type === "ready") !== (job.type === "warm")) {
				rejectJob(
					new Error("Independent skin worker returned an unexpected response."),
					true,
				);
				return;
			}
			pending = undefined;
			if (message.type === "result") {
				lastDurationMs = message.durationMs;
				job.resolve(message.patch);
			} else job.resolve(message.status);
		};
		created.onerror = (event) => {
			if (worker !== created) return;
			event.preventDefault?.();
			rejectJob(
				new Error(event.message || "Independent skin worker failed."),
				true,
			);
		};
		created.onmessageerror = () => {
			if (worker === created)
				rejectJob(
					new Error("Independent skin worker response could not be decoded."),
					true,
				);
		};
		return created;
	}
	function begin(type: Job["type"]): Job {
		if (disposed) throw new Error("Independent skin worker has been disposed.");
		if (pending) throw new IndependentSkinBusyError();
		let resolve!: Job["resolve"], reject!: Job["reject"];
		const promise = new Promise<Result>((done, fail) => {
			resolve = done;
			reject = fail;
		});
		// Cancellation can detach every caller while the worker finishes. Keep the
		// owned job handled even if its eventual inference fails after detaching.
		void promise.catch(() => {});
		pending = {
			id: nextId++,
			type,
			promise,
			resolve,
			reject,
		};
		return pending;
	}
	return {
		get busy() {
			return pending !== undefined;
		},
		get lastDurationMs() {
			return lastDurationMs;
		},
		getStatus: () => structuredClone(status),
		/** Await the owned computation, including jobs whose caller cancelled.
		 * Does not enqueue frames; callers recheck/acquire through process(). */
		async idle(signal?: AbortSignal): Promise<void> {
			aborted(signal);
			if (disposed)
				throw new Error("Independent skin worker has been disposed.");
			while (pending) {
				await abortable(
					pending.promise.then(
						() => {},
						() => {},
					),
					signal,
				);
				aborted(signal);
				if (disposed)
					throw new Error("Independent skin worker has been disposed.");
			}
		},
		warm(signal?: AbortSignal): Promise<IndependentSkinStatus> {
			try {
				aborted(signal);
				if (disposed)
					throw new Error("Independent skin worker has been disposed.");
				if (worker && status.state === "ready")
					return Promise.resolve(structuredClone(status));
				if (pending)
					return abortable(
						pending.promise.then(() => structuredClone(status)),
						signal,
					);
				const job = begin("warm");
				try {
					ensureWorker().postMessage({
						type: "warm",
						id: job.id,
						options: configuration,
					});
				} catch (error) {
					rejectJob(error, true);
				}
				return abortable(job.promise as Promise<IndependentSkinStatus>, signal);
			} catch (error) {
				return Promise.reject(error);
			}
		},
		process(
			input: HTMLCanvasElement | OffscreenCanvas,
			face: Face,
			signal?: AbortSignal,
		): Promise<SkinPatch> {
			try {
				aborted(signal);
				const job = begin("process");
				try {
					let pixels: { rgba: Uint8ClampedArray; cropToSource: Affine };
					if (dependencies.preparePixels)
						pixels = dependencies.preparePixels(input, face);
					else {
						cropCanvas ??=
							typeof document === "undefined"
								? new OffscreenCanvas(512, 512)
								: document.createElement("canvas");
						pixels = prepareIndependentSkinPixels(input, face, cropCanvas);
					}
					aborted(signal);
					ensureWorker().postMessage(
						{
							type: "process",
							id: job.id,
							options: configuration,
							rgba: pixels.rgba,
							cropToSource: pixels.cropToSource,
						},
						[pixels.rgba.buffer as ArrayBuffer],
					);
				} catch (error) {
					rejectJob(error);
				}

				return abortable(job.promise as Promise<SkinPatch>, signal);
			} catch (error) {
				return Promise.reject(error);
			}
		},
		dispose() {
			if (disposed) return;
			disposed = true;
			rejectJob(new Error("Independent skin worker has been disposed."));
			stopWorker();
			if (cropCanvas) cropCanvas.width = cropCanvas.height = 1;
			cropCanvas = undefined;
			publish({ ...status, state: "disposed", backend: null });
		},
	};
}
