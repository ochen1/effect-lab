/** Canvas convention: x' = a*x + c*y + e; y' = b*x + d*y + f. */
export type Affine = [number, number, number, number, number, number];
export type Point = { x: number; y: number };
export interface AlignmentData {
	template: number[];
	size: number;
	margin: number;
	offsetX: number;
	offsetY: number;
}
export function transformPoint(m: Affine, x: number, y: number): Point {
	return { x: m[0] * x + m[2] * y + m[4], y: m[1] * x + m[3] * y + m[5] };
}
export function invertAffine(m: Affine): Affine {
	const det = m[0] * m[3] - m[1] * m[2];
	if (!Number.isFinite(det) || Math.abs(det) < 1e-12)
		throw new Error("Degenerate face alignment");
	return [
		m[3] / det,
		-m[1] / det,
		-m[2] / det,
		m[0] / det,
		(m[2] * m[5] - m[3] * m[4]) / det,
		(m[1] * m[4] - m[0] * m[5]) / det,
	];
}
/** Same closed-form similarity least squares as NHFaceAlign at 0x1f287c0. */
export function fitSimilarity(
	source: readonly Point[],
	target: readonly Point[],
): Affine {
	if (source.length !== target.length || source.length < 2)
		throw new Error("Alignment requires matching point arrays");
	let sx = 0,
		sy = 0,
		tx = 0,
		ty = 0;
	for (let i = 0; i < source.length; i++) {
		sx += source[i].x;
		sy += source[i].y;
		tx += target[i].x;
		ty += target[i].y;
	}
	sx /= source.length;
	sy /= source.length;
	tx /= source.length;
	ty /= source.length;
	let real = 0,
		imag = 0,
		den = 0;
	for (let i = 0; i < source.length; i++) {
		const x = source[i].x - sx,
			y = source[i].y - sy,
			u = target[i].x - tx,
			v = target[i].y - ty;
		real += x * u + y * v;
		imag += x * v - y * u;
		den += x * x + y * y;
	}
	if (den < 1e-10) throw new Error("Face landmarks have no spatial extent");
	const a = real / den,
		b = imag / den;
	return [a, b, -b, a, tx - a * sx + b * sy, ty - b * sx - a * sy];
}
/** Returns crop pixels -> original pixels. All 106 original landmarks participate. */
export function alignFace(
	landmarks: readonly Point[],
	data: AlignmentData,
): Affine {
	if (landmarks.length !== 106 || data.template.length !== 212)
		throw new Error("BOY II alignment requires 106 original landmarks");
	const scale = data.size / (1 + 2 * data.margin);
	const target = Array.from({ length: 106 }, (_, i) => ({
		x: (data.template[i * 2] + data.margin) * scale + data.offsetX,
		y: (data.template[i * 2 + 1] + data.margin) * scale + data.offsetY,
	}));
	return invertAffine(fitSimilarity(landmarks, target));
}
/** CPU recipe: NHWC RGB [-1,1], OpenCV INTER_LINEAR 1/32 fractional grid, black constant border. */
export function sampleAlignedRGB(
	source: ImageData,
	cropToSource: Affine,
	size = 320,
): Float32Array {
	const out = new Float32Array(3 * size * size),
		w = source.width,
		h = source.height,
		p = source.data;
	const sample = (x: number, y: number, c: number) =>
		x < 0 || y < 0 || x >= w || y >= h ? 0 : p[(y * w + x) * 4 + c];
	for (let y = 0; y < size; y++)
		for (let x = 0; x < size; x++) {
			const point = transformPoint(cropToSource, x, y),
				sx = Math.round(point.x * 32) / 32,
				sy = Math.round(point.y * 32) / 32;
			const x0 = Math.floor(sx),
				y0 = Math.floor(sy),
				fx = sx - x0,
				fy = sy - y0;
			for (let c = 0; c < 3; c++) {
				const top = sample(x0, y0, c) * (1 - fx) + sample(x0 + 1, y0, c) * fx,
					bottom =
						sample(x0, y0 + 1, c) * (1 - fx) + sample(x0 + 1, y0 + 1, c) * fx;
				out[(y * size + x) * 3 + c] =
					Math.round(top * (1 - fy) + bottom * fy) / 127.5 - 1;
			}
		}
	return out;
}
