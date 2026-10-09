import { quantizeGanRGBA } from "../src/compositor";
import nativeGanU8 from "./native-gan-u8.json";
import { describe, expect, test } from "bun:test";
import {
	alignFace,
	fitSimilarity,
	invertAffine,
	sampleAlignedRGB,
	transformPoint,
	type Affine,
} from "../src/alignment";
import alignment from "../public/effects/boy-ii/alignment.json";
import nativeAlignment from "./native-alignment.json";
describe("Original NHFaceAlign similarity and margins", () => {
	test("native NHFaceAlign synthetic oracle agrees including offset sign", () => {
		const a = invertAffine(alignFace(nativeAlignment.points, alignment));
		const row = [a[0], a[2], a[4], a[1], a[3], a[5]];
		row.forEach((v, i) =>
			expect(Math.abs(v - nativeAlignment.sourceToCrop[i])).toBeLessThan(0.001),
		);
	});
	test("known translation, rotation and scale recovered from all 106 reference points", () => {
		const source = Array.from({ length: 106 }, (_, i) => ({
			x: alignment.template[2 * i],
			y: alignment.template[2 * i + 1],
		}));
		const m: Affine = [2.4, 0.7, -0.7, 2.4, 40, -19],
			target = source.map((p) => transformPoint(m, p.x, p.y));
		const recovered = fitSimilarity(source, target);
		for (let i = 0; i < 6; i++) expect(recovered[i]).toBeCloseTo(m[i], 10);
	});
	test("reference landmarks land at authored margin and pixel offset", () => {
		const points = Array.from({ length: 106 }, (_, i) => ({
			x: alignment.template[i * 2] * 170 + 340,
			y: alignment.template[i * 2 + 1] * 170 + 220,
		}));
		const matrix = invertAffine(alignFace(points, alignment));
		const scale = 320 / 1.75;
		points.forEach((p, i) => {
			const q = transformPoint(matrix, p.x, p.y);
			expect(q.x).toBeCloseTo((alignment.template[i * 2] + 0.375) * scale, 8);
			expect(q.y).toBeCloseTo(
				(alignment.template[i * 2 + 1] + 0.375) * scale + 31,
				8,
			);
		});
	});
	test("inverse affine roundtrips a non-axis-aligned crop", () => {
		const m: Affine = [2.3, 0.6, -0.6, 2.3, 300, -70],
			inverse = invertAffine(m);
		for (const p of [
			{ x: 0, y: 0 },
			{ x: 319, y: 319 },
			{ x: 121.7, y: 9.2 },
		]) {
			const q = transformPoint(m, p.x, p.y),
				r = transformPoint(inverse, q.x, q.y);
			expect(r.x).toBeCloseTo(p.x, 10);
			expect(r.y).toBeCloseTo(p.y, 10);
		}
	});
	test("NHWC color order, byte rounding, and black border", () => {
		const pixels = {
			width: 2,
			height: 2,
			data: new Uint8ClampedArray([
				255, 0, 0, 255, 0, 255, 0, 255, 0, 0, 255, 255, 255, 255, 255, 255,
			]),
		} as ImageData;
		expect(Array.from(sampleAlignedRGB(pixels, [1, 0, 0, 1, 0, 0], 2))).toEqual(
			[1, -1, -1, -1, 1, -1, -1, -1, 1, 1, 1, 1],
		);
		expect(
			Array.from(sampleAlignedRGB(pixels, [1, 0, 0, 1, -5, -5], 1)),
		).toEqual([-1, -1, -1]);
		const middle = sampleAlignedRGB(pixels, [1, 0, 0, 1, 0.5, 0.5], 1);
		for (const v of middle) expect(v).toBeCloseTo(128 / 127.5 - 1, 7);
	});
	test("rejects degenerate landmarks", () => {
		expect(() =>
			fitSimilarity(
				[
					{ x: 1, y: 1 },
					{ x: 1, y: 1 },
				],
				[
					{ x: 0, y: 0 },
					{ x: 2, y: 2 },
				],
			),
		).toThrow();
	});
});

test("model RGBA quantization matches native MobileCV for 4912 synthetic boundary/range values", () => {
	const actual = quantizeGanRGBA(new Float32Array(nativeGanU8.input));
	expect(Array.from(actual)).toEqual(nativeGanU8.output);
});
