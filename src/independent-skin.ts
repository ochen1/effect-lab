import * as ort from "onnxruntime-web/webgpu";
import { getSdrContext } from "./capture-color";
import type { Affine } from "./alignment";
import type { Face, FaceBox } from "./face";
import type { SkinPatch } from "./compositor";

export const INDEPENDENT_SKIN_SIZE = 512;
const PIXELS = INDEPENDENT_SKIN_SIZE ** 2;
const BLEND_DEGREE = 0.7;
type Backend = "webgpu" | "wasm";
export interface IndependentSkinStatus {
	state: "idle" | "loading" | "ready" | "error" | "disposed";
	backend: Backend | null;
	segmentationBackend?: Backend;
	gpuRejections?: Partial<
		Record<
			"smoothing" | "segmentation",
			{ maximumError: number; meanError: number; checkedValues: number }
		>
	>;
	provider: "Alibaba ModelScope / Apache-2.0";
	model: "cv_unet_skin_retouching_torch";
	whitening: false;
	localBlemishInpainting: false;
	downloadedBytes: number;
	validation?: { passed: boolean; maximumError: number; checkedValues: number };
	fallbackReason?: string;
	error?: string;
}
interface Asset {
	files: { name: string; bytes: number; sha256: string }[];
	input: string;
	output: string;
}
interface Manifest {
	version: 1;
	smoothing: Asset;
	segmentation: Asset;
}
interface Diagnostic {
	indices: number[];
	expected: number[];
	absoluteTolerance: number;
	reference?: { name: string; bytes: number; sha256: string };
}
const initialStatus = (): IndependentSkinStatus => ({
	state: "idle",
	backend: null,
	provider: "Alibaba ModelScope / Apache-2.0",
	model: "cv_unet_skin_retouching_torch",
	whitening: false,
	localBlemishInpainting: false,
	downloadedBytes: 0,
});
let latestStatus = initialStatus();
/** Technical metadata only; never includes the input photograph or model output. */
export function getIndependentSkinStatus(): IndependentSkinStatus {
	return structuredClone(latestStatus);
}
function errorText(value: unknown) {
	return value instanceof Error ? value.message : String(value);
}
function abort(signal?: AbortSignal) {
	if (signal?.aborted) throw new DOMException("Cancelled", "AbortError");
}

/** Match upstream's 1.5× square face ROI, clipped at the photograph boundary. */
export function independentSkinCrop(
	box: FaceBox,
	width: number,
	height: number,
) {
	if (
		![box.x, box.y, box.width, box.height, width, height].every(
			Number.isFinite,
		) ||
		box.width <= 0 ||
		box.height <= 0 ||
		width <= 0 ||
		height <= 0
	)
		throw new Error(
			"Independent skin processing received an invalid face region.",
		);
	const edge = Math.floor(Math.max(box.width, box.height) * 1.5);
	const cx = box.x + box.width / 2,
		cy = box.y + box.height / 2;
	const x = Math.max(0, Math.floor(cx - edge / 2));
	const y = Math.max(0, Math.floor(cy - edge / 2));
	const right = Math.min(width, Math.floor(cx + edge / 2));
	const bottom = Math.min(height, Math.floor(cy + edge / 2));
	if (right <= x || bottom <= y)
		throw new Error("The face region is outside the photograph.");
	return { x, y, width: right - x, height: bottom - y };
}

/** Synthetic RGB pattern shared with the conversion check; contains no user data. */
export function independentSkinDiagnostic(): Float32Array {
	const value = new Float32Array(PIXELS * 3);
	for (let y = 0; y < INDEPENDENT_SKIN_SIZE; y++)
		for (let x = 0; x < INDEPENDENT_SKIN_SIZE; x++) {
			const i = y * INDEPENDENT_SKIN_SIZE + x;
			value[i] = (x / (INDEPENDENT_SKIN_SIZE - 1)) * 1.8 - 0.9;
			value[PIXELS + i] = (y / (INDEPENDENT_SKIN_SIZE - 1)) * 1.6 - 0.8;
			value[PIXELS * 2 + i] =
				Math.sin((x + y) * 0.041) * 0.5 + Math.cos((x - y) * 0.023) * 0.4;
		}
	return value;
}

/** A bright radial field also exercises nonzero skin probabilities. A random
 * RGB image is classified as background and cannot detect a stuck-zero mask. */
export function independentSegmentationDiagnostic(): Float32Array {
	const value = new Float32Array(PIXELS * 3);
	const half = INDEPENDENT_SKIN_SIZE / 2;
	for (let y = 0; y < INDEPENDENT_SKIN_SIZE; y++)
		for (let x = 0; x < INDEPENDENT_SKIN_SIZE; x++) {
			const radial = 1 - ((x - half) ** 2 + (y - half) ** 2) / half ** 2;
			const i = y * INDEPENDENT_SKIN_SIZE + x;
			value[i] = value[PIXELS + i] = value[PIXELS * 2 + i] = radial;
		}
	return value;
}

/** Encode a learned blend map, not a resized photograph. The compositor applies
 * the upstream quadratic blend to each original-resolution source pixel. */
export function independentBlendPatch(
	blend: Float32Array,
	skin: Float32Array,
	cropToSource: Affine,
	size = INDEPENDENT_SKIN_SIZE,
): SkinPatch {
	const pixels = size * size;
	if (blend.length !== pixels * 3 || skin.length !== pixels)
		throw new Error(
			"Independent skin models returned incompatible output dimensions.",
		);
	const rgba = new Float32Array(pixels * 4);
	for (let y = 0; y < size; y++)
		for (let x = 0; x < size; x++) {
			const i = y * size + x;
			for (let c = 0; c < 3; c++) {
				const value = blend[c * pixels + i];
				if (!Number.isFinite(value) || value < -0.001 || value > 1.001)
					throw new Error(
						"Independent smoothing returned invalid blend values.",
					);
				rgba[i * 4 + c] =
					(Math.max(0, Math.min(1, value)) - 0.5) * BLEND_DEGREE * 2;
			}
			const probability = skin[i];
			if (
				!Number.isFinite(probability) ||
				probability < -0.001 ||
				probability > 1.001
			)
				throw new Error(
					"Independent segmentation returned invalid skin values.",
				);
			// The upstream diffuse mask fades the outer 20/500 of the crop.
			const border = Math.min(
				1,
				Math.min(x, y, size - 1 - x, size - 1 - y) / (size * 0.04),
			);
			rgba[i * 4 + 3] = Math.max(0, Math.min(1, probability)) * border * 2 - 1;
		}
	return {
		rgba,
		size,
		cropToSource,
		kind: "quadratic-blend",
		maskMode: "alpha-only",
	};
}

export function createIndependentSkinRuntime(
	options: { backend?: "auto" | Backend; modelBaseUrl?: string } = {},
) {
	const base =
		options.modelBaseUrl ??
		new URL(
			"models/independent/",
			new URL(
				import.meta.env?.BASE_URL ?? "/",
				globalThis.location?.href ?? "http://localhost/",
			),
		).href;
	const backendPreference = options.backend ?? "auto";
	let status = initialStatus();
	let smoothing: ort.InferenceSession | undefined;
	let segmentation: ort.InferenceSession | undefined;
	let manifest: Manifest | undefined;
	let disposed = false;
	let queue: Promise<unknown> = Promise.resolve();
	let disposal: Promise<void> | undefined;
	let cropCanvas: HTMLCanvasElement | undefined;
	const publish = () => {
		latestStatus = structuredClone(status);
	};
	const enqueue = <T>(operation: () => Promise<T>): Promise<T> => {
		if (disposed)
			return Promise.reject(
				new Error("Independent skin processing has been closed."),
			);
		const next = queue.then(() => {
			if (disposed)
				throw new Error("Independent skin processing has been closed.");
			return operation();
		});
		queue = next.catch(() => undefined);
		return next;
	};
	async function fetchJson<T>(name: string): Promise<T> {
		const response = await fetch(new URL(name, base));
		if (!response.ok)
			throw new Error(
				`Independent skin asset unavailable (${response.status}): ${name}`,
			);
		return response.json();
	}
	async function loadAsset(asset: Asset): Promise<Uint8Array> {
		const bytes = new Uint8Array(
			asset.files.reduce((total, part) => total + part.bytes, 0),
		);
		let offset = 0;
		for (const part of asset.files) {
			const response = await fetch(new URL(part.name, base));
			if (!response.ok)
				throw new Error(
					`Independent skin model unavailable (${response.status}).`,
				);
			const data = new Uint8Array(await response.arrayBuffer());
			if (data.byteLength !== part.bytes)
				throw new Error("An independent skin model download is incomplete.");
			const digest = await crypto.subtle.digest("SHA-256", data);
			const hash = Array.from(new Uint8Array(digest), (b) =>
				b.toString(16).padStart(2, "0"),
			).join("");
			if (hash !== part.sha256)
				throw new Error(
					"An independent skin model failed its integrity check.",
				);
			bytes.set(data, offset);
			offset += data.length;
			status.downloadedBytes += data.length;
			publish();
		}
		return bytes;
	}
	async function release() {
		const previous = [smoothing, segmentation];
		smoothing = segmentation = undefined;
		await Promise.all(previous.map((session) => session?.release()));
	}
	async function infer(
		session: ort.InferenceSession,
		asset: Asset,
		rgb: Float32Array,
		channels: number,
	) {
		const tensor = new ort.Tensor("float32", rgb, [
			1,
			3,
			INDEPENDENT_SKIN_SIZE,
			INDEPENDENT_SKIN_SIZE,
		]);
		let outputs: ort.InferenceSession.OnnxValueMapType | undefined;
		try {
			outputs = await session.run({ [asset.input]: tensor });
			const output = outputs[asset.output];
			if (
				!output ||
				output.type !== "float32" ||
				output.dims.join(",") !== `1,${channels},512,512`
			)
				throw new Error(
					"Independent skin model output does not match its contract.",
				);
			return new Float32Array((await output.getData()) as Float32Array);
		} finally {
			tensor.dispose();
			if (outputs)
				for (const output of Object.values(outputs)) output.dispose();
		}
	}
	async function initialize() {
		if (smoothing && segmentation) return;
		status = { ...status, state: "loading", backend: null };
		publish();
		try {
			manifest ??= await fetchJson<Manifest>("skin-manifest.json");
			const [diagnostic, maskDiagnostic] = await Promise.all([
				fetchJson<Diagnostic>("skin-smoothing-diagnostic.json"),
				fetchJson<Diagnostic>("skin-segmentation-diagnostic.json"),
			]);
			ort.env.wasm.numThreads = 1;
			ort.env.wasm.proxy = false;
			ort.env.wasm.wasmPaths = new URL(
				"vendor/onnx/",
				new URL(
					import.meta.env?.BASE_URL ?? "/",
					globalThis.location?.href ?? "http://localhost/",
				),
			).href;
			let gpu =
				backendPreference === "webgpu" ||
				(backendPreference === "auto" &&
					typeof navigator !== "undefined" &&
					"gpu" in navigator);
			if (gpu && backendPreference === "auto") {
				try {
					const api = (
						navigator as Navigator & {
							gpu?: { requestAdapter(): Promise<unknown> };
						}
					).gpu;
					if (!api || !(await api.requestAdapter())) {
						gpu = false;
						status.fallbackReason =
							"No WebGPU adapter is available; using the independent CPU models.";
					}
				} catch (error) {
					gpu = false;
					status.fallbackReason = errorText(error);
				}
			}
			const backends: Backend[] = gpu
				? backendPreference === "webgpu"
					? ["webgpu"]
					: ["webgpu", "wasm"]
				: ["wasm"];
			async function qualify(
				name: "smoothing" | "segmentation",
				asset: Asset,
				expected: Diagnostic,
				input: Float32Array,
				channels: number,
			) {
				const model = await loadAsset(asset);
				const fullReference = expected.reference
					? new Float32Array(
							(
								await loadAsset({
									files: [expected.reference],
									input: "",
									output: "",
								})
							).buffer,
						)
					: undefined;
				for (const backend of backends) {
					let candidate: ort.InferenceSession | undefined;
					try {
						candidate = await ort.InferenceSession.create(model, {
							executionProviders: [backend],
							graphOptimizationLevel: "all",
							preferredOutputLocation: "cpu",
						});
						const actual = await infer(candidate, asset, input, channels);
						const checkedValues =
							fullReference?.length ?? expected.indices.length;
						let maximumError = 0,
							totalError = 0;
						for (let i = 0; i < checkedValues; i++) {
							const delta = Math.abs(
								actual[fullReference ? i : expected.indices[i]] -
									(fullReference ? fullReference[i] : expected.expected[i]),
							);
							maximumError = Math.max(maximumError, delta);
							totalError += delta;
						}
						const meanError = totalError / checkedValues;
						if (
							!Number.isFinite(maximumError) ||
							maximumError > expected.absoluteTolerance
						) {
							if (backend === "webgpu") {
								status.gpuRejections ??= {};
								status.gpuRejections[name] = {
									maximumError,
									meanError,
									checkedValues,
								};
								publish();
							}
							throw new Error(
								`Independent ${name} ${backend} output did not match its model reference (maximum ${maximumError.toFixed(6)}, mean ${meanError.toFixed(6)}).`,
							);
						}
						return { session: candidate, backend, maximumError, checkedValues };
					} catch (error) {
						await candidate?.release();
						if (backend === backends[backends.length - 1]) throw error;
						status.fallbackReason = errorText(error);
						publish();
					}
				}
				throw new Error(
					"Independent model could not select a processing backend.",
				);
			}
			const smooth = await qualify(
				"smoothing",
				manifest.smoothing,
				diagnostic,
				independentSkinDiagnostic(),
				3,
			);
			smoothing = smooth.session;
			const mask = await qualify(
				"segmentation",
				manifest.segmentation,
				maskDiagnostic,
				independentSegmentationDiagnostic(),
				1,
			);
			segmentation = mask.session;
			status = {
				...status,
				state: "ready",
				backend: smooth.backend,
				segmentationBackend: mask.backend,
				validation: {
					passed: true,
					maximumError: Math.max(smooth.maximumError, mask.maximumError),
					checkedValues: smooth.checkedValues + mask.checkedValues,
				},
			};
			publish();
		} catch (error) {
			await release();
			status = {
				...status,
				state: "error",
				backend: null,
				error: errorText(error),
			};
			publish();
			throw error;
		}
	}
	return {
		getStatus: () => structuredClone(status),
		warm: () =>
			enqueue(async () => {
				await initialize();
				return structuredClone(status);
			}),
		process: (input: HTMLCanvasElement, face: Face, signal?: AbortSignal) =>
			enqueue(async () => {
				abort(signal);
				await initialize();
				abort(signal);
				const roi = independentSkinCrop(face.box, input.width, input.height);
				cropCanvas ??= document.createElement("canvas");
				cropCanvas.width = cropCanvas.height = INDEPENDENT_SKIN_SIZE;
				const context = getSdrContext(cropCanvas, { willReadFrequently: true });
				context.drawImage(
					input,
					roi.x,
					roi.y,
					roi.width,
					roi.height,
					0,
					0,
					INDEPENDENT_SKIN_SIZE,
					INDEPENDENT_SKIN_SIZE,
				);
				const pixels = context.getImageData(
					0,
					0,
					INDEPENDENT_SKIN_SIZE,
					INDEPENDENT_SKIN_SIZE,
				).data;
				const planar = new Float32Array(PIXELS * 3);
				for (let i = 0; i < PIXELS; i++)
					for (let c = 0; c < 3; c++)
						planar[c * PIXELS + i] = pixels[i * 4 + c] / 127.5 - 1;
				const blend = await infer(smoothing!, manifest!.smoothing, planar, 3);
				abort(signal);
				const skin = await infer(
					segmentation!,
					manifest!.segmentation,
					planar,
					1,
				);
				abort(signal);
				return independentBlendPatch(blend, skin, [
					roi.width / INDEPENDENT_SKIN_SIZE,
					0,
					0,
					roi.height / INDEPENDENT_SKIN_SIZE,
					roi.x,
					roi.y,
				]);
			}),
		dispose: () => {
			disposed = true;
			return (disposal ??= (async () => {
				await queue;
				await release();
				if (cropCanvas) cropCanvas.width = cropCanvas.height = 1;
				cropCanvas = undefined;
				status = { ...status, state: "disposed", backend: null };
				publish();
			})());
		},
	};
}
