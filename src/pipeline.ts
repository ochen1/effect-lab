import {
	alignFace,
	sampleAlignedRGB,
	type Affine,
	type AlignmentData,
} from "./alignment";
import { createCompositor, type FaceMesh, type SkinPatch } from "./compositor";
import { createFaceRuntime, type Face } from "./face";
import { runSkin, warmSkin, disposeSkin } from "./inference";
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
	if (!value.getContext("2d"))
		throw new Error("This browser cannot create an image canvas.");
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

	return {
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
				let nextSource: HTMLCanvasElement;
				try {
					cancelled(signal);
					nextSource = canvas(bitmap.width, bitmap.height);
					nextSource.getContext("2d")!.drawImage(bitmap, 0, 0);
				} finally {
					bitmap.close();
				}
				const scale = Math.min(
					1,
					360 / nextSource.width,
					640 / nextSource.height,
				);
				const small = canvas(
					Math.max(1, Math.round(nextSource.width * scale)),
					Math.max(1, Math.round(nextSource.height * scale)),
				);
				const context = small.getContext("2d", { willReadFrequently: true })!;
				context.drawImage(nextSource, 0, 0, small.width, small.height);
				options.onStatus?.("Finding facial details…");
				const nextFaces = await detector.detect(small, signal);
				cancelled(signal);
				const sx = nextSource.width / small.width,
					sy = nextSource.height / small.height;
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
							nextSource.width,
							nextSource.height,
						),
						imageToTT295Coordinates(
							face.extra.map(toSource),
							nextSource.width,
							nextSource.height,
						),
					);
					return {
						positions: tt295ToImageCoordinates(
							positions,
							nextSource.width,
							nextSource.height,
						),
						uv: new Float32Array(topology.uv),
						indices: new Uint16Array(topology.indices),
					};
				});
				if (source) source.width = source.height = 1;
				source = nextSource;
				analysis = context.getImageData(0, 0, small.width, small.height);
				faces = nextFaces;
				meshes = nextMeshes;
				patches.clear();
				small.width = small.height = 1;
				return {
					width: source.width,
					height: source.height,
					faceCount: faces.length,
				};
			});
		},
		render(values: EffectSettings, renderOptions: RenderOptions) {
			return enqueue(async () => {
				const { signal, onProgress } = renderOptions;
				cancelled(signal);
				if (!source || !analysis) throw new Error("Choose a photo first.");
				const settings = validateSettings(values);
				const faceIndex = Math.min(
					settings.faceIndex,
					Math.max(0, faces.length - 1),
				);
				const active: SkinPatch[] = [];
				onProgress?.(0);
				if (settings.skinEnabled && settings.skin > 0 && faces.length) {
					let patch = patches.get(faceIndex);
					if (!patch) {
						options.onStatus?.("Applying the skin effect…");
						await warmSkin();
						cancelled(signal);
						const crop = alignFace(faces[faceIndex].points, alignment);
						const input = sampleAlignedRGB(analysis, crop, alignment.size);
						const rgba = await runSkin(input);
						const sx = source.width / analysis.width,
							sy = source.height / analysis.height;
						const cropToSource: Affine = [
							crop[0] * sx,
							crop[1] * sy,
							crop[2] * sx,
							crop[3] * sy,
							crop[4] * sx,
							crop[5] * sy,
						];
						patch = { rgba, size: alignment.size, cropToSource };
						patches.set(faceIndex, patch);
					}
					active.push(patch);
				}
				cancelled(signal);
				onProgress?.(0.35);
				const result = await compositor.render(
					source,
					source.width,
					source.height,
					active,
					meshes,
					settings,
					{
						maxDimension: renderOptions.maxDimension,
						signal,
						onProgress: (p) => onProgress?.(0.35 + p * 0.65),
					},
				);
				cancelled(signal);
				return result;
			});
		},
		getOriginal() {
			if (!source) throw new Error("Choose a photo first.");
			return source;
		},
		dispose() {
			disposed = true;
			void queue.then(async () => {
				compositor.dispose();
				await detector.dispose();
				await disposeSkin();
				patches.clear();
				if (source) source.width = source.height = 1;
				source = undefined;
				analysis = undefined;
				faces = [];
				meshes = [];
			});
		},
	};
}
