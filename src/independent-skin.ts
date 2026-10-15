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
	segmentationGraph?: "upstream" | "parallel-reduce";
	correctionValidation?: {
		synthetic: ReturnType<typeof compareIndependentCorrection>[];
		firstImage?: ReturnType<typeof compareIndependentCorrection>;
	};
	segmentationDiagnostic?: {
		maximumError: number;
		meanError: number;
		checkedValues: number;
	};
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
	lastProcessing?: {
		cropMilliseconds: number;
		smoothingMilliseconds: number;
		segmentationMilliseconds: number;
		totalMilliseconds: number;
	};
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
	gpuManifest?: string;
}
interface GpuManifest {
	version: 1;
	source: { name: string; bytes: number; sha256: string };
	candidate: Asset;
	cases: {
		input: "radial" | "gradient";
		reference: { name: string; bytes: number; sha256: string };
	}[];
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
/** Mirror safe worker metadata for the main-thread processing report. */
export function publishIndependentSkinStatus(
	status: IndependentSkinStatus,
): void {
	latestStatus = structuredClone(status);
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

/** Same float32-FMA and nearest-even byte quantization as the compositor. */
export function quantizeIndependentPatch(
	rgba: Float32Array,
): Uint8ClampedArray {
	const bytes = new Uint8ClampedArray(rgba.length);
	for (let i = 0; i < rgba.length; i++) {
		if (!Number.isFinite(rgba[i]) || rgba[i] < -1 || rgba[i] > 1)
			throw new Error(
				"The independent correction field is not finite normalized RGBA.",
			);
		bytes[i] = Math.fround(rgba[i] * 127.5 + 127.5);
	}
	return bytes;
}

/** Conservative full-resolution output bound after independent bilinear
 * sampling of alpha A and correction D=2*map-1. The shader computes
 * out=source+A*D*source*(1-source), whose last factor is at most1/4.
 * A product-of-interpolants needs the four-corner bound, not only nodal A*D.
 */
export function compareIndependentCorrection(
	actual: Uint8Array | Uint8ClampedArray,
	expected: Uint8Array | Uint8ClampedArray,
	size = INDEPENDENT_SKIN_SIZE,
) {
	if (actual.length !== size * size * 4 || expected.length !== actual.length)
		throw new Error("Correction field dimensions differ.");
	let maximumOutputByteErrorBound = 0,
		total = 0;
	for (let y = 0; y < size; y++)
		for (let x = 0; x < size; x++) {
			const corners = [
				y * size + x,
				y * size + Math.min(x + 1, size - 1),
				Math.min(y + 1, size - 1) * size + x,
				Math.min(y + 1, size - 1) * size + Math.min(x + 1, size - 1),
			];
			let maxA = 0,
				maxReferenceA = 0,
				maxDeltaA = 0;
			for (const corner of corners) {
				const a = actual[corner * 4 + 3] / 255,
					b = expected[corner * 4 + 3] / 255;
				maxA = Math.max(maxA, a);
				maxReferenceA = Math.max(maxReferenceA, b);
				maxDeltaA = Math.max(maxDeltaA, Math.abs(a - b));
			}
			for (let c = 0; c < 3; c++) {
				let maxD = 0,
					maxReferenceD = 0,
					maxDeltaD = 0;
				for (const corner of corners) {
					const a = actual[corner * 4 + c] / 127.5 - 1,
						b = expected[corner * 4 + c] / 127.5 - 1;
					maxD = Math.max(maxD, Math.abs(a));
					maxReferenceD = Math.max(maxReferenceD, Math.abs(b));
					maxDeltaD = Math.max(maxDeltaD, Math.abs(a - b));
				}
				const bound =
					0.25 *
					255 *
					Math.min(
						maxA * maxDeltaD + maxReferenceD * maxDeltaA,
						maxReferenceA * maxDeltaD + maxD * maxDeltaA,
					);
				maximumOutputByteErrorBound = Math.max(
					maximumOutputByteErrorBound,
					bound,
				);
				total += bound;
			}
		}
	const meanOutputByteErrorBound = total / (size * size * 3);
	return {
		passed: maximumOutputByteErrorBound <= 1 && meanOutputByteErrorBound <= 0.1,
		maximumOutputByteErrorBound,
		meanOutputByteErrorBound,
		checkedValues: size * size * 3,
	};
}

/** Prepare the exact same main-thread raster for direct and worker inference.
 * Transferring these bytes avoids ImageBitmap/OffscreenCanvas resize differences. */
export function prepareIndependentSkinPixels(
	input: HTMLCanvasElement | OffscreenCanvas | ImageBitmap,
	face: Face,
	reusable?: HTMLCanvasElement | OffscreenCanvas,
): { rgba: Uint8ClampedArray; cropToSource: Affine } {
	const roi = independentSkinCrop(face.box, input.width, input.height);
	const canvas =
		reusable ??
		(typeof document !== "undefined"
			? document.createElement("canvas")
			: new OffscreenCanvas(INDEPENDENT_SKIN_SIZE, INDEPENDENT_SKIN_SIZE));
	canvas.width = canvas.height = INDEPENDENT_SKIN_SIZE;
	const context =
		typeof OffscreenCanvas !== "undefined" && canvas instanceof OffscreenCanvas
			? canvas.getContext("2d", {
					willReadFrequently: true,
					colorSpace: "srgb",
					colorType: "unorm8",
					toneMapping: { mode: "standard" },
				} as CanvasRenderingContext2DSettings)
			: getSdrContext(canvas as HTMLCanvasElement, {
					willReadFrequently: true,
				});
	if (!context)
		throw new Error("Independent skin processing cannot create a crop canvas.");
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
	const rgba = context.getImageData(
		0,
		0,
		INDEPENDENT_SKIN_SIZE,
		INDEPENDENT_SKIN_SIZE,
	).data;
	if (!reusable) canvas.width = canvas.height = 1;
	return {
		rgba,
		cropToSource: [
			roi.width / INDEPENDENT_SKIN_SIZE,
			0,
			0,
			roi.height / INDEPENDENT_SKIN_SIZE,
			roi.x,
			roi.y,
		],
	};
}

export function createIndependentSkinRuntime(
	options: {
		backend?: "auto" | Backend;
		modelBaseUrl?: string;
		wasmBaseUrl?: string;
		gpuManifestUrl?: string;
		onStatus?: (status: IndependentSkinStatus) => void;
	} = {},
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
	let segmentationAsset: Asset | undefined;
	let gpuCandidateActive = false;
	let firstImageChecked = false;
	let manifest: Manifest | undefined;
	let disposed = false;
	let queue: Promise<unknown> = Promise.resolve();
	let disposal: Promise<void> | undefined;
	let cropCanvas: HTMLCanvasElement | OffscreenCanvas | undefined;
	const publish = () => {
		publishIndependentSkinStatus(status);
		options.onStatus?.(structuredClone(status));
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
	async function loadAsset(
		asset: Asset,
		assetBase = base,
	): Promise<Uint8Array> {
		const bytes = new Uint8Array(
			asset.files.reduce((total, part) => total + part.bytes, 0),
		);
		let offset = 0;
		for (const part of asset.files) {
			const response = await fetch(new URL(part.name, assetBase));
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
		gpuCandidateActive = false;
		firstImageChecked = false;
		await Promise.all(previous.map((session) => session?.release()));
	}
	async function openOriginalMask() {
		return ort.InferenceSession.create(
			await loadAsset(manifest!.segmentation),
			{
				executionProviders: ["wasm"],
				graphOptimizationLevel: "all",
				preferredOutputLocation: "cpu",
			},
		);
	}
	async function activateOriginalMask(
		reason: string,
		reference?: ort.InferenceSession,
	) {
		const cpu = reference ?? (await openOriginalMask());
		await segmentation?.release();
		segmentation = cpu;
		segmentationAsset = manifest!.segmentation;
		gpuCandidateActive = false;
		status = {
			...status,
			segmentationBackend: "wasm",
			segmentationGraph: "upstream",
			fallbackReason: reason,
		};
		publish();
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
			ort.env.wasm.wasmPaths =
				options.wasmBaseUrl ??
				new URL(
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
				providers = backends,
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
				for (const backend of providers) {
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
						if (backend === providers[providers.length - 1]) throw error;
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
			const gpuManifestUrl =
				options.gpuManifestUrl ??
				(manifest.gpuManifest
					? new URL(manifest.gpuManifest, base).href
					: undefined);
			if (gpu && gpuManifestUrl) {
				let candidate: ort.InferenceSession | undefined;
				try {
					const response = await fetch(gpuManifestUrl);
					if (!response.ok)
						throw new Error("The parallel skin model manifest is unavailable.");
					const gpuManifest = (await response.json()) as GpuManifest;
					if (
						gpuManifest.source.sha256 !==
							manifest.segmentation.files[0].sha256 ||
						gpuManifest.cases.length !== 2
					)
						throw new Error(
							"The parallel skin model has an incompatible source reference.",
						);
					const gpuBase = new URL(".", gpuManifestUrl).href;
					candidate = await ort.InferenceSession.create(
						await loadAsset(gpuManifest.candidate, gpuBase),
						{
							executionProviders: ["webgpu"],
							graphOptimizationLevel: "disabled",
							preferredOutputLocation: "cpu",
						},
					);
					const checks: ReturnType<typeof compareIndependentCorrection>[] = [];
					for (const sample of gpuManifest.cases) {
						const rgb =
							sample.input === "radial"
								? independentSegmentationDiagnostic()
								: independentSkinDiagnostic();
						const blend = await infer(smoothing, manifest.smoothing, rgb, 3);
						const mask = await infer(candidate, gpuManifest.candidate, rgb, 1);
						const bytes = quantizeIndependentPatch(
							independentBlendPatch(blend, mask, [1, 0, 0, 1, 0, 0]).rgba,
						);
						const expected = await loadAsset(
							{ files: [sample.reference], input: "", output: "" },
							gpuBase,
						);
						const check = compareIndependentCorrection(bytes, expected);
						checks.push(check);
						if (!check.passed)
							throw new Error(
								`Parallel skin correction exceeds its full-resolution output bound (${check.maximumOutputByteErrorBound.toFixed(4)} byte maximum).`,
							);
						if (sample.input === "radial" && maskDiagnostic.reference) {
							const expectedMask = new Float32Array(
								(
									await loadAsset({
										files: [maskDiagnostic.reference],
										input: "",
										output: "",
									})
								).buffer,
							);
							let maximumError = 0,
								sum = 0;
							for (let i = 0; i < mask.length; i++) {
								const d = Math.abs(mask[i] - expectedMask[i]);
								maximumError = Math.max(maximumError, d);
								sum += d;
							}
							status.segmentationDiagnostic = {
								maximumError,
								meanError: sum / mask.length,
								checkedValues: mask.length,
							};
						}
					}
					segmentation = candidate;
					candidate = undefined;
					segmentationAsset = gpuManifest.candidate;
					gpuCandidateActive = true;
					firstImageChecked = false;
					status = {
						...status,
						state: "ready",
						backend: smooth.backend,
						segmentationBackend: "webgpu",
						segmentationGraph: "parallel-reduce",
						correctionValidation: { synthetic: checks },
						validation: {
							passed: true,
							maximumError: smooth.maximumError,
							checkedValues: smooth.checkedValues,
						},
					};
					publish();
					return;
				} catch (error) {
					await candidate?.release();
					status.fallbackReason = errorText(error);
					publish();
				}
			}
			const mask = await qualify(
				"segmentation",
				manifest.segmentation,
				maskDiagnostic,
				independentSegmentationDiagnostic(),
				1,
				gpuManifestUrl ? ["wasm"] : backends,
			);
			segmentation = mask.session;
			segmentationAsset = manifest.segmentation;
			status = {
				...status,
				state: "ready",
				backend: smooth.backend,
				segmentationBackend: mask.backend,
				segmentationGraph: "upstream",
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
	const processPixels = (
		pixels: Uint8ClampedArray,
		cropToSource: Affine,
		signal?: AbortSignal,
	) =>
		enqueue(async () => {
			abort(signal);
			if (
				!(pixels instanceof Uint8ClampedArray) ||
				pixels.length !== PIXELS * 4 ||
				cropToSource.length !== 6 ||
				!cropToSource.every(Number.isFinite)
			)
				throw new Error(
					"Independent skin pixels or crop coordinates are invalid.",
				);
			await initialize();
			abort(signal);
			const started = performance.now();
			const planar = new Float32Array(PIXELS * 3);
			let hasTransparency = false;
			for (let i = 0; i < PIXELS; i++) {
				if (pixels[i * 4 + 3] !== 255) hasTransparency = true;
				for (let c = 0; c < 3; c++)
					planar[c * PIXELS + i] = pixels[i * 4 + c] / 127.5 - 1;
			}
			// The RGB correction bound assumes an opaque source. The authored
			// compositor also edits alpha, so transparent inputs retain its exact mask.
			if (gpuCandidateActive && hasTransparency)
				await activateOriginalMask(
					"Transparent inputs use the original CPU skin mask to preserve output opacity.",
				);
			const cropped = performance.now();
			const blend = await infer(smoothing!, manifest!.smoothing, planar, 3);
			const smoothed = performance.now();
			abort(signal);
			let skin: Float32Array;
			let patch: SkinPatch;
			try {
				skin = await infer(segmentation!, segmentationAsset!, planar, 1);
				patch = independentBlendPatch(blend, skin, cropToSource);
			} catch (error) {
				if (!gpuCandidateActive) throw error;
				await activateOriginalMask(
					`Parallel skin processing fell back to its original CPU model: ${errorText(error)}`,
				);
				skin = await infer(segmentation!, segmentationAsset!, planar, 1);
				patch = independentBlendPatch(blend, skin, cropToSource);
			}
			if (gpuCandidateActive && !firstImageChecked) {
				let reference: ort.InferenceSession | undefined;
				try {
					reference = await openOriginalMask();
					const expectedMask = await infer(
						reference,
						manifest!.segmentation,
						planar,
						1,
					);
					const expectedPatch = independentBlendPatch(
						blend,
						expectedMask,
						cropToSource,
					);
					const check = compareIndependentCorrection(
						quantizeIndependentPatch(patch.rgba),
						quantizeIndependentPatch(expectedPatch.rgba),
					);
					status.correctionValidation!.firstImage = check;
					firstImageChecked = true;
					if (!check.passed) {
						await activateOriginalMask(
							`Parallel skin failed the first image output bound (${check.maximumOutputByteErrorBound.toFixed(4)} byte maximum).`,
							reference,
						);
						reference = undefined;
						skin = expectedMask;
						patch = expectedPatch;
					}
				} finally {
					await reference?.release();
				}
			}
			const segmented = performance.now();
			abort(signal);
			status.lastProcessing = {
				cropMilliseconds: cropped - started,
				smoothingMilliseconds: smoothed - cropped,
				segmentationMilliseconds: segmented - smoothed,
				totalMilliseconds: performance.now() - started,
			};
			publish();
			return patch;
		});

	return {
		getStatus: () => structuredClone(status),
		warm: () =>
			enqueue(async () => {
				await initialize();
				return structuredClone(status);
			}),
		processPixels,
		process: (
			input: HTMLCanvasElement | OffscreenCanvas | ImageBitmap,
			face: Face,
			signal?: AbortSignal,
		) => {
			try {
				abort(signal);
				cropCanvas ??=
					typeof document !== "undefined"
						? document.createElement("canvas")
						: new OffscreenCanvas(INDEPENDENT_SKIN_SIZE, INDEPENDENT_SKIN_SIZE);
				const prepared = prepareIndependentSkinPixels(input, face, cropCanvas);
				return processPixels(prepared.rgba, prepared.cropToSource, signal);
			} catch (error) {
				return Promise.reject(error);
			}
		},
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
