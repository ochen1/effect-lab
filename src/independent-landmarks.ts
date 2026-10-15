import type { Point } from "./alignment";
import type { Face } from "./face";

/** MediaPipe's public anatomical contour indices. Left/right below are in the
 * image, not the subject's anatomy. These are correspondences, not fitted
 * predictions from the original detector. All interpolation happens in image
 * pixels so portrait aspect ratios cannot distort the contour distances. */
export const FACE_CONTOURS = {
	jawLeft: [127, 234, 93, 132, 58, 172, 136, 150, 149, 176, 148, 152],
	jawRight: [152, 377, 400, 378, 379, 365, 397, 288, 361, 323, 454, 356],
	eyeLeftUpper: [33, 246, 161, 160, 159, 158, 157, 173, 133],
	eyeLeftLower: [133, 155, 154, 153, 145, 144, 163, 7, 33],
	eyeRightUpper: [263, 466, 388, 387, 386, 385, 384, 398, 362],
	eyeRightLower: [362, 382, 381, 380, 374, 373, 390, 249, 263],
	browLeftUpper: [70, 63, 105, 66, 107],
	browLeftLower: [46, 53, 52, 65, 55],
	browRightUpper: [300, 293, 334, 296, 336],
	browRightLower: [276, 283, 282, 295, 285],
	mouthUpper: [61, 185, 40, 39, 37, 0, 267, 269, 270, 409, 291],
	mouthLower: [61, 146, 91, 181, 84, 17, 314, 405, 321, 375, 291],
	mouthInnerUpper: [78, 191, 80, 81, 82, 13, 312, 311, 310, 415, 308],
	mouthInnerLower: [78, 95, 88, 178, 87, 14, 317, 402, 318, 324, 308],
} as const;

/** Endpoint-preserving polyline sampling; repeated points (closed eyes/mouth)
 * are supported. Interpolation never overshoots the measured contour. */
export function sampleContour(
	points: readonly Point[],
	count: number,
): Point[] {
	if (points.length < 2 || count < 2 || !Number.isInteger(count))
		throw new Error("A contour needs two points and at least two samples.");
	const lengths = [0];
	for (let i = 1; i < points.length; i++)
		lengths.push(
			lengths[i - 1] +
				Math.hypot(
					points[i].x - points[i - 1].x,
					points[i].y - points[i - 1].y,
				),
		);
	const total = lengths[lengths.length - 1];
	if (total === 0)
		return Array.from({ length: count }, () => ({ ...points[0] }));
	let segment = 1;
	return Array.from({ length: count }, (_, i) => {
		if (i === 0) return { ...points[0] };
		if (i === count - 1) return { ...points[points.length - 1] };
		const distance = (i * total) / (count - 1);
		while (segment < lengths.length - 1 && lengths[segment] <= distance)
			segment++;
		const span = lengths[segment] - lengths[segment - 1];
		const fraction = span ? (distance - lengths[segment - 1]) / span : 0;
		const a = points[segment - 1],
			b = points[segment];
		return { x: a.x + (b.x - a.x) * fraction, y: a.y + (b.y - a.y) * fraction };
	});
}

/** The exact same authored TT295 makeup topology can consume another tracker.
 * The adapter supplies anatomical correspondences for its 106 base points and
 * dense contours: eyes44, brows26, lips64. It does not load TikTok templates,
 * models, or predictions. It intentionally does not claim pixel parity between
 * the two independently trained landmark estimators. */
export function mediapipeToFace(
	landmarks: readonly Point[],
	width: number,
	height: number,
): Face {
	if (
		landmarks.length < 468 ||
		!Number.isFinite(width) ||
		!Number.isFinite(height) ||
		width <= 0 ||
		height <= 0 ||
		landmarks.some((p) => !Number.isFinite(p.x) || !Number.isFinite(p.y))
	)
		throw new Error(
			"MediaPipe must provide at least 468 finite normalized landmarks and a positive image size.",
		);
	const mesh = landmarks.map((p) => ({ x: p.x * width, y: p.y * height }));
	const pick = (ids: readonly number[]) => ids.map((i) => mesh[i]);
	const contour = (ids: readonly number[], n: number) =>
		sampleContour(pick(ids), n);
	const midpoint = (a: Point, b: Point): Point => ({
		x: (a.x + b.x) / 2,
		y: (a.y + b.y) / 2,
	});
	const brow = (upper: readonly number[], lower: readonly number[]) => {
		const outer = midpoint(mesh[upper[0]], mesh[lower[0]]);
		return {
			upper: [outer, ...pick(upper.slice(1))],
			lower: [outer, ...pick(lower.slice(1))],
		};
	};
	const leftBrow = brow(
		FACE_CONTOURS.browLeftUpper,
		FACE_CONTOURS.browLeftLower,
	);
	const rightBrow = brow(
		FACE_CONTOURS.browRightUpper,
		FACE_CONTOURS.browRightLower,
	);
	// Pin the lip centre and cupid's bow peaks instead of letting a global arc
	// length sampler move these landmarks when the mouth opens asymmetrically.
	const upperLip = [
		...contour([61, 185, 40, 39, 37], 7).slice(0, -1),
		...contour([37, 0], 3).slice(0, -1),
		...contour([0, 267], 3).slice(0, -1),
		...contour([267, 269, 270, 409, 291], 7),
	];
	const centredLip = (ids: readonly number[]) => [
		...contour(ids.slice(0, 6), 9).slice(0, -1),
		...contour(ids.slice(5), 9),
	];
	const lowerLip = centredLip(FACE_CONTOURS.mouthLower);
	const innerUpperLip = centredLip(FACE_CONTOURS.mouthInnerUpper);
	const innerLowerLip = centredLip(FACE_CONTOURS.mouthInnerLower);
	const leftEye = [
		...contour(FACE_CONTOURS.eyeLeftUpper, 12),
		...contour(FACE_CONTOURS.eyeLeftLower, 12).slice(1, -1),
	];
	const rightEye = [
		...contour(FACE_CONTOURS.eyeRightUpper, 12),
		...contour(FACE_CONTOURS.eyeRightLower, 12).slice(1, -1),
	];
	const base: Point[] = [
		...contour(FACE_CONTOURS.jawLeft, 17),
		...contour(FACE_CONTOURS.jawRight, 17).slice(1),
		...sampleContour(leftBrow.upper, 5),
		...sampleContour(rightBrow.upper, 5).reverse(),
		...pick([168, 6, 195, 4, 98, 97, 2, 326, 327]),
		...pick([33, 160, 158, 133, 153, 144, 362, 385, 387, 263, 373, 380]),
		...sampleContour(leftBrow.lower, 5).slice(1),
		...sampleContour(rightBrow.lower, 5).slice(1).reverse(),
		...pick([159, 145]),
		landmarks.length >= 478 ? mesh[468] : midpoint(mesh[33], mesh[133]),
		...pick([386, 374]),
		landmarks.length >= 478 ? mesh[473] : midpoint(mesh[263], mesh[362]),
		...pick([245, 465, 198, 420, 129, 358]),
		...pick([
			61, 40, 37, 0, 267, 270, 291, 321, 314, 17, 84, 91, 78, 81, 13, 311, 308,
			402, 14, 178,
		]),
	];
	base.push({ ...base[74] }, { ...base[77] });
	const extra = [
		...leftEye,
		...rightEye,
		...sampleContour(leftBrow.upper, 7),
		...sampleContour(leftBrow.lower, 7).slice(1),
		...sampleContour(rightBrow.upper, 7),
		...sampleContour(rightBrow.lower, 7).slice(1),
		...upperLip.slice(1, -1),
		...innerUpperLip.slice(1, -1),
		...innerLowerLip.slice(1, -1),
		...lowerLip.slice(1, -1),
		mesh[61],
		mesh[291],
		mesh[78],
		mesh[308],
	];
	const xs = mesh.slice(0, 468).map((p) => p.x),
		ys = mesh.slice(0, 468).map((p) => p.y);
	const x = Math.min(...xs),
		y = Math.min(...ys);
	return {
		box: { x, y, width: Math.max(...xs) - x, height: Math.max(...ys) - y },
		// Tasks filters on detector/presence confidence, but does not expose the
		// accepted face's scalar score. 1 is an accepted-result marker only.
		score: 1,
		points: base,
		extra,
	};
}
