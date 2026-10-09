import * as ort from "onnxruntime-web/webgpu";
import {
	fitSimilarity,
	invertAffine,
	transformPoint,
	type Affine,
	type Point,
} from "./alignment";

export interface FaceBox {
	x: number;
	y: number;
	width: number;
	height: number;
}
export interface Face {
	box: FaceBox;
	score: number;
	points: Point[];
	extra?: Point[];
}
export interface FaceRuntimeOptions {
	modelBaseUrl?: string;
	wasmBaseUrl?: string;
}
/** CPU-owned output: callers do not own or retain native ORT resources. */
export interface FaceTensor {
	data: Float32Array;
	dims: readonly number[];
}
interface Proposal extends FaceBox {
	score: number;
}

/** Inclusive integer boxes reproduce the original SSD proposal/NMS convention. */
export function intersectionOverUnion(a: FaceBox, b: FaceBox): number {
	const w = Math.max(
		0,
		Math.min(a.x + a.width, b.x + b.width) - Math.max(a.x, b.x),
	);
	const h = Math.max(
		0,
		Math.min(a.y + a.height, b.y + b.height) - Math.max(a.y, b.y),
	);
	return (w * h) / (a.width * a.height + b.width * b.height - w * h);
}
export function suppressFaces(
	candidates: Proposal[],
	threshold = 0.3,
	maximum = 100,
): Proposal[] {
	candidates.sort((a, b) => b.score - a.score);
	const result: Proposal[] = [];
	for (const candidate of candidates.slice(0, 1000)) {
		if (
			result.every(
				(other) => intersectionOverUnion(candidate, other) <= threshold,
			)
		)
			result.push(candidate);
		if (result.length >= maximum) break;
	}
	return result;
}
/** Original image_detect anchors, channel order, rounding, clipping and thresholds. */
export function decodeFaceProposals(
	outputs: Record<string, FaceTensor>,
	width: number,
	height: number,
): Proposal[] {
	const result: Proposal[] = [];
	for (const [stride, base, scales, minSize] of [
		[8, 12, [1.4142, 2], 4],
		[16, 24, [1.4142, 2], 16],
		[32, 48, [1.4142, 2, 2.8284], 32],
	] as const) {
		const scores = outputs[`rpn_cls_score/${stride}s`],
			boxes = outputs[`rpn_bbox_pred/${stride}s`];
		if (!scores || !boxes)
			throw new Error(
				"The original face detector returned incomplete tensors.",
			);
		const score = scores.data as Float32Array,
			box = boxes.data as Float32Array;
		const rows = Number(scores.dims[2]),
			cols = Number(scores.dims[3]),
			plane = rows * cols,
			count = scales.length;
		const rawWidth = Math.round(Math.sqrt((base * base) / 1.2)),
			rawHeight = Math.round(rawWidth * 1.2);
		for (let anchor = 0; anchor < count; anchor++)
			for (let y = 0; y < rows; y++)
				for (let x = 0; x < cols; x++) {
					const index = y * cols + x;
					const probability =
						1 /
						(1 +
							Math.exp(
								score[anchor * plane + index] -
									score[(anchor + count) * plane + index],
							));
					if (probability < 0.6) continue;
					const aw = rawWidth * scales[anchor],
						ah = rawHeight * scales[anchor];
					const dx = box[anchor * plane + index],
						dy = box[(anchor + count) * plane + index];
					const pw = aw * Math.exp(box[(anchor + 2 * count) * plane + index]),
						ph = ah * Math.exp(box[(anchor + 3 * count) * plane + index]);
					const cx = x * stride + dx * aw,
						cy = y * stride + dy * ah;
					const xmin = Math.max(
							0,
							Math.min(width - 1, Math.trunc(cx - pw * 0.5)),
						),
						ymin = Math.max(0, Math.min(height - 1, Math.trunc(cy - ph * 0.5)));
					const xmax = Math.max(
							0,
							Math.min(width - 1, Math.trunc(cx + pw * 0.5 - 1)),
						),
						ymax = Math.max(
							0,
							Math.min(height - 1, Math.trunc(cy + ph * 0.5 - 1)),
						);
					if (xmax - xmin + 1 < minSize || ymax - ymin + 1 < minSize) continue;
					result.push({
						x: xmin,
						y: ymin,
						width: xmax - xmin + 1,
						height: ymax - ymin + 1,
						score: probability,
					});
				}
	}
	return suppressFaces(result);
}
/** Resize-to-min-side160, then round the other side to a32pixel grid; ties down. */
export function detectorSize(width: number, height: number): [number, number] {
	const short = Math.min(width, height),
		scale = Math.fround(160 / short);
	const aligned = (size: number) =>
		Math.max(
			32,
			Math.floor((Math.trunc(Math.fround(size * scale)) + 15) / 32) * 32,
		);
	return [aligned(width), aligned(height)];
}
/** Native fixed-point input stores BGR byte-minus128 directly, fraction6. */
export function detectorPixels(
	image: ImageData,
	width: number,
	height: number,
): Float32Array {
	const planar = new Float32Array(width * height * 3),
		plane = width * height;
	for (let y = 0; y < height; y++)
		for (let x = 0; x < width; x++) {
			const sx = Math.min(
					image.width - 1,
					Math.floor((x * image.width) / width),
				),
				sy = Math.min(
					image.height - 1,
					Math.floor((y * image.height) / height),
				);
			const source = (sy * image.width + sx) * 4,
				index = y * width + x;
			for (let c = 0; c < 3; c++)
				planar[c * plane + index] = (image.data[source + 2 - c] - 128) / 64;
		}
	return planar;
}
/** Native nearest-neighbor affine sampling, constant-black border, BGR/fraction6. */
export function sampleFacePixels(
	image: ImageData,
	matrix: Affine,
	size: number,
): Float32Array {
	const output = new Float32Array(size * size * 3),
		plane = size * size;
	for (let y = 0; y < size; y++)
		for (let x = 0; x < size; x++) {
			// The native optimized warp rounds its horizontal and vertical terms
			// separately before adding them (not the combined source coordinate).
			const sx =
				Math.floor(matrix[0] * x + matrix[4] + 0.5) +
				Math.floor(matrix[2] * y + 0.5);
			const sy =
				Math.floor(matrix[1] * x + matrix[5] + 0.5) +
				Math.floor(matrix[3] * y + 0.5);
			const inBounds =
					sx >= 0 && sy >= 0 && sx < image.width && sy < image.height,
				index = (sy * image.width + sx) * 4;
			for (let c = 0; c < 3; c++)
				output[c * plane + y * size + x] =
					((inBounds ? image.data[index + 2 - c] : 0) - 128) / 64;
		}
	return output;
}

/** Original legacy base_det square expansion, including its edge anchoring. */
export function initialFaceCrop(
	box: FaceBox,
	width: number,
	height: number,
): FaceBox {
	const { x, y } = box,
		w = box.width,
		h = box.height;
	let cx = x + w * 0.5,
		cy = y + h * 0.5;
	if (w < h) {
		cy = y + (h - 1) * 0.5;
		cx = x + h - 1 <= width - 1 ? x + w - 1 - (h - 1) * 0.5 : x + (h - 1) * 0.5;
	} else {
		cx = x + (w - 1) * 0.5;
		cy =
			y + w - 1 <= height - 1 ? y + h - 1 - (w - 1) * 0.5 : y + (w - 1) * 0.5;
	}
	const expanded = Math.fround(Math.max(w, h) * Math.fround(1.4));
	const extent = Math.round(expanded),
		offset = Math.fround(expanded * 0.5 - 0.5);
	return {
		x: Math.trunc(cx - offset),
		y: Math.trunc(cy - offset),
		width: extent,
		height: extent,
	};
}
export function sampleFaceRectangle(
	image: ImageData,
	rect: FaceBox,
	size = 120,
): Float32Array {
	const out = new Float32Array(size * size * 3),
		plane = size * size;
	for (let y = 0; y < size; y++)
		for (let x = 0; x < size; x++) {
			const sx = rect.x + Math.floor((x * rect.width) / size),
				sy = rect.y + Math.floor((y * rect.height) / size);
			const inside =
					sx >= 0 && sy >= 0 && sx < image.width && sy < image.height,
				offset = (sy * image.width + sx) * 4;
			for (let c = 0; c < 3; c++)
				out[c * plane + y * size + x] =
					((inside ? image.data[offset + 2 - c] : 0) - 128) / 64;
		}
	return out;
}

export function createFaceRuntime(options: FaceRuntimeOptions = {}) {
	const root = new URL(
		import.meta.env?.BASE_URL ?? "/",
		globalThis.location?.href ?? "http://localhost/",
	);
	const modelBase = new URL(options.modelBaseUrl ?? "models/", root);
	const sessions = new Map<string, Promise<ort.InferenceSession>>();
	let disposed = false;
	let runs: Promise<void> = Promise.resolve();
	let releasing: Promise<void> | undefined;
	const downloads = new AbortController();
	let templates:
		| Promise<{ referenceSize: number; base: number[]; extra: number[] }>
		| undefined;
	function loadTemplates() {
		if (disposed)
			return Promise.reject(new Error("Face runtime has been disposed."));
		if (!templates) {
			const pending = fetch(new URL("face-templates.json", modelBase), {
				signal: downloads.signal,
			}).then(async (response) => {
				if (!response.ok)
					throw new Error("Could not load original face alignment templates.");
				return response.json();
			});
			templates = pending;
			void pending.catch(() => {
				if (templates === pending) templates = undefined;
			});
		}
		return templates;
	}
	const templatePoints = (values: number[], size: number, reference: number) =>
		Array.from({ length: values.length / 2 }, (_, i) => ({
			x: (values[i * 2] * size) / reference,
			y: (values[i * 2 + 1] * size) / reference,
		}));
	function landmarks(
		output: FaceTensor,
		matrix: Affine,
		mean?: Point[],
	): Point[] {
		const values = output.data as Float32Array;
		return Array.from({ length: values.length / 2 }, (_, i) =>
			transformPoint(
				matrix,
				values[2 * i] + (mean?.[i].x ?? 0),
				values[2 * i + 1] + (mean?.[i].y ?? 0),
			),
		);
	}
	async function session(name: string) {
		if (disposed) throw new Error("Face runtime has been disposed.");
		let pending = sessions.get(name);
		if (!pending) {
			ort.env.wasm.numThreads = 1;
			ort.env.wasm.proxy = false;
			ort.env.wasm.wasmPaths =
				options.wasmBaseUrl ?? new URL("vendor/onnx/", root).href;
			pending = (async () => {
				const response = await fetch(new URL(`face-${name}.onnx`, modelBase), {
					signal: downloads.signal,
				});
				if (!response.ok)
					throw new Error(
						`Could not load face model ${name} (HTTP ${response.status}).`,
					);
				const bytes = await response.arrayBuffer();
				if (disposed) throw new Error("Face runtime has been disposed.");
				const network = await ort.InferenceSession.create(bytes, {
					executionProviders: ["wasm"],
					graphOptimizationLevel: "all",
				});
				if (disposed) {
					await network.release();
					throw new Error("Face runtime has been disposed.");
				}
				return network;
			})();
			sessions.set(name, pending);
			const created = pending;
			void created.catch(() => {
				if (sessions.get(name) === created) sessions.delete(name);
			});
		}
		return pending;
	}
	function infer(
		name: string,
		pixels: Float32Array,
		width: number,
		height = width,
	): Promise<Record<string, FaceTensor>> {
		if (disposed)
			return Promise.reject(new Error("Face runtime has been disposed."));
		if (
			!(pixels instanceof Float32Array) ||
			!Number.isInteger(width) ||
			!Number.isInteger(height) ||
			width <= 0 ||
			height <= 0 ||
			pixels.length !== width * height * 3
		) {
			return Promise.reject(
				new Error(
					"Face input must be a correctly sized planar BGR float32 tensor.",
				),
			);
		}
		// Copy before queueing so callers can reuse their source buffer immediately.
		const owned = pixels.slice();
		const run = runs.then(async () => {
			const network = await session(name);
			if (disposed) throw new Error("Face runtime has been disposed.");
			const input = new ort.Tensor("float32", owned, [1, 3, height, width]);
			let outputs: ort.InferenceSession.OnnxValueMapType | undefined;
			try {
				outputs = await network.run({ data: input });
				const result: Record<string, FaceTensor> = {};
				for (const [key, tensor] of Object.entries(outputs)) {
					if (tensor.type !== "float32")
						throw new Error(
							`Face model returned unsupported ${tensor.type} output.`,
						);
					const data = await tensor.getData();
					result[key] = {
						data: (data as Float32Array).slice(),
						dims: [...tensor.dims],
					};
				}
				return result;
			} finally {
				input.dispose();
				if (outputs)
					for (const tensor of Object.values(outputs)) tensor.dispose();
			}
		});
		runs = run.then(
			() => {},
			() => {},
		);
		return run;
	}
	async function boxes(image: ImageData): Promise<Proposal[]> {
		const [width, height] = detectorSize(image.width, image.height);
		const result = decodeFaceProposals(
			await infer(
				"detect",
				detectorPixels(image, width, height),
				width,
				height,
			),
			width,
			height,
		);
		return result.map((box) => {
			const x = Math.trunc((box.x * image.width) / width),
				y = Math.trunc((box.y * image.height) / height);
			const right = Math.trunc(((box.x + box.width - 1) * image.width) / width),
				bottom = Math.trunc(((box.y + box.height - 1) * image.height) / height);
			return {
				x,
				y,
				width: right - x + 1,
				height: bottom - y + 1,
				score: box.score,
			};
		});
	}
	async function detect(
		source: HTMLCanvasElement | ImageData,
		signal?: AbortSignal,
	): Promise<Face[]> {
		const check = () => {
			if (signal?.aborted)
				throw signal.reason ?? new DOMException("Cancelled", "AbortError");
		};
		check();
		const image =
			source instanceof ImageData
				? source
				: source
						.getContext("2d", { willReadFrequently: true })!
						.getImageData(0, 0, source.width, source.height);
		const [proposals, data] = await Promise.all([
			boxes(image),
			loadTemplates(),
		]);
		const baseMean = templatePoints(data.base, 120, data.referenceSize),
			extraMean = templatePoints(data.extra, 160, data.referenceSize);
		const faces: Face[] = [];
		for (const box of proposals.slice(0, 10)) {
			check();
			const rect = initialFaceCrop(box, image.width, image.height);
			const initial: Affine = [
				(rect.width - 1) / 119,
				0,
				0,
				(rect.height - 1) / 119,
				rect.x,
				rect.y,
			];
			const first = await infer(
				"base-det",
				sampleFaceRectangle(image, rect),
				120,
			);
			check();
			const confidence = (first.prob.data as Float32Array)[0];
			if (confidence < 0.9) continue;
			let points = landmarks(first.fc_landmark_s1, initial);
			for (let cycle = 0; cycle < 2; cycle++) {
				check();
				const crop = invertAffine(fitSimilarity(points, baseMean));
				const refined = await infer(
					"base",
					sampleFacePixels(image, crop, 120),
					120,
				);
				points = landmarks(refined.fc_landmark_s1, crop, baseMean);
			}
			const extraCrop = invertAffine(
				fitSimilarity(points, extraMean.slice(0, 106)),
			);
			check();
			const detail = await infer(
				"extra",
				sampleFacePixels(image, extraCrop, 160),
				160,
			);
			check();
			const all = landmarks(detail.Reshape_808, extraCrop, extraMean);
			faces.push({
				box: { x: box.x, y: box.y, width: box.width, height: box.height },
				score: confidence,
				points,
				extra: all.slice(106),
			});
		}
		return faces;
	}
	return {
		boxes,
		infer,
		detect,
		async load() {
			await Promise.all([
				loadTemplates(),
				...["detect", "base-det", "base", "extra"].map(session),
			]);
		},
		dispose() {
			if (releasing) return releasing;
			disposed = true;
			downloads.abort();
			releasing = (async () => {
				await runs;
				const settled = await Promise.allSettled([...sessions.values()]);
				sessions.clear();
				templates = undefined;
				const released = await Promise.allSettled(
					settled.flatMap((result) =>
						result.status === "fulfilled" ? [result.value.release()] : [],
					),
				);
				const failures = released.filter(
					(result): result is PromiseRejectedResult =>
						result.status === "rejected",
				);
				if (failures.length)
					throw new AggregateError(
						failures.map((result) => result.reason),
						"Could not release face inference sessions.",
					);
			})();
			return releasing;
		},
	};
}
