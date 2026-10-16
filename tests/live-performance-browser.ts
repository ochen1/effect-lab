import { createPipeline } from "../src/pipeline";
import { DEFAULT_SETTINGS } from "../src/ui-types";
import { getIndependentSkinStatus } from "../src/independent-skin";
const state = document.querySelector("#state")!;
const api = window as unknown as { performanceBench: any };
let source: HTMLCanvasElement;
let current: HTMLCanvasElement;
let pipeline: Awaited<ReturnType<typeof createPipeline>>;
const settings = {
	...DEFAULT_SETTINGS,
	inferenceEngine: "independent" as const,
};
api.performanceBench = {
	ready: false,
	result: null,
	async run(count = 10, realtime = false) {
		state.textContent = "Benchmark running";
		const durations: number[] = [];
		let previous = performance.now();
		let frames = 0;
		let maxGap = 0;
		const heartbeat = setInterval(() => {
			const now = performance.now();
			maxGap = Math.max(maxGap, now - previous);
			previous = now;
		}, 16);
		const start = performance.now();
		try {
			for (let i = 0; i < count; i++) {
				const begin = performance.now();
				const result = await pipeline.processFrame(
					source,
					source.width,
					source.height,
					settings,
					{ maxDimension: 720, ...{ realtime } },
				);
				result.width = result.height = 1;
				durations.push(performance.now() - begin);
				frames++;
				await new Promise(requestAnimationFrame);
			}
		} finally {
			clearInterval(heartbeat);
		}
		const elapsed = performance.now() - start;
		const sorted = durations.slice().sort((a, b) => a - b);
		const report = {
			realtime,
			frames,
			elapsedMs: elapsed,
			fps: (frames * 1000) / elapsed,
			meanProcessingMs: durations.reduce((a, b) => a + b, 0) / frames,
			p50Ms: sorted[Math.floor(sorted.length * 0.5)],
			p95Ms:
				sorted[Math.min(sorted.length - 1, Math.floor(sorted.length * 0.95))],
			maxMainThreadGapMs: maxGap,
			skin: getIndependentSkinStatus(),
		};
		api.performanceBench.result = report;
		state.textContent = "Benchmark completed";
		document.querySelector("#report")!.textContent = JSON.stringify(
			report,
			null,
			2,
		);
		return report;
	},
};
api.performanceBench.motion = async (count = 90) => {
	const currentSettings = {
		...settings,
		colorEnabled: false,
		makeupEnabled: false,
	};
	const frame = document.createElement("canvas");
	frame.width = source.width;
	frame.height = source.height;
	const ctx = frame.getContext("2d")!;
	let markerErrors = 0;
	const start = performance.now();
	for (let i = 0; i < count; i++) {
		ctx.setTransform(1, 0, 0, 1, 0, 0);
		ctx.fillStyle = "#777";
		ctx.fillRect(0, 0, frame.width, frame.height);
		const angle = Math.sin(i * 0.04) * 0.06,
			shift = Math.sin(i * 0.06) * 10;
		ctx.translate(frame.width / 2 + shift, frame.height / 2);
		ctx.rotate(angle);
		ctx.drawImage(source, -frame.width / 2, -frame.height / 2);
		ctx.setTransform(1, 0, 0, 1, 0, 0);
		const marker = [(i * 17) % 256, (i * 31) % 256, (i * 43) % 256];
		ctx.fillStyle = `rgb(${marker.join(",")})`;
		ctx.fillRect(0, 0, 8, 8);
		const result = await pipeline.processFrame(
			frame,
			frame.width,
			frame.height,
			currentSettings,
			{ maxDimension: 720, realtime: true },
		);
		const pixel = result.getContext("2d")!.getImageData(2, 2, 1, 1).data;
		if (marker.some((v, k) => Math.abs(v - pixel[k]) > 1)) markerErrors++;
		current?.remove();
		current = result;
		document.body.append(result);
		await new Promise(requestAnimationFrame);
	}
	const report = {
		frames: count,
		fps: (count * 1000) / (performance.now() - start),
		markerErrors,
		live: pipeline.getRealtimeSkinStats(),
	};
	api.performanceBench.motionResult = report;
	document.querySelector("#report")!.textContent = JSON.stringify(
		report,
		null,
		2,
	);
	state.textContent = "Motion completed";
	return report;
};
document.querySelector<HTMLInputElement>("#input")!.onchange = async (
	event,
) => {
	const file = (event.target as HTMLInputElement).files?.[0];
	if (!file) return;
	try {
		state.textContent = "Loading";
		const image = await createImageBitmap(file);
		source = document.createElement("canvas");
		const scale = Math.min(1, 720 / image.width, 720 / image.height);
		source.width = Math.round(image.width * scale);
		source.height = Math.round(image.height * scale);
		source
			.getContext("2d")!
			.drawImage(image, 0, 0, source.width, source.height);
		image.close();
		pipeline = await createPipeline();
		await pipeline.warm(undefined, settings);
		const result = await pipeline.processFrame(
			source,
			source.width,
			source.height,
			settings,
			{ maxDimension: 720, primeRealtime: true },
		);
		result.width = result.height = 1;
		api.performanceBench.ready = true;
		state.textContent = "Ready";
	} catch (e) {
		state.textContent = String(e);
	}
};

// After warm-up, losing/reacquiring the face must not await a second skin job.
api.performanceBench.reacquire = async () => {
	const blank = document.createElement("canvas");
	blank.width = source.width;
	blank.height = source.height;
	blank.getContext("2d")!.fillRect(0, 0, blank.width, blank.height);
	const timings = [];
	for (const input of [source, blank, source, source]) {
		const start = performance.now();
		const output = await pipeline.processFrame(
			input,
			input.width,
			input.height,
			settings,
			{ maxDimension: 720, realtime: true },
		);
		output.width = output.height = 1;
		timings.push(performance.now() - start);
	}
	return { timings, live: pipeline.getRealtimeSkinStats() };
};

api.performanceBench.prime = async () => {
	const out = await pipeline.processFrame(
		source,
		source.width,
		source.height,
		settings,
		{ maxDimension: 720, primeRealtime: true },
	);
	out.width = out.height = 1;
};
