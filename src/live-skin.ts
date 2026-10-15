import {
	fitSimilarity,
	transformPoint,
	type Affine,
	type Point,
} from "./alignment";
import type { Face } from "./face";
import type { SkinPatch } from "./compositor";

interface Processor {
	readonly busy: boolean;
	getStatus?(): { segmentationBackend?: string };
	idle?(): Promise<void>;
	process(input: HTMLCanvasElement, face: Face): Promise<SkinPatch>;
}
interface Sample {
	face: Face;
	patch: SkinPatch;
	capturedAt: number;
	width: number;
	height: number;
	light: number[];
}
export interface LiveSkinDiagnostics {
	requested: number;
	completed: number;
	reused: number;
	discarded: number;
	invalidations: number;
	inFlight: boolean;
	lastInferenceMs: number | null;
	refreshIntervalMs: number;
	mapAgeMs: number | null;
	hasMap: boolean;
}
let latest: LiveSkinDiagnostics | null = null;
export function getLiveSkinDiagnostics() {
	return latest ? { ...latest } : null;
}
const anchors = [43, 44, 45, 46, 49, 52, 55, 58, 61];
function distance(a: Point, b: Point) {
	return Math.hypot(a.x - b.x, a.y - b.y);
}
function diagonal(face: Face) {
	return Math.hypot(face.box.width, face.box.height);
}
export function composeAffine(a: Affine, b: Affine): Affine {
	return [
		a[0] * b[0] + a[2] * b[1],
		a[1] * b[0] + a[3] * b[1],
		a[0] * b[2] + a[2] * b[3],
		a[1] * b[2] + a[3] * b[3],
		a[0] * b[4] + a[2] * b[5] + a[4],
		a[1] * b[4] + a[3] * b[5] + a[5],
	];
}
/** Map adjustment fields onto current landmarks, never reuse old camera pixels. */
export function trackSkinTransform(
	previous: Face,
	current: Face,
): Affine | null {
	if (previous.points.length !== 106 || current.points.length !== 106)
		return null;
	try {
		const m = fitSimilarity(
			anchors.map((i) => previous.points[i]),
			anchors.map((i) => current.points[i]),
		);
		if (!m.every(Number.isFinite)) return null;
		const scale = Math.hypot(m[0], m[1]);
		if (scale < 0.6 || scale > 1.7 || Math.abs(Math.atan2(m[1], m[0])) > 0.7)
			return null;
		const size = diagonal(current);
		if (!Number.isFinite(size) || size < 1) return null;
		let total = 0,
			max = 0;
		for (let i = 0; i < 106; i++) {
			const p = previous.points[i];
			const d = distance(transformPoint(m, p.x, p.y), current.points[i]) / size;
			total += d * d;
			max = Math.max(max, d);
		}
		if (Math.sqrt(total / 106) > 0.025 || max > 0.06) return null;
		return m;
	} catch {
		return null;
	}
}
function continuous(a: Face, b: Face) {
	const center = (f: Face) => ({
		x: f.box.x + f.box.width / 2,
		y: f.box.y + f.box.height / 2,
	});
	const size = diagonal(a),
		next = diagonal(b);
	return (
		size > 0 &&
		next / size > 0.65 &&
		next / size < 1.55 &&
		distance(center(a), center(b)) < Math.max(size, next) * 0.4
	);
}
/** A single background job. Fast frames track its learned field; captures and
 * offline exports drain it and compute a fresh field. Source/face/lighting jumps
 * invalidate it, and fields expire rather than stick to a new person or scene. */
export function createLiveSkin(
	processor: Processor,
	clock = () => performance.now(),
) {
	let cached: Sample | undefined;
	let last: Face | undefined;
	let lastWidth = 0,
		lastHeight = 0;
	let pending: Promise<void> | undefined;
	let lastRequestedAt = -Infinity;
	let epoch = 0;
	let error: unknown;
	const stats: LiveSkinDiagnostics = {
		requested: 0,
		completed: 0,
		reused: 0,
		discarded: 0,
		invalidations: 0,
		inFlight: false,
		lastInferenceMs: null,
		refreshIntervalMs: 0,
		mapAgeMs: null,
		hasMap: false,
	};
	const publish = () => {
		stats.inFlight = !!pending;
		stats.hasMap = !!cached;
		stats.mapAgeMs = cached ? Math.max(0, clock() - cached.capturedAt) : null;
		latest = { ...stats };
	};
	function reset() {
		lastRequestedAt = -Infinity;
		epoch++;
		cached = undefined;
		last = undefined;
		error = undefined;
		stats.invalidations++;
		publish();
	}
	function start(
		input: HTMLCanvasElement,
		face: Face,
		light: number[],
		force = false,
	) {
		if (pending || processor.busy) return;
		// Leave room for camera textures and composition on the same GPU. CPU
		// fallback stays continuously busy off-thread; it does not need this GPU budget.
		stats.refreshIntervalMs =
			processor.getStatus?.().segmentationBackend === "webgpu"
				? Math.max(250, Math.min(1000, (stats.lastInferenceMs ?? 200) * 2.5))
				: 0;
		if (!force && clock() - lastRequestedAt < stats.refreshIntervalMs) return;
		lastRequestedAt = clock();
		const generation = epoch,
			capturedAt = clock(),
			snapshot = structuredClone(face),
			width = input.width,
			height = input.height;
		stats.requested++;
		const job = processor
			.process(input, snapshot)
			.then(
				(patch) => {
					if (generation !== epoch) {
						stats.discarded++;
						return;
					}
					cached = {
						face: snapshot,
						patch,
						capturedAt,
						width,
						height,
						light: [...light],
					};
					stats.completed++;
					stats.lastInferenceMs = clock() - capturedAt;
				},
				(failure) => {
					if (generation === epoch) error = failure;
				},
			)
			.finally(() => {
				if (pending === job) pending = undefined;
				publish();
			});
		pending = job;
		publish();
	}
	return {
		seed(
			input: HTMLCanvasElement,
			face: Face,
			patch: SkinPatch,
			light: number[],
		) {
			epoch++;
			lastRequestedAt = clock();
			error = undefined;
			last = structuredClone(face);
			lastWidth = input.width;
			lastHeight = input.height;
			cached = {
				face: structuredClone(face),
				patch,
				capturedAt: clock(),
				width: input.width,
				height: input.height,
				light: [...light],
			};
			publish();
		},
		reset,
		async drain() {
			await pending;
			if (error) {
				const e = error;
				error = undefined;
				throw e;
			}
		},
		getDiagnostics: () => {
			publish();
			return { ...stats };
		},
		/** first frame gets a fresh map before recording becomes ready. Later frames do not wait. */
		async get(
			input: HTMLCanvasElement,
			face: Face,
			light: number[] = [],
			initial = false,
		): Promise<SkinPatch | undefined> {
			if (error) {
				const e = error;
				error = undefined;
				throw e;
			}
			if (
				last &&
				(lastWidth !== input.width ||
					lastHeight !== input.height ||
					!continuous(last, face))
			)
				reset();
			last = structuredClone(face);
			lastWidth = input.width;
			lastHeight = input.height;
			if (
				cached &&
				(clock() - cached.capturedAt >
					Math.max(5000, Math.min(15000, (stats.lastInferenceMs ?? 0) * 2.5)) ||
					!trackSkinTransform(cached.face, face) ||
					light.some((v, i) => Math.abs(v - cached!.light[i]) > 0.16))
			) {
				cached = undefined;
				stats.invalidations++;
			}
			if (initial && !cached) {
				const generation = epoch;
				// A reset may leave obsolete work in flight. Drain it before capturing the
				// first field for this source, rather than marking a skinless frame ready.
				if (pending) await pending;
				if (processor.busy) await processor.idle?.();
				if (generation !== epoch) return undefined;
				if (error) {
					const e = error;
					error = undefined;
					throw e;
				}
				cached = undefined;
				start(input, face, light, true);
				await pending;
				if (generation !== epoch) return undefined;
				if (error) {
					const e = error;
					error = undefined;
					throw e;
				}
			} else start(input, face, light);
			if (!cached) {
				publish();
				return undefined;
			}
			const transform = trackSkinTransform(cached.face, face);
			if (!transform) {
				publish();
				return undefined;
			}
			stats.reused++;
			publish();
			return {
				...cached.patch,
				cropToSource: composeAffine(transform, cached.patch.cropToSource),
			};
		},
	};
}
