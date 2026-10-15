import { describe, expect, test } from "bun:test";
import {
	independentBlendPatch,
	compareIndependentCorrection,
	quantizeIndependentPatch,
	independentSegmentationDiagnostic,
	independentSkinCrop,
} from "../src/independent-skin";

describe("independent skin ROI and full-resolution blend contract", () => {
	test("expands a face and clips image edges without inventing padded pixels", () => {
		expect(
			independentSkinCrop(
				{ x: 100, y: 120, width: 200, height: 240 },
				600,
				700,
			),
		).toEqual({ x: 20, y: 60, width: 360, height: 360 });
		expect(
			independentSkinCrop({ x: 0, y: 0, width: 200, height: 240 }, 300, 300),
		).toEqual({ x: 0, y: 0, width: 280, height: 300 });
		expect(() =>
			independentSkinCrop({ x: 800, y: 20, width: 20, height: 20 }, 300, 300),
		).toThrow("outside");
		expect(() =>
			independentSkinCrop({ x: NaN, y: 20, width: 20, height: 20 }, 300, 300),
		).toThrow("invalid");
	});
	test("neutral learned blend preserves all input RGB, with no implicit whitening", () => {
		const patch = independentBlendPatch(
			new Float32Array(8 * 8 * 3).fill(0.5),
			new Float32Array(64).fill(1),
			[2, 0, 0, 3, 100, 200],
			8,
		);
		expect(patch.kind).toBe("quadratic-blend");
		expect(patch.maskMode).toBe("alpha-only");
		expect(patch.cropToSource).toEqual([2, 0, 0, 3, 100, 200]);
		for (const source of [0, 0.01, 0.2, 0.8, 1]) {
			const map = (patch.rgba[(4 * 8 + 4) * 4] + 1) / 2;
			expect((1 - 2 * map) * source ** 2 + 2 * map * source).toBe(source);
		}
	});
	test("skin probability limits coverage and crop perimeter has zero alpha", () => {
		const mask = new Float32Array(64).fill(0.25);
		const patch = independentBlendPatch(
			new Float32Array(64 * 3).fill(0.75),
			mask,
			[1, 0, 0, 1, 0, 0],
			8,
		);
		expect(patch.rgba[3]).toBe(-1);
		expect((patch.rgba[(4 * 8 + 4) * 4 + 3] + 1) / 2).toBe(0.25);
		expect(patch.rgba[(4 * 8 + 4) * 4]).toBeCloseTo(0.35);
		mask[2] = NaN;
		expect(() =>
			independentBlendPatch(
				new Float32Array(64 * 3),
				mask,
				[1, 0, 0, 1, 0, 0],
				8,
			),
		).toThrow("invalid skin");
	});
	test("segmentation diagnostic spans background and bright activation", () => {
		const diagnostic = independentSegmentationDiagnostic();
		expect(diagnostic.length).toBe(512 * 512 * 3);
		expect(diagnostic[0]).toBe(-1);
		expect(diagnostic[256 * 512 + 256]).toBe(1);
		expect(diagnostic[512 * 512 + 100]).toBe(diagnostic[100]);
	});
});

test("correction bound covers bilinear alpha/map products at arbitrary source brightness", () => {
	const expected = new Uint8ClampedArray([
		100, 140, 120, 200, 110, 150, 120, 210, 120, 160, 120, 220, 130, 170, 120,
		230,
	]);
	const actual = expected.slice();
	actual[0]++;
	actual[7]++;
	actual[8]--;
	actual[14]++;
	const bound = compareIndependentCorrection(actual, expected, 2);
	expect(bound.maximumOutputByteErrorBound).toBeLessThanOrEqual(1);
	const sample = (bytes: Uint8ClampedArray, c: number, u: number, v: number) =>
		((bytes[c] * (1 - u) + bytes[4 + c] * u) * (1 - v) +
			(bytes[8 + c] * (1 - u) + bytes[12 + c] * u) * v) /
		255;
	for (let uy = 0; uy <= 8; uy++)
		for (let ux = 0; ux <= 8; ux++)
			for (const light of [0, 0.01, 0.2, 0.5, 0.8, 0.99, 1])
				for (let c = 0; c < 3; c++) {
					const u = ux / 8,
						v = uy / 8;
					const render = (bytes: Uint8ClampedArray) =>
						light +
						sample(bytes, 3, u, v) *
							(2 * sample(bytes, c, u, v) - 1) *
							light *
							(1 - light);
					expect(
						Math.abs(render(actual) - render(expected)) * 255,
					).toBeLessThanOrEqual(bound.maximumOutputByteErrorBound + 1e-12);
				}
});

test("NaNs cannot disappear during correction quantization", () => {
	expect(() =>
		quantizeIndependentPatch(new Float32Array([0, 0, NaN, 0])),
	).toThrow("finite");
	expect(() =>
		quantizeIndependentPatch(new Float32Array([0, 0, Infinity, 0])),
	).toThrow("finite");
});
