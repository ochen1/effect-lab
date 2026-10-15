import { getSdrContext } from "./capture-color";
import { createIndependentSkinWorkerClient } from "./independent-skin-worker-client";
import { createLiveSkin } from "./live-skin";
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
import {
	validateSettings,
	DEFAULT_SETTINGS,
	type EffectSettings,
	type InferenceEngine,
} from "./ui-types";

interface Topology {
	uv: number[];
	indices: number[];
}
interface RenderOptions {
	maxDimension: number | null;
	realtime?: boolean;
	primeRealtime?: boolean;
	signal?: AbortSignal;
	onProgress?: (fraction: number) => void;
}
export interface PipelineOptions {
	onStatus?: (message: string) => void;
}

function cancelled(signal?: AbortSignal) {
	if (signal?.aborted) throw new DOMException("Cancelled", "AbortError");
}
function canvas(
	width: number,
	height: number,
	readback = false,
): HTMLCanvasElement {
	const value = document.createElement("canvas");
	value.width = width;
	value.height = height;
	getSdrContext(value, { willReadFrequently: readback });
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
	let independentFace:
		| ReturnType<
				typeof import("./independent-face").createIndependentFaceRuntime
		  >
		| undefined;
	let independentSkin:
		| ReturnType<typeof createIndependentSkinWorkerClient>
		| undefined;
	async function getDetector(engine: InferenceEngine) {
		if (engine === "original") return detector;
		independentFace ??= (
			await import("./independent-face")
		).createIndependentFaceRuntime();
		return independentFace;
	}
	let liveSkin: ReturnType<typeof createLiveSkin> | undefined;
	let realtimePrimed = false;
	async function getIndependentSkin() {
		independentSkin ??= createIndependentSkinWorkerClient();
		liveSkin ??= createLiveSkin(independentSkin);
		return independentSkin;
	}
	let source: HTMLCanvasElement | undefined;
	let analysis: ImageData | undefined;
	let faces: Face[] = [];
	let meshes: FaceMesh[] = [];
	let disposed = false;
	let queue: Promise<unknown> = Promise.resolve();
	const photoAnalyses = new Map<InferenceEngine, Prepared>();
	const patches = new Map<InferenceEngine, Map<number, SkinPatch>>();
	let photoEngine: InferenceEngine = "original";
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
		engine: InferenceEngine,
		signal?: AbortSignal,
		reusable?: HTMLCanvasElement,
		motion = false,
	): Promise<Prepared> {
		cancelled(signal);
		const scale = Math.min(
			1,
			(engine === "independent" ? 720 : 360) / input.width,
			(engine === "independent" ? 1280 : 640) / input.height,
		);
		const width = Math.max(1, Math.round(input.width * scale));
		const height = Math.max(1, Math.round(input.height * scale));
		const small = reusable ?? canvas(width, height, true);
		if (small.width !== width) small.width = width;
		if (small.height !== height) small.height = height;
		try {
			const context = getSdrContext(small, { willReadFrequently: true });
			context.clearRect(0, 0, width, height);
			context.drawImage(input, 0, 0, width, height);
			const faceRuntime = await getDetector(engine);
			const nextFaces =
				engine === "independent"
					? await independentFace!.detect(
							small,
							signal,
							motion ? performance.now() : undefined,
						)
					: await faceRuntime.detect(small, signal);
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
				if (settings.inferenceEngine === "independent") {
					const sx = input.width / prepared.analysis.width,
						sy = input.height / prepared.analysis.height;
					const face = prepared.faces[faceIndex];
					const point = (p: { x: number; y: number }) => ({
						x: p.x * sx,
						y: p.y * sy,
					});
					const fullFace: Face = {
						...face,
						box: {
							x: face.box.x * sx,
							y: face.box.y * sy,
							width: face.box.width * sx,
							height: face.box.height * sy,
						},
						points: face.points.map(point),
						extra: face.extra?.map(point),
					};
					const processor = await getIndependentSkin();
					const light = [0, 0, 0];
					if (renderOptions.realtime || renderOptions.primeRealtime) {
						let samples = 0;
						const b = face.box,
							a = prepared.analysis;
						for (let y = 0; y < 4; y++)
							for (let x = 0; x < 4; x++) {
								const xx = Math.min(
									a.width - 1,
									Math.max(0, Math.round(b.x + b.width * (0.25 + x / 6))),
								);
								const yy = Math.min(
									a.height - 1,
									Math.max(0, Math.round(b.y + b.height * (0.25 + y / 6))),
								);
								const k = (yy * a.width + xx) * 4;
								for (let c = 0; c < 3; c++) light[c] += a.data[k + c] / 255;
								samples++;
							}
						for (let c = 0; c < 3; c++) light[c] /= samples;
					}
					if (renderOptions.realtime) {
						patch = await liveSkin!.get(
							input,
							fullFace,
							light,
							!realtimePrimed,
						);
						cancelled(signal);
						realtimePrimed = Boolean(patch);
					} else {
						await liveSkin!.drain();
						await processor.idle(signal);
						cancelled(signal);
						patch = await processor.process(input, fullFace, signal);
						if (renderOptions.primeRealtime) {
							liveSkin!.seed(input, fullFace, patch, light);
							realtimePrimed = true;
						}
					}
				} else {
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
				}
				if (patch) cache?.set(faceIndex, patch);
			}
			if (patch) active.push(patch);
		}
		if (
			renderOptions.realtime &&
			(!settings.skinEnabled ||
				settings.skin <= 0 ||
				!prepared.faces.length ||
				settings.inferenceEngine !== "independent")
		) {
			liveSkin?.reset();
			realtimePrimed = false;
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
		resetRealtime() {
			liveSkin?.reset();
			realtimePrimed = false;
		},
		getRealtimeSkinStats() {
			return liveSkin?.getDiagnostics() ?? null;
		},
		setSkinBackend(preference: SkinBackendPreference) {
			return enqueue(async () => {
				await setSkinBackendPreference(preference);
				patches.clear();
				await warmSkin();
			});
		},
		/** Warm the shared models once before starting a camera or offline conversion. */
		warm(
			signal?: AbortSignal,
			values: EffectSettings = { ...DEFAULT_SETTINGS },
		) {
			const settings = validateSettings(values);
			return enqueue(async () => {
				cancelled(signal);
				await (await getDetector(settings.inferenceEngine)).load();
				cancelled(signal);
				if (settings.skinEnabled && settings.skin > 0) {
					if (settings.inferenceEngine === "independent")
						await (await getIndependentSkin()).warm();
					else await warmSkin();
				}
				cancelled(signal);
			});
		},
		loadPhoto(
			file: File,
			signal?: AbortSignal,
			engine: InferenceEngine = "original",
		) {
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
					const prepared = await analyze(nextSource, engine, signal);
					if (source) source.width = source.height = 1;
					source = nextSource;
					({ analysis, faces, meshes } = prepared);
					photoAnalyses.clear();
					photoAnalyses.set(engine, prepared);
					photoEngine = engine;
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
			const settings = validateSettings(values);
			return enqueue(async () => {
				if (!source || !analysis) throw new Error("Choose a photo first.");
				let prepared = photoAnalyses.get(settings.inferenceEngine);
				if (!prepared) {
					options.onStatus?.(
						"Finding facial details with the selected engine…",
					);
					prepared = await analyze(
						source,
						settings.inferenceEngine,
						renderOptions.signal,
					);
					photoAnalyses.set(settings.inferenceEngine, prepared);
				}
				({ analysis, faces, meshes } = prepared);
				photoEngine = settings.inferenceEngine;
				let cache = patches.get(photoEngine);
				if (!cache) {
					cache = new Map();
					patches.set(photoEngine, cache);
				}
				return renderPrepared(source, prepared, settings, renderOptions, cache);
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
				frameAnalysis ??= canvas(1, 1, true);
				if (frameSource.width !== w) frameSource.width = w;
				if (frameSource.height !== h) frameSource.height = h;
				const context = getSdrContext(frameSource);
				context.clearRect(0, 0, w, h);
				context.drawImage(input, 0, 0, w, h);
				const prepared = await analyze(
					frameSource,
					settings.inferenceEngine,
					renderOptions.signal,
					frameAnalysis,
					renderOptions.realtime === true,
				);
				return renderPrepared(frameSource, prepared, settings, renderOptions);
			});
		},
		getPhotoInfo() {
			return { faceCount: faces.length, engine: photoEngine };
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
				await independentFace?.dispose();
				liveSkin?.reset();
				independentSkin?.dispose();
				photoAnalyses.clear();
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
