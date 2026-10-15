import type {
	FaceLandmarker,
	FaceLandmarkerResult,
} from "@mediapipe/tasks-vision";
import type { Face } from "./face";
import { mediapipeToFace } from "./independent-landmarks";

export interface IndependentFaceOptions {
	modelBaseUrl?: string;
	wasmBaseUrl?: string;
	maxFaces?: number;
}
type Mode = "IMAGE" | "VIDEO";
/** Narrow backend boundary permits lifecycle tests without loading WASM. */
export interface IndependentFaceBackend {
	detect(source: HTMLCanvasElement | ImageData): FaceLandmarkerResult;
	detectForVideo(
		source: HTMLCanvasElement | ImageData,
		timestamp: number,
	): FaceLandmarkerResult;
	setOptions(options: { runningMode: Mode }): Promise<void>;
	close(): void;
}
type BackendFactory = (
	options: Required<IndependentFaceOptions>,
	signal: AbortSignal,
) => Promise<IndependentFaceBackend>;

async function createBackend(
	options: Required<IndependentFaceOptions>,
	signal: AbortSignal,
): Promise<FaceLandmarker> {
	const { FaceLandmarker, FilesetResolver } = await import(
		"@mediapipe/tasks-vision"
	);
	const response = await fetch(
		new URL("face-landmarker.task", options.modelBaseUrl),
		{ signal },
	);
	if (!response.ok)
		throw new Error(
			`Could not load the independent face model (HTTP ${response.status}).`,
		);
	const modelAssetBuffer = new Uint8Array(await response.arrayBuffer());
	const fileset = await FilesetResolver.forVisionTasks(
		options.wasmBaseUrl.replace(/\/$/, ""),
	);
	signal.throwIfAborted();
	return FaceLandmarker.createFromOptions(fileset, {
		baseOptions: { modelAssetBuffer, delegate: "CPU" },
		runningMode: "IMAGE",
		numFaces: options.maxFaces,
		minFaceDetectionConfidence: 0.5,
		minFacePresenceConfidence: 0.5,
		minTrackingConfidence: 0.5,
		outputFaceBlendshapes: false,
		outputFacialTransformationMatrixes: false,
	});
}

/** A separate runtime: no original model, template, or ORT session is fetched.
 * Calls, mode changes, and disposal are serialized. Failed loads are retryable.
 * VIDEO timestamps are monotonically advanced across seeking/restarted clips.
 */
export function createIndependentFaceRuntime(
	options: IndependentFaceOptions = {},
	factory: BackendFactory = createBackend,
) {
	const root = new URL(
		import.meta.env?.BASE_URL ?? "/",
		globalThis.location?.href ?? "http://localhost/",
	);
	const maxFaces = options.maxFaces ?? 5;
	if (!Number.isInteger(maxFaces) || maxFaces < 1 || maxFaces > 10)
		throw new Error("Independent face count must be between 1 and 10.");
	const resolved = {
		modelBaseUrl: new URL(options.modelBaseUrl ?? "models/independent/", root)
			.href,
		wasmBaseUrl: new URL(options.wasmBaseUrl ?? "vendor/mediapipe/", root).href,
		maxFaces,
	};
	let pending: Promise<IndependentFaceBackend> | undefined;
	let mode: Mode = "IMAGE";
	let disposed = false;
	let releasing: Promise<void> | undefined;
	let runs: Promise<unknown> = Promise.resolve();
	let lastTimestamp = -1;
	const downloads = new AbortController();
	function check(signal?: AbortSignal) {
		if (disposed)
			throw new Error("Independent face runtime has been disposed.");
		signal?.throwIfAborted();
	}
	function load() {
		check();
		if (!pending) {
			const created = factory(resolved, downloads.signal).then((backend) => {
				if (disposed) {
					backend.close();
					throw new Error("Independent face runtime has been disposed.");
				}
				return backend;
			});
			pending = created;
			void created.catch(() => {
				if (pending === created) pending = undefined;
			});
		}
		return pending;
	}
	function detect(
		source: HTMLCanvasElement | ImageData,
		signal?: AbortSignal,
		timestampMs?: number,
	): Promise<Face[]> {
		try {
			check(signal);
		} catch (error) {
			return Promise.reject(error);
		}
		if (timestampMs !== undefined && !Number.isFinite(timestampMs))
			return Promise.reject(new Error("Video frame timestamp must be finite."));
		const result = runs.then(async () => {
			check(signal);
			const backend = await load();
			check(signal);
			const desired: Mode = timestampMs === undefined ? "IMAGE" : "VIDEO";
			if (mode !== desired) {
				await backend.setOptions({ runningMode: desired });
				mode = desired;
			}
			check(signal);
			let output: FaceLandmarkerResult;
			if (timestampMs === undefined) output = backend.detect(source);
			else {
				lastTimestamp = Math.max(timestampMs, lastTimestamp + 1);
				output = backend.detectForVideo(source, lastTimestamp);
			}
			check(signal);
			return output.faceLandmarks.map((points) =>
				mediapipeToFace(points, source.width, source.height),
			);
		});
		runs = result.catch(() => {});
		return result;
	}
	return {
		detect,
		async load() {
			await load();
		},
		dispose(): Promise<void> {
			if (releasing) return releasing;
			disposed = true;
			downloads.abort();
			const created = pending;
			releasing = (async () => {
				await runs;
				if (created) {
					const settled = await Promise.allSettled([created]);
					if (settled[0].status === "fulfilled") settled[0].value.close();
				}
				pending = undefined;
			})();
			return releasing;
		},
	};
}
