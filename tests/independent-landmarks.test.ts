import { expect, test } from "bun:test";
import { readFileSync } from "node:fs";
import { mediapipeToFace, sampleContour } from "../src/independent-landmarks";
import { buildTT295Positions } from "../src/makeup-tt295";
import { imageToTT295Coordinates } from "../src/makeup-geometry";

// Google's public canonical authored face; no private photo or model output.
const canonical = readFileSync(
	new URL("../tools/references/mediapipe/canonical-face.obj", import.meta.url),
	"utf8",
)
	.split("\n")
	.filter((line) => line.startsWith("v "))
	.map((line) => {
		const [x, y] = line.split(/\s+/).slice(1).map(Number);
		return { x: x / 20 + 0.5, y: 0.5 - y / 20 };
	});

test("independent geometry preserves authored contour order and key anatomy", () => {
	const face = mediapipeToFace(canonical, 1200, 1600);
	expect(face.points).toHaveLength(106);
	expect(face.extra).toHaveLength(134);
	const pixel = (i: number) => ({
		x: canonical[i].x * 1200,
		y: canonical[i].y * 1600,
	});
	expect(face.points[16]).toEqual(pixel(152)); // chin
	expect(face.points[52]).toEqual(pixel(33)); // outer left eye
	expect(face.points[55]).toEqual(pixel(133)); // inner left eye
	expect(face.extra![0]).toEqual(pixel(33));
	expect(face.extra![11]).toEqual(pixel(133));
	expect(face.extra![22]).toEqual(pixel(263));
	expect(face.extra![33]).toEqual(pixel(362));
	expect(face.extra![77]).toEqual(pixel(0)); // upper lip centre
	expect(face.extra![75]).toEqual(pixel(37)); // cupid peak
	expect(face.extra![79]).toEqual(pixel(267));
	expect(face.extra![92]).toEqual(pixel(13)); // inner upper centre
	expect(face.extra![107]).toEqual(pixel(14)); // inner lower centre
	expect(face.extra![122]).toEqual(pixel(17)); // lower lip centre
	expect(face.extra!.slice(130)).toEqual([61, 291, 78, 308].map(pixel));
	const mesh = buildTT295Positions(
		imageToTT295Coordinates(face.points, 1200, 1600),
		imageToTT295Coordinates(face.extra!, 1200, 1600),
	);
	expect(mesh).toHaveLength(590);
	expect([...mesh].every(Number.isFinite)).toBe(true);
});

test("geometry follows rigid image transforms including roll and scale", () => {
	const base = mediapipeToFace(canonical, 1000, 1000);
	const transform = (p: { x: number; y: number }) => ({
		x: (p.x * 0.8 - p.y * 0.6) * 0.7 + 0.2,
		y: (p.x * 0.6 + p.y * 0.8) * 0.7 - 0.1,
	});
	const rolled = mediapipeToFace(canonical.map(transform), 1000, 1000);
	for (const group of ["points", "extra"] as const)
		for (let i = 0; i < base[group]!.length; i++) {
			const p = base[group]![i];
			const expected = transform({ x: p.x / 1000, y: p.y / 1000 });
			expect(rolled[group]![i].x).toBeCloseTo(expected.x * 1000, 8);
			expect(rolled[group]![i].y).toBeCloseTo(expected.y * 1000, 8);
		}
});

test("closed contours and repeated landmarks stay finite", () => {
	const same = { x: 2, y: 3 };
	expect(sampleContour([same, same, same], 22)).toEqual(Array(22).fill(same));
	expect(sampleContour([same, same, { x: 12, y: 3 }], 3)).toEqual([
		same,
		{ x: 7, y: 3 },
		{ x: 12, y: 3 },
	]);
	expect(() => mediapipeToFace(canonical.slice(0, 100), 100, 100)).toThrow();
	expect(() => mediapipeToFace(canonical, 0, 100)).toThrow();
	expect(() =>
		mediapipeToFace([{ x: NaN, y: 0 }, ...canonical.slice(1)], 100, 100),
	).toThrow();
});
