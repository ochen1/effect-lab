import { DEFAULT_SETTINGS } from "../src/ui-types";
import type { Compositor, SkinPatch } from "../src/compositor";
/** Synthetic-only before/after benchmark; fingerprints cover every output byte. */
export async function runReuseBench(
	compositor: Compositor,
	count = 60,
	realtime = true,
) {
	const source = document.createElement("canvas");
	const rgba = new Float32Array(512 * 512 * 4);
	for (let i = 0; i < rgba.length; i++) rgba[i] = ((i * 17) % 251) / 125 - 1;
	const patch: SkinPatch = {
		rgba,
		size: 512,
		cropToSource: [1, 0, 0, 1, 0, 0],
		maskMode: "alpha-only",
		kind: "quadratic-blend",
	};
	const timing: number[] = [],
		hashes: number[] = [];
	const counts = {
		createTexture: 0,
		deleteTexture: 0,
		texImage2D: 0,
		texSubImage2D: 0,
	};
	const proto = WebGL2RenderingContext.prototype;
	const originals = new Map<string, Function>();
	for (const key of Object.keys(counts) as (keyof typeof counts)[]) {
		const original = proto[key];
		originals.set(key, original);
		(proto as any)[key] = function (...args: unknown[]) {
			counts[key]++;
			return Reflect.apply(original, this, args);
		};
	}
	try {
		for (let i = 0; i < count; i++) {
			const w = i < count - 3 ? 540 : [720, 257, 2100][i - (count - 3)];
			const h = i < count - 3 ? 720 : [540, 193, 257][i - (count - 3)];
			if (source.width !== w) source.width = w;
			if (source.height !== h) source.height = h;
			const ctx = source.getContext("2d")!;
			ctx.fillStyle = `rgb(${(i * 13) % 256},${(i * 23) % 256},${(i * 37) % 256})`;
			ctx.fillRect(0, 0, w, h);
			patch.cropToSource = [1, 0, 0, 1, i % 20, i % 15];
			if (i === Math.floor(count / 2)) patch.rgba = rgba.map((v) => -v);
			const start = performance.now();
			const out = await compositor.render(
				source,
				w,
				h,
				[patch],
				[],
				DEFAULT_SETTINGS,
				{ realtime },
			);
			timing.push(performance.now() - start);
			const pixels = out.getContext("2d")!.getImageData(0, 0, w, h).data;
			let hash = 2166136261;
			for (const byte of pixels) hash = Math.imul(hash ^ byte, 16777619);
			hashes.push(hash >>> 0);
			out.width = out.height = 1;
			await new Promise((r) => setTimeout(r, 0));
		}
	} finally {
		for (const [key, original] of originals) (proto as any)[key] = original;
	}
	const sorted = timing.slice(2, -3).sort((a, b) => a - b);
	return {
		counts,
		hashes,
		p50Ms: sorted[Math.floor(sorted.length * 0.5)],
		p95Ms: sorted[Math.floor(sorted.length * 0.95)],
		frames: count,
	};
}
