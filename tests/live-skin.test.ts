import { expect, test } from "bun:test";
import {
	createLiveSkin,
	composeAffine,
	trackSkinTransform,
} from "../src/live-skin";
import { transformPoint, type Affine } from "../src/alignment";
import type { Face } from "../src/face";
import type { SkinPatch } from "../src/compositor";
const face: Face = {
	box: { x: 100, y: 100, width: 100, height: 140 },
	score: 1,
	points: Array.from({ length: 106 }, (_, i) => ({
		x: 150 + 50 * Math.cos(i * 0.17),
		y: 170 + 70 * Math.sin(i * 0.17),
	})),
};
const input = { width: 400, height: 400 } as HTMLCanvasElement;
const patch: SkinPatch = {
	rgba: new Float32Array(16),
	size: 2,
	cropToSource: [80, 0, 0, 80, 70, 90],
	kind: "quadratic-blend",
	maskMode: "alpha-only",
};
function harness() {
	let now = 0,
		calls = 0;
	let complete!: (p: SkinPatch) => void;
	let fail!: (e: Error) => void;
	const processor = {
		busy: false,
		process() {
			calls++;
			processor.busy = true;
			return new Promise<SkinPatch>((ok, no) => {
				complete = (p) => {
					processor.busy = false;
					ok(p);
				};
				fail = (e) => {
					processor.busy = false;
					no(e);
				};
			});
		},
	};
	return {
		cache: createLiveSkin(processor, () => now),
		processor,
		complete: () => complete(patch),
		fail: () => fail(new Error("model failed")),
		time: (v: number) => (now = v),
		calls: () => calls,
	};
}
test("preview tracks a learned field without queuing or waiting for each inference", async () => {
	const h = harness();
	const first = h.cache.get(input, face, [0.5, 0.5, 0.5], true);
	h.complete();
	expect((await first)?.rgba).toBe(patch.rgba);
	const m: Affine = [1, 0, 0, 1, 8, 5];
	const moved = {
		...face,
		box: { ...face.box, x: 108, y: 105 },
		points: face.points.map((p) => transformPoint(m, p.x, p.y)),
	};
	h.time(50);
	const fast = await h.cache.get(input, moved, [0.5, 0.5, 0.5]);
	expect(fast?.rgba).toBe(patch.rgba);
	expect(fast?.cropToSource[4]).toBeCloseTo(78, 8);
	expect(fast?.cropToSource[5]).toBeCloseTo(95, 8);
	await h.cache.get(input, moved, [0.5, 0.5, 0.5]);
	expect(h.calls()).toBe(2);
	expect(h.cache.getDiagnostics().inFlight).toBe(true);
	h.complete();
	await h.cache.drain();
});
test("source/face reset discards in-flight output and never revives the old map", async () => {
	const h = harness();
	await h.cache.get(input, face);
	h.cache.reset();
	h.complete();
	await h.cache.drain();
	expect(h.cache.getDiagnostics().hasMap).toBe(false);
	expect(h.cache.getDiagnostics().discarded).toBe(1);
	const next = await h.cache.get(input, face);
	expect(next).toBeUndefined();
	h.complete();
	await h.cache.drain();
});
test("scene illumination changes, stale maps and large shape changes are not reused", async () => {
	const h = harness();
	const first = h.cache.get(input, face, [0.4, 0.4, 0.4], true);
	h.complete();
	await first;
	expect(await h.cache.get(input, face, [0.8, 0.8, 0.8])).toBeUndefined();
	h.complete();
	await h.cache.drain();
	h.time(6000);
	expect(await h.cache.get(input, face, [0.8, 0.8, 0.8])).toBeUndefined();
	h.complete();
	await h.cache.drain();
	const distorted = {
		...face,
		points: face.points.map((p, i) => (i > 80 ? { x: p.x + 60, y: p.y } : p)),
	};
	expect(trackSkinTransform(face, distorted)).toBeNull();
});
test("worker failures surface, and affine composition preserves crop-space geometry", async () => {
	const h = harness();
	await h.cache.get(input, face);
	h.fail();
	await expect(h.cache.drain()).rejects.toThrow("model failed");
	const a: Affine = [0, 2, -2, 0, 10, 30],
		b: Affine = [3, 0, 0, 4, 20, 25];
	const combined = composeAffine(a, b);
	const p = transformPoint(b, 5, 6);
	expect(transformPoint(combined, 5, 6)).toEqual(transformPoint(a, p.x, p.y));
});

test("first frame after reset drains the obsolete job and awaits a fresh map", async () => {
	const h = harness();
	await h.cache.get(input, face);
	h.cache.reset();
	let finished = false;
	const ready = h.cache.get(input, face, [], true).then((value) => {
		finished = true;
		return value;
	});
	h.complete();
	await Promise.resolve();
	await Promise.resolve();
	await Promise.resolve();
	await Promise.resolve();
	expect(finished).toBe(false);
	expect(h.calls()).toBe(2);
	h.complete();
	expect((await ready)?.rgba).toBe(patch.rgba);
});

test("a fresh paused-video result primes playback without waiting for another model run", async () => {
	const h = harness();
	h.cache.seed(input, face, patch, [0.5, 0.5, 0.5]);
	const immediate = await h.cache.get(input, face, [0.5, 0.5, 0.5]);
	expect(immediate?.rgba).toBe(patch.rgba);
	expect(h.calls()).toBe(1);
	h.complete();
	await h.cache.drain();
});

test("a slow CPU fallback can reuse a newly completed field, but never indefinitely", async () => {
	const h = harness();
	const initial = h.cache.get(input, face, [], true);
	h.time(6000);
	h.complete();
	await initial;
	h.time(6100);
	expect((await h.cache.get(input, face))?.rgba).toBe(patch.rgba);
	h.time(16000);
	expect(await h.cache.get(input, face)).toBeUndefined();
	h.complete();
	await h.cache.drain();
});

test("GPU field updates leave rendering time while CPU fallback is not throttled", async () => {
	const h = harness();
	Object.assign(h.processor, {
		getStatus: () => ({ segmentationBackend: "webgpu" }),
	});
	const first = h.cache.get(input, face, [], true);
	h.time(100);
	h.complete();
	await first;
	h.time(150);
	expect((await h.cache.get(input, face))?.rgba).toBe(patch.rgba);
	expect(h.calls()).toBe(1);
	h.time(260);
	await h.cache.get(input, face);
	expect(h.calls()).toBe(2);
	h.complete();
	await h.cache.drain();
});
