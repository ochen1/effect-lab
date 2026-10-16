import type { IndependentFaceOptions } from "./independent-face";
import type { Face } from "./face";
export type FaceRequest =
	| { id: number; type: "load"; options: IndependentFaceOptions }
	| {
			id: number;
			type: "detect";
			rgba: Uint8ClampedArray<ArrayBuffer>;
			width: number;
			height: number;
			timestamp?: number;
	  };
interface Transport {
	postMessage(message: FaceRequest, transfer: Transferable[]): void;
	terminate(): void;
	onmessage:
		| ((
				event: MessageEvent<{ id: number; faces?: Face[]; error?: string }>,
		  ) => void)
		| null;
	onerror: ((event: ErrorEvent) => void) | null;
	onmessageerror: ((event: MessageEvent) => void) | null;
}
let diagnostics = {
	backend: "worker-cpu",
	completed: 0,
	lastInferenceMs: null as number | null,
	inFlight: false,
};
export function getIndependentFaceDiagnostics() {
	return { ...diagnostics };
}
/** Calls are serialized through the actual worker completion, even after caller
 * cancellation. No old result can land on a new frame; no model reload on abort. */
export function createIndependentFaceWorkerClient(
	options: IndependentFaceOptions = {},
	createWorker: () => Transport = () =>
		new Worker(new URL("./independent-face-worker.ts", import.meta.url), {
			type: "module",
			name: "effect-lab-face",
		}),
) {
	const root = new URL(
		import.meta.env?.BASE_URL ?? "/",
		globalThis.location?.href ?? "http://localhost/",
	);
	const resolved = {
		...options,
		modelBaseUrl: new URL(options.modelBaseUrl ?? "models/independent/", root)
			.href,
		wasmBaseUrl: new URL(options.wasmBaseUrl ?? "vendor/mediapipe/", root).href,
	};
	let worker: Transport | undefined,
		disposed = false,
		loaded = false,
		nextId = 0;
	let queue: Promise<unknown> = Promise.resolve();
	let pending:
		| {
				id: number;
				resolve: (faces: Face[]) => void;
				reject: (error: Error) => void;
		  }
		| undefined;
	function check(signal?: AbortSignal) {
		if (disposed) throw new Error("Face worker has been disposed");
		signal?.throwIfAborted();
	}
	function failure(error: Error) {
		const job = pending;
		pending = undefined;
		loaded = false;
		if (worker) {
			worker.onmessage = worker.onerror = worker.onmessageerror = null;
			worker.terminate();
			worker = undefined;
		}
		job?.reject(error);
	}
	function request(
		message: FaceRequest,
		transfer: Transferable[] = [],
	): Promise<Face[]> {
		check();
		if (!worker) {
			worker = createWorker();
			worker.onmessage = ({ data }) => {
				if (data.id !== pending?.id) return;
				const job = pending;
				pending = undefined;
				if (data.error) job.reject(new Error(data.error));
				else job.resolve(data.faces ?? []);
			};
			worker.onerror = (event) =>
				failure(new Error(event.message || "Face worker failed"));
			worker.onmessageerror = () =>
				failure(new Error("Face worker response could not be decoded"));
		}
		return new Promise((resolve, reject) => {
			pending = { id: message.id, resolve, reject };
			try {
				worker!.postMessage(message, transfer);
			} catch (error) {
				failure(error instanceof Error ? error : new Error(String(error)));
			}
		});
	}
	async function warm() {
		if (!loaded) {
			await request({ id: ++nextId, type: "load", options: resolved });
			loaded = true;
		}
	}
	function enqueue<T>(
		operation: () => Promise<T>,
		signal?: AbortSignal,
	): Promise<T> {
		try {
			check(signal);
		} catch (error) {
			return Promise.reject(error);
		}
		const job = queue.then(async () => {
			check(signal);
			return operation();
		});
		queue = job.catch(() => {});
		if (!signal) return job;
		return new Promise((resolve, reject) => {
			const cancel = () => reject(new DOMException("Cancelled", "AbortError"));
			signal.addEventListener("abort", cancel, { once: true });
			job
				.then((value) => {
					signal.aborted ? cancel() : resolve(value);
				}, reject)
				.finally(() => signal.removeEventListener("abort", cancel));
			if (signal.aborted) cancel();
		});
	}
	return {
		load: () => enqueue(warm),
		detect(image: ImageData, signal?: AbortSignal, timestamp?: number) {
			if (timestamp !== undefined && !Number.isFinite(timestamp))
				return Promise.reject(new Error("Video timestamp must be finite"));
			return enqueue(async () => {
				await warm();
				check(signal);
				// Retain caller's pixels for skin/lighting analysis; transfer an owned copy.
				const rgba = new Uint8ClampedArray(image.data);
				const started = performance.now();
				diagnostics.inFlight = true;
				try {
					const faces = await request(
						{
							id: ++nextId,
							type: "detect",
							rgba,
							width: image.width,
							height: image.height,
							timestamp,
						},
						[rgba.buffer],
					);
					diagnostics.completed++;
					diagnostics.lastInferenceMs = performance.now() - started;
					return faces;
				} finally {
					diagnostics.inFlight = false;
				}
			}, signal);
		},
		async dispose() {
			disposed = true;
			failure(new Error("Face worker has been disposed"));
			await queue;
		},
	};
}
