import * as ort from "onnxruntime-web/webgpu";
import {
	independentSegmentationDiagnostic,
	independentSkinDiagnostic,
} from "../src/independent-skin";

/** Run from the browser test harness. All comparisons use authored synthetic inputs. */
export async function compareIndependentProviders() {
	ort.env.wasm.numThreads = 1;
	ort.env.wasm.proxy = false;
	ort.env.wasm.wasmPaths = new URL("/vendor/onnx/", location.href).href;
	const report: Record<string, unknown> = {};
	for (const [name, input, output] of [
		["smoothing", independentSkinDiagnostic(), "blend"],
		["segmentation", independentSegmentationDiagnostic(), "skin"],
	] as const) {
		const model = new Uint8Array(
			await (
				await fetch(`/models/independent/skin-${name}.onnx`)
			).arrayBuffer(),
		);
		const arrays: Float32Array[] = [];
		const milliseconds: Record<string, number> = {};
		for (const backend of ["wasm", "webgpu"]) {
			const session = await ort.InferenceSession.create(model, {
				executionProviders: [backend],
				graphOptimizationLevel: "all",
				preferredOutputLocation: "cpu",
			});
			const tensor = new ort.Tensor("float32", input, [1, 3, 512, 512]);
			const start = performance.now();
			const values = await session.run({ rgb: tensor });
			arrays.push(
				new Float32Array((await values[output].getData()) as Float32Array),
			);
			milliseconds[backend] = performance.now() - start;
			for (const value of Object.values(values)) value.dispose();
			tensor.dispose();
			await session.release();
		}
		let total = 0,
			maximum = 0,
			nonfinite = 0,
			beyondByte = 0;
		for (let i = 0; i < arrays[0].length; i++) {
			const difference = Math.abs(arrays[0][i] - arrays[1][i]);
			if (!Number.isFinite(difference)) nonfinite++;
			total += difference;
			maximum = Math.max(maximum, difference);
			if (difference * 255 > 1) beyondByte++;
		}
		report[name] = {
			values: arrays[0].length,
			meanAbsoluteError: total / arrays[0].length,
			maximumAbsoluteError: maximum,
			nonfinite,
			beyondOneByte: beyondByte,
			milliseconds,
		};
	}
	return report;
}
