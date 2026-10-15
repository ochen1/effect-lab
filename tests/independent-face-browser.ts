import { createIndependentFaceRuntime } from "../src/independent-face";
import { createFaceRuntime, type Face } from "../src/face";

const independent = createIndependentFaceRuntime();
const original = createFaceRuntime();
const input = document.querySelector<HTMLInputElement>("#photo")!;
const canvas = document.querySelector<HTMLCanvasElement>("#view")!;
const status = document.querySelector<HTMLPreElement>("#status")!;
let source: HTMLCanvasElement;
let originalSource: HTMLCanvasElement;
let faces: [Face[], Face[]];
input.onchange = async () => {
	if (!input.files?.[0]) return;
	const bitmap = await createImageBitmap(input.files[0]);
	const appSize =
		new URLSearchParams(location.search).get("analysis") === "app";
	const scale = appSize
		? Math.min(1, 720 / bitmap.width, 1280 / bitmap.height)
		: Math.min(1, 1280 / Math.max(bitmap.width, bitmap.height));
	source = document.createElement("canvas");
	source.width = Math.round(bitmap.width * scale);
	source.height = Math.round(bitmap.height * scale);
	source
		.getContext("2d", { willReadFrequently: true })!
		.drawImage(bitmap, 0, 0, source.width, source.height);
	originalSource = source;
	if (appSize) {
		const originalScale = Math.min(1, 360 / bitmap.width, 640 / bitmap.height);
		originalSource = document.createElement("canvas");
		originalSource.width = Math.round(bitmap.width * originalScale);
		originalSource.height = Math.round(bitmap.height * originalScale);
		originalSource
			.getContext("2d", { willReadFrequently: true })!
			.drawImage(bitmap, 0, 0, originalSource.width, originalSource.height);
	}
	bitmap.close();
	canvas.width = source.width;
	canvas.height = source.height;
	canvas.getContext("2d")!.drawImage(source, 0, 0);
	status.textContent = "Ready";
};
const measure = (
	a: Face,
	b: Face,
	begin: number,
	end: number,
	base = false,
) => {
	const aPoints = base ? a.points : a.extra!,
		bPoints = base ? b.points : b.extra!;
	const distances = aPoints
		.slice(begin, end)
		.map((p, i) =>
			Math.hypot(p.x - bPoints[begin + i].x, p.y - bPoints[begin + i].y),
		);
	const interocular = Math.hypot(
		b.points[104].x - b.points[105].x,
		b.points[104].y - b.points[105].y,
	);
	return {
		meanPixels: distances.reduce((a, b) => a + b, 0) / distances.length,
		maxPixels: Math.max(...distances),
		meanInterocularFraction:
			distances.reduce((a, b) => a + b, 0) / distances.length / interocular,
	};
};
async function run() {
	if (!source) throw new Error("Choose an image first.");
	status.textContent = "Loading and running both trackers…";
	await independent.load();
	await original.load();
	let start = performance.now();
	const a = await independent.detect(source);
	const independentMs = performance.now() - start;
	start = performance.now();
	const originalFaces = await original.detect(originalSource);
	const originalMs = performance.now() - start;
	const sx = source.width / originalSource.width,
		sy = source.height / originalSource.height;
	const b = originalFaces.map((face) => ({
		...face,
		box: {
			x: face.box.x * sx,
			y: face.box.y * sy,
			width: face.box.width * sx,
			height: face.box.height * sy,
		},
		points: face.points.map((p) => ({ x: p.x * sx, y: p.y * sy })),
		extra: face.extra!.map((p) => ({ x: p.x * sx, y: p.y * sy })),
	}));
	faces = [a, b];
	const matches = a.map((face) => {
		const center = (f: Face) => ({
			x: f.box.x + f.box.width / 2,
			y: f.box.y + f.box.height / 2,
		});
		const p = center(face);
		const match = b.toSorted(
			(u, v) =>
				Math.hypot(center(u).x - p.x, center(u).y - p.y) -
				Math.hypot(center(v).x - p.x, center(v).y - p.y),
		)[0];
		return match
			? {
					jaw: measure(face, match, 0, 33, true),
					nose: measure(face, match, 43, 52, true),
					eyes: measure(face, match, 0, 44),
					brows: measure(face, match, 44, 70),
					lips: measure(face, match, 70, 134),
				}
			: null;
	});
	const report = {
		independentFaces: a.length,
		originalFaces: b.length,
		width: source.width,
		height: source.height,
		originalAnalysisWidth: originalSource.width,
		originalAnalysisHeight: originalSource.height,
		independentMs,
		originalMs,
		comparisons: matches,
		note: "Tracker disagreement, not ground-truth error. No private coordinates are exported.",
	};
	const context = canvas.getContext("2d")!;
	context.drawImage(source, 0, 0);
	for (let i = 0; i < faces.length; i++)
		for (const face of faces[i]) {
			context.fillStyle = i === 0 ? "#00ffff" : "#ff00ff";
			for (const p of face.extra!) {
				context.beginPath();
				context.arc(p.x, p.y, 1, 0, 2 * Math.PI);
				context.fill();
			}
		}
	status.textContent = JSON.stringify(report, null, 2);
	return report;
}
document.querySelector<HTMLButtonElement>("#run")!.onclick = () => {
	void run().catch((error) => {
		status.textContent = String(error);
	});
};
Object.assign(window, {
	independentFaceTest: {
		run,
		async video() {
			const times = [];
			for (const timestamp of [0, 33, 66, 0, 33]) {
				const start = performance.now();
				const found = await independent.detect(source, undefined, timestamp);
				times.push({ ms: performance.now() - start, count: found.length });
			}
			return times;
		},
		dispose: async () => {
			await independent.dispose();
			await original.dispose();
		},
	},
});
