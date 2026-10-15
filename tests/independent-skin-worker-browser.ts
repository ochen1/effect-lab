import { createIndependentSkinWorkerClient } from "../src/independent-skin-worker-client";
import { createIndependentSkinRuntime } from "../src/independent-skin";
import type { Face } from "../src/face";

const status = document.querySelector<HTMLPreElement>("#status")!;
const source = document.createElement("canvas");
source.width = source.height = 512;
const context = source.getContext("2d", {
	willReadFrequently: true,
	colorSpace: "srgb",
})!;
const image = context.createImageData(512, 512);
for (let y = 0; y < 512; y++)
	for (let x = 0; x < 512; x++) {
		const i = (y * 512 + x) * 4;
		const radial = 1 - ((x - 256) ** 2 + (y - 256) ** 2) / 256 ** 2;
		image.data[i] = Math.max(0, Math.min(255, 165 + radial * 70));
		image.data[i + 1] = Math.max(0, Math.min(255, 120 + radial * 80));
		image.data[i + 2] = Math.max(0, Math.min(255, 100 + radial * 80));
		image.data[i + 3] = 255;
	}
context.putImageData(image, 0, 0);
const face: Face = {
	box: { x: 90, y: 80, width: 300, height: 340 },
	points: [],
	score: 1,
};
async function run() {
	const query = new URLSearchParams(location.search);
	const backend = query.get("backend") === "wasm" ? "wasm" : "auto";
	const worker = createIndependentSkinWorkerClient({ backend });
	let tick = performance.now();
	const gaps: number[] = [];
	const interval = setInterval(() => {
		const now = performance.now();
		gaps.push(now - tick);
		tick = now;
	}, 10);
	try {
		status.textContent = "Warming the models in the worker…";
		const start = performance.now();
		const modelStatus = await worker.warm();
		const warmMs = performance.now() - start;
		gaps.length = 0;
		tick = performance.now();
		const durations: number[] = [];
		let patch;
		for (let i = 0; i < 1; i++) {
			const started = performance.now();
			patch = await worker.process(source, face);
			durations.push(performance.now() - started);
			status.textContent = `Worker frame ${i + 1}/1 complete.`;
		}
		clearInterval(interval);
		const pixels = patch!.rgba;
		worker.dispose();
		status.textContent =
			"Comparing transferred output with the same model on the main thread…";
		const direct = createIndependentSkinRuntime({ backend });
		let reference;
		try {
			reference = await direct.process(source, face);
		} finally {
			await direct.dispose();
		}
		let maxError = 0,
			totalError = 0;
		for (let i = 0; i < pixels.length; i++) {
			const delta = Math.abs(pixels[i] - reference.rgba[i]);
			maxError = Math.max(maxError, delta);
			totalError += delta;
		}
		const sorted = gaps.toSorted((a, b) => a - b);
		const report = {
			syntheticOnly: true,
			platform: navigator.userAgent,
			documentVisibility: document.visibilityState,
			warmMs,
			workerRoundTripMs: durations,
			transferredBytes: pixels.byteLength,
			outputValues: pixels.length,
			workerStatus: modelStatus,
			parity: {
				maximumError: maxError,
				meanError: totalError / pixels.length,
				passed: maxError <= 1e-5,
			},
			heartbeat: {
				targetIntervalMs: 10,
				ticks: gaps.length,
				maximumGapMs: Math.max(...gaps),
				medianGapMs: sorted[Math.floor(sorted.length / 2)] ?? null,
				p95GapMs: sorted[Math.floor(sorted.length * 0.95)] ?? null,
			},
		};
		status.textContent = JSON.stringify(report, null, 2);
		Object.assign(window, { skinWorkerResult: report });
		return report;
	} finally {
		clearInterval(interval);
		worker.dispose();
	}
}
Object.assign(window, { runSkinWorkerTest: run });
document.querySelector<HTMLButtonElement>("#run")!.onclick = () => {
	void run().catch((error) => {
		status.textContent = String(error);
		Object.assign(window, { skinWorkerResult: { error: String(error) } });
	});
};
