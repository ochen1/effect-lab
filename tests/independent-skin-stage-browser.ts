import * as ort from "onnxruntime-web/webgpu";
import { createIndependentFaceRuntime } from "../src/independent-face";
import {
	compareIndependentCorrection,
	independentBlendPatch,
	quantizeIndependentPatch,
	independentSkinCrop,
	independentSegmentationDiagnostic,
	independentSkinDiagnostic,
} from "../src/independent-skin";

const SIZE = 512,
	PIXELS = SIZE * SIZE;
type Sessions = {
	smoothing: ort.InferenceSession;
	segmentation: ort.InferenceSession;
};
const ui = document.querySelector<HTMLPreElement>("#status")!;
const report = {
	state: "idle",
	stages: [] as unknown[],
	cases: [] as unknown[],
};
Object.assign(window, { skinStageReport: report });
function status(message: string) {
	ui.textContent = message;
}
async function infer(
	session: ort.InferenceSession,
	name: string,
	rgb: Float32Array,
) {
	const input = new ort.Tensor("float32", rgb, [1, 3, SIZE, SIZE]);
	let values: ort.InferenceSession.OnnxValueMapType | undefined;
	const started = performance.now();
	try {
		values = await session.run({ rgb: input });
		return {
			values: new Float32Array((await values[name].getData()) as Float32Array),
			milliseconds: performance.now() - started,
		};
	} finally {
		input.dispose();
		if (values) for (const tensor of Object.values(values)) tensor.dispose();
	}
}
function compare(cpu: Float32Array, gpu: Float32Array) {
	let sum = 0,
		max = 0,
		overOneByte = 0,
		cpuNonfinite = 0,
		gpuNonfinite = 0;
	for (let i = 0; i < cpu.length; i++) {
		if (!Number.isFinite(cpu[i])) cpuNonfinite++;
		if (!Number.isFinite(gpu[i])) gpuNonfinite++;
		const delta = Math.abs(cpu[i] - gpu[i]);
		sum += delta;
		max = Math.max(max, delta);
		if (delta * 255 > 1) overOneByte++;
	}
	return {
		maximum: max,
		mean: sum / cpu.length,
		overOneByte,
		values: cpu.length,
		cpuNonfinite,
		gpuNonfinite,
	};
}
function corrected(rgb: Float32Array, blend: Float32Array, mask: Float32Array) {
	const value = new Float32Array(rgb.length);
	for (let i = 0; i < value.length; i++) {
		const pixel = i % PIXELS,
			x = (rgb[i] + 1) * 0.5;
		value[i] = x + 1.4 * (blend[i] - 0.5) * x * (1 - x) * mask[pixel];
	}
	return value;
}
async function measure() {
	report.state = "loading";
	report.stages.length = report.cases.length = 0;
	ort.env.wasm.wasmPaths = new URL("/vendor/onnx/", location.href).href;
	ort.env.wasm.numThreads = 1;
	ort.env.wasm.proxy = false;
	const sessions: Partial<Record<"wasm" | "webgpu", Sessions>> = {};
	const quick = new URLSearchParams(location.search).has("quick");
	const face = createIndependentFaceRuntime();
	try {
		for (const model of ["smoothing", "segmentation"] as const) {
			status(`Loading ${model}…`);
			const bytes = new Uint8Array(
				await (
					await fetch(`/models/independent/skin-${model}.onnx`)
				).arrayBuffer(),
			);
			const candidateUrl =
				model === "segmentation"
					? new URLSearchParams(location.search).get("candidate")
					: null;
			const candidate = candidateUrl
				? new Uint8Array(await (await fetch(candidateUrl)).arrayBuffer())
				: bytes;
			const diagnosticOutputs: Float32Array[] = [];
			for (const backend of ["wasm", "webgpu"] as const) {
				if (quick && model === "smoothing" && backend === "wasm") continue;
				const session = await ort.InferenceSession.create(
					backend === "webgpu" ? candidate : bytes,
					{
						executionProviders: [backend],
						graphOptimizationLevel:
							model === "segmentation" && candidateUrl ? "disabled" : "all",
						preferredOutputLocation: "cpu",
					},
				);
				(sessions[backend] ??= {} as Sessions)[model] = session;
				const input =
					model === "smoothing"
						? independentSkinDiagnostic()
						: independentSegmentationDiagnostic();
				const output = model === "smoothing" ? "blend" : "skin";
				diagnosticOutputs.push((await infer(session, output, input)).values);
				const times: number[] = [];
				for (let repeat = 0; repeat < (quick ? 1 : 3); repeat++)
					times.push((await infer(session, output, input)).milliseconds);
				report.stages.push({ model, backend, warmMilliseconds: times });
			}
			if (diagnosticOutputs.length === 2)
				report.stages.push({
					model,
					diagnostic: compare(diagnosticOutputs[0], diagnosticOutputs[1]),
				});
		}
		report.state = "comparing";
		const files = document.querySelector<HTMLInputElement>("#photos")!.files;
		for (let index = 0; index < (files?.length ?? 0); index++) {
			const image = await createImageBitmap(files![index]);
			const canvas = document.createElement("canvas");
			canvas.width = image.width;
			canvas.height = image.height;
			canvas.getContext("2d")!.drawImage(image, 0, 0);
			image.close();
			const faces = await face.detect(canvas);
			if (!faces.length) {
				report.cases.push({ index, error: "No face" });
				continue;
			}
			const roi = independentSkinCrop(
				faces[0].box,
				canvas.width,
				canvas.height,
			);
			const crop = document.createElement("canvas");
			crop.width = crop.height = SIZE;
			const ctx = crop.getContext("2d", { willReadFrequently: true })!;
			for (const move of [0, -1, 1]) {
				status(`Photo ${index + 1}, translated frame ${move}…`);
				const scale = move === 0 ? 1 : 1.03;
				ctx.clearRect(0, 0, SIZE, SIZE);
				ctx.drawImage(
					canvas,
					roi.x + move * roi.width * 0.018,
					roi.y - move * roi.height * 0.012,
					roi.width * scale,
					roi.height * scale,
					0,
					0,
					SIZE,
					SIZE,
				);
				const rgba = ctx.getImageData(0, 0, SIZE, SIZE).data;
				const rgb = new Float32Array(PIXELS * 3);
				for (let i = 0; i < PIXELS; i++)
					for (let c = 0; c < 3; c++)
						rgb[c * PIXELS + i] = rgba[i * 4 + c] / 127.5 - 1;
				const results: Record<
					string,
					{ blend: Float32Array; mask: Float32Array }
				> = {};
				for (const backend of ["webgpu", "wasm"] as const) {
					const blend =
						quick && backend === "wasm"
							? { values: results.webgpu.blend }
							: await infer(sessions[backend]!.smoothing, "blend", rgb);
					const mask = await infer(
						sessions[backend]!.segmentation,
						"skin",
						rgb,
					);
					results[backend] = { blend: blend.values, mask: mask.values };
				}
				report.cases.push({
					correctionField: compareIndependentCorrection(
						quantizeIndependentPatch(
							independentBlendPatch(
								results.webgpu.blend,
								results.webgpu.mask,
								[1, 0, 0, 1, 0, 0],
							).rgba,
						),
						quantizeIndependentPatch(
							independentBlendPatch(
								results.wasm.blend,
								results.wasm.mask,
								[1, 0, 0, 1, 0, 0],
							).rgba,
						),
					),
					index,
					move,
					mask: compare(results.wasm.mask, results.webgpu.mask),
					blend: compare(results.wasm.blend, results.webgpu.blend),
					correctedRgb: compare(
						corrected(rgb, results.wasm.blend, results.wasm.mask),
						corrected(rgb, results.webgpu.blend, results.webgpu.mask),
					),
				});
			}
			canvas.width = canvas.height = crop.width = crop.height = 1;
		}
		report.state = "complete";
	} catch (error) {
		Object.assign(report, { state: "error", error: String(error) });
	} finally {
		await face.dispose();
		for (const sessionsForBackend of Object.values(sessions))
			for (const session of Object.values(sessionsForBackend))
				await session.release();
		ui.textContent = JSON.stringify(report, null, 2);
	}
}
document.querySelector("#start")!.addEventListener("click", () => {
	void measure();
});
