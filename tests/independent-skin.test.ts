import { describe, expect, test } from "bun:test";
import {
	independentBlendPatch,
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
