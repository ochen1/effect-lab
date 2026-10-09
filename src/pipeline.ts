import { getSdrContext } from "./capture-color";
import {
	alignFace,
	sampleAlignedRGB,
	type Affine,
	type AlignmentData,
} from "./alignment";
import { createCompositor, type FaceMesh, type SkinPatch } from "./compositor";
import { createFaceRuntime, type Face } from "./face";
import {
	runSkin,
	warmSkin,
	disposeSkin,
	setSkinBackendPreference,
	type SkinBackendPreference,
} from "./inference";
import {
	imageToTT295Coordinates,
	tt295ToImageCoordinates,
} from "./makeup-geometry";
import { buildTT295Positions } from "./makeup-tt295";
import { validateSettings, type EffectSettings } from "./ui-types";

interface Topology {
	uv: number[];
	indices: number[];
}
interface RenderOptions {
	maxDimension: number | null;
	signal?: AbortSignal;
	onProgress?: (fraction: number) => void;
}
export interface PipelineOptions {
	onStatus?: (message: string) => void;
}

function cancelled(signal?: AbortSignal) {
	if (signal?.aborted) throw new DOMException("Cancelled", "AbortError");
}
function canvas(width: number, height: number): HTMLCanvasElement {
	const value = document.createElement("canvas");
	value.width = width;
	value.height = height;
	getSdrContext(value);
	return value;
}
async function jsonAsset<T>(path: string): Promise<T> {
	const response = await fetch(
		new URL(path, new URL(import.meta.env.BASE_URL, location.href)),
	);
	if (!response.ok)
		throw new Error("An effect asset could not be downloaded. Please retry.");
	return response.json();
}

/** All photo pixels stay in this browser. Only static model/shader assets are fetched. */
export async function createPipeline(options: PipelineOptions = {}) {
	const base = new URL(
		"effects/boy-ii/",
		new URL(import.meta.env.BASE_URL, location.href),
	).href;
	const [alignment, topology] = await Promise.all([
		jsonAsset<AlignmentData>("effects/boy-ii/alignment.json"),
		jsonAsset<Topology>("effects/boy-ii/makeup-tt295.json"),
	]);
	if (
		topology.uv.length !== 590 ||
		topology.indices.some((i) => !Number.isInteger(i) || i < 0 || i >= 295)
	) {
		throw new Error("The BOY II makeup topology is incomplete.");
	}
	const compositor = await createCompositor(base);
	const detector = createFaceRuntime();
	let source: HTMLCanvasElement | undefined;
	let analysis: ImageData | undefined;
	let faces: Face[] = [];
	let meshes: FaceMesh[] = [];
	let disposed = false;
	let queue: Promise<unknown> = Promise.resolve();
	const patches = new Map<number, SkinPatch>();
	const enqueue = <T>(operation: () => Promise<T>): Promise<T> => {
		const next = queue.then(() => {
			if (disposed) throw new Error("The image editor has been closed.");
			return operation();
		});
		queue = next.catch(() => undefined);
		return next;
	};

	let frameSource: HTMLCanvasElement | undefined;
	let frameAnalysis: HTMLCanvasElement | undefined;
	type Prepared = { analysis: ImageData; faces: Face[]; meshes: FaceMesh[] };
	async function analyze(
		input: HTMLCanvasElement,
		signal?: AbortSignal,
		reusable?: HTMLCanvasElement,
	): Promise<Prepared> {
		cancelled(signal);
		const scale = Math.min(1, 360 / input.width, 640 / input.height);
		const width = Math.max(1, Math.round(input.width * scale));
		const height = Math.max(1, Math.round(input.height * scale));
		const small = reusable ?? canvas(width, height);
		if (small.width !== width) small.width = width;
		if (small.height !== height) small.height = height;
		try {
			const context = getSdrContext(small, { willReadFrequently: true });
			context.clearRect(0, 0, width, height);
			context.drawImage(input, 0, 0, width, height);
			const nextFaces = await detector.detect(small, signal);
			cancelled(signal);
			const sx = input.width / width,
				sy = input.height / height;
			const nextMeshes = nextFaces.map((face) => {
				if (face.points.length !== 106 || face.extra?.length !== 134) {
					throw new Error("The face model returned incomplete landmarks.");
				}
				const toSource = (p: { x: number; y: number }) => ({
					x: p.x * sx,
					y: p.y * sy,
				});
				const positions = buildTT295Positions(
					imageToTT295Coordinates(
						face.points.map(toSource),
						input.width,
						input.height,
					),
					imageToTT295Coordinates(
						face.extra.map(toSource),
						input.width,
						input.height,
					),
				);
				return {
					positions: tt295ToImageCoordinates(
						positions,
						input.width,
						input.height,
					),
					uv: new Float32Array(topology.uv),
					indices: new Uint16Array(topology.indices),
				};
			});
			return {
				faces: nextFaces,
				meshes: nextMeshes,
				analysis: context.getImageData(0, 0, width, height),
			};
		} finally {
			if (!reusable) small.width = small.height = 1;
		}
	}

	async function renderPrepared(
		input: HTMLCanvasElement,
		prepared: Prepared,
		values: EffectSettings,
		renderOptions: RenderOptions,
		cache?: Map<number, SkinPatch>,
	) {
		const { signal, onProgress } = renderOptions;
		cancelled(signal);
		const settings = validateSettings(values);
		const faceIndex = Math.min(
			settings.faceIndex,
			Math.max(0, prepared.faces.length - 1),
		);
		const active: SkinPatch[] = [];
		onProgress?.(0);
		if (settings.skinEnabled && settings.skin > 0 && prepared.faces.length) {
			let patch = cache?.get(faceIndex);
			if (!patch) {
				if (cache) options.onStatus?.("Applying the skin effect…");
				await warmSkin();
				cancelled(signal);
				const crop = alignFace(prepared.faces[faceIndex].points, alignment);
				const rgb = sampleAlignedRGB(prepared.analysis, crop, alignment.size);
				const rgba = await runSkin(rgb);
				cancelled(signal);
				const sx = input.width / prepared.analysis.width,
					sy = input.height / prepared.analysis.height;
				const cropToSource: Affine = [
					crop[0] * sx,
					crop[1] * sy,
					crop[2] * sx,
					crop[3] * sy,
					crop[4] * sx,
					crop[5] * sy,
				];
				patch = { rgba, size: alignment.size, cropToSource };
				cache?.set(faceIndex, patch);
			}
			active.push(patch);
		}
		cancelled(signal);
		onProgress?.(0.35);
		const result = await compositor.render(
			input,
			input.width,
			input.height,
			active,
			prepared.meshes,
			settings,
			{
				maxDimension: renderOptions.maxDimension,
				signal,
				onProgress: (p) => onProgress?.(0.35 + p * 0.65),
			},
		);
		if (signal?.aborted) {
			result.width = result.height = 1;
			cancelled(signal);
		}
		return result;
	}

	return {
		setSkinBackend(preference: SkinBackendPreference) {
			return enqueue(async () => {
				await setSkinBackendPreference(preference);
				patches.clear();
				await warmSkin();
			});
		},
		/** Warm the shared models once before starting a camera or offline conversion. */
		warm(signal?: AbortSignal) {
			return enqueue(async () => {
				cancelled(signal);
				await detector.load();
				cancelled(signal);
				await warmSkin();
				cancelled(signal);
			});
		},
		loadPhoto(file: File, signal?: AbortSignal) {
			return enqueue(async () => {
				cancelled(signal);
				options.onStatus?.("Opening your photo…");
				let bitmap: ImageBitmap;
				try {
					bitmap = await createImageBitmap(file, {
						imageOrientation: "from-image",
					});
				} catch {
					throw new Error(
						"This image could not be opened. Try a JPEG, PNG, WebP, or AVIF photo.",
					);
				}
				let nextSource: HTMLCanvasElement | undefined;
				try {
					cancelled(signal);
					nextSource = canvas(bitmap.width, bitmap.height);
					getSdrContext(nextSource).drawImage(bitmap, 0, 0);
				} finally {
					bitmap.close();
				}
				try {
					options.onStatus?.("Finding facial details…");
					const prepared = await analyze(nextSource, signal);
					if (source) source.width = source.height = 1;
					source = nextSource;
					({ analysis, faces, meshes } = prepared);
					patches.clear();
					return {
						width: source.width,
						height: source.height,
						faceCount: faces.length,
					};
				} catch (error) {
					nextSource.width = nextSource.height = 1;
					throw error;
				}
			});
		},
		render(values: EffectSettings, renderOptions: RenderOptions) {
			return enqueue(async () => {
				if (!source || !analysis) throw new Error("Choose a photo first.");
				return renderPrepared(
					source,
					{ analysis, faces, meshes },
					values,
					renderOptions,
					patches,
				);
			});
		},
		/** Capture a coherent frame before inference; never reuse a previous frame's skin patch.
		 * Calls are serialized with photo work. Callers apply backpressure and own the returned canvas.
		 * The loaded photo and its cached analysis are preserved when switching media modes. */
		processFrame(
			input: CanvasImageSource,
			width: number,
			height: number,
			values: EffectSettings,
			renderOptions: RenderOptions,
		) {
			const settings = validateSettings(values);
			return enqueue(async () => {
				cancelled(renderOptions.signal);
				if (
					!Number.isInteger(width) ||
					!Number.isInteger(height) ||
					width <= 0 ||
					height <= 0
				) {
					throw new Error("The video frame has invalid dimensions.");
				}
				const limit = renderOptions.maxDimension;
				if (limit !== null && (!Number.isFinite(limit) || limit < 1))
					throw new Error("The frame size limit is invalid.");
				const scale = limit ? Math.min(1, limit / Math.max(width, height)) : 1;
				const w = Math.max(1, Math.round(width * scale)),
					h = Math.max(1, Math.round(height * scale));
				frameSource ??= canvas(w, h);
				frameAnalysis ??= canvas(1, 1);
				if (frameSource.width !== w) frameSource.width = w;
				if (frameSource.height !== h) frameSource.height = h;
				const context = getSdrContext(frameSource);
				context.clearRect(0, 0, w, h);
				context.drawImage(input, 0, 0, w, h);
				const prepared = await analyze(
					frameSource,
					renderOptions.signal,
					frameAnalysis,
				);
				return renderPrepared(frameSource, prepared, settings, renderOptions);
			});
		},
		getOriginal() {
			if (!source) throw new Error("Choose a photo first.");
			return source;
		},
		dispose() {
			disposed = true;
			return queue.then(async () => {
				compositor.dispose();
				await detector.dispose();
				await disposeSkin();
				patches.clear();
				for (const value of [source, frameSource, frameAnalysis])
					if (value) value.width = value.height = 1;
				source = frameSource = frameAnalysis = undefined;
				analysis = undefined;
				faces = [];
				meshes = [];
			});
		},
	};
}
