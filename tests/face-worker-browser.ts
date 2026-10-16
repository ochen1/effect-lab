import { createIndependentFaceRuntime } from "../src/independent-face";
import { createIndependentFaceWorkerClient } from "../src/independent-face-worker-client";
const api = window as any;
const canvas = document.createElement("canvas");
let direct: ReturnType<typeof createIndependentFaceRuntime>,
	worker: ReturnType<typeof createIndependentFaceWorkerClient>;
api.faceBench = { ready: false };
document.querySelector<HTMLInputElement>("#input")!.onchange = async (
	event,
) => {
	try {
		const file = (event.target as HTMLInputElement).files![0];
		const image = await createImageBitmap(file);
		const scale = Math.min(1, 720 / image.width, 720 / image.height);
		canvas.width = Math.round(image.width * scale);
		canvas.height = Math.round(image.height * scale);
		canvas
			.getContext("2d", { willReadFrequently: true })!
			.drawImage(image, 0, 0, canvas.width, canvas.height);
		image.close();
		direct = createIndependentFaceRuntime();
		worker = createIndependentFaceWorkerClient();
		await direct.load();
		await worker.load();
		api.faceBench.ready = true;
		document.querySelector("#state")!.textContent = "Ready";
	} catch (error) {
		document.querySelector("#state")!.textContent = String(error);
	}
};
api.faceBench.run = async () => {
	const frame = document.createElement("canvas");
	frame.width = canvas.width;
	frame.height = canvas.height;
	const ctx = frame.getContext("2d", { willReadFrequently: true })!;
	let maxDistance = 0,
		countMismatch = 0,
		facesChecked = 0;
	const directMs: number[] = [],
		workerMs: number[] = [],
		directGaps: number[] = [],
		workerGaps: number[] = [];
	for (let i = 0; i < 24; i++) {
		ctx.fillStyle = "#777";
		ctx.fillRect(0, 0, frame.width, frame.height);
		ctx.drawImage(canvas, Math.sin(i * 0.3) * 12, Math.cos(i * 0.3) * 8);
		const pixels = ctx.getImageData(0, 0, frame.width, frame.height);
		const timestamp = i === 0 || i === 23 ? undefined : i * 33;
		let timer = performance.now(),
			gap = 0;
		const beat = setInterval(() => {
			const now = performance.now();
			gap = Math.max(gap, now - timer);
			timer = now;
		}, 1);
		await new Promise((r) => setTimeout(r, 8));
		gap = 0;
		timer = performance.now();
		let start = performance.now();
		const a = await direct.detect(frame, undefined, timestamp);
		directMs.push(performance.now() - start);
		await new Promise((r) => setTimeout(r, 8));
		directGaps.push(gap);
		gap = 0;
		timer = performance.now();
		start = performance.now();
		const b = await worker.detect(pixels, undefined, timestamp);
		workerMs.push(performance.now() - start);
		await new Promise((r) => setTimeout(r, 8));
		workerGaps.push(gap);
		clearInterval(beat);
		if (a.length !== b.length) countMismatch++;
		for (let j = 0; j < Math.min(a.length, b.length); j++) {
			facesChecked++;
			const ap = [...a[j].points, ...a[j].extra!],
				bp = [...b[j].points, ...b[j].extra!];
			for (let k = 0; k < ap.length; k++)
				maxDistance = Math.max(
					maxDistance,
					Math.hypot(ap[k].x - bp[k].x, ap[k].y - bp[k].y),
				);
		}
	}
	const percentile = (xs: number[], p: number) =>
		xs.slice().sort((a, b) => a - b)[
			Math.min(xs.length - 1, Math.floor(xs.length * p))
		];
	const report = {
		facesChecked,
		countMismatch,
		maxLandmarkDistancePx: maxDistance,
		direct: {
			p50Ms: percentile(directMs, 0.5),
			p95Ms: percentile(directMs, 0.95),
			p95HeartbeatGapMs: percentile(directGaps, 0.95),
		},
		worker: {
			p50Ms: percentile(workerMs, 0.5),
			p95Ms: percentile(workerMs, 0.95),
			p95HeartbeatGapMs: percentile(workerGaps, 0.95),
		},
		passed: facesChecked > 0 && countMismatch === 0 && maxDistance < 0.01,
	};
	api.faceBench.report = report;
	document.querySelector("#report")!.textContent = JSON.stringify(
		report,
		null,
		2,
	);
	document.querySelector("#state")!.textContent = report.passed
		? "Passed"
		: "Failed";
	return report;
};
