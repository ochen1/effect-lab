import { createCompositor, type SkinPatch } from "../src/compositor";
import { DEFAULT_SETTINGS } from "../src/ui-types";
async function test() {
	const c = document.createElement("canvas");
	c.width = 96;
	c.height = 64;
	const context = c.getContext("2d")!;
	const input = context.createImageData(c.width, c.height);
	for (let y = 0; y < c.height; y++)
		for (let x = 0; x < c.width; x++)
			input.data.set([x * 2, y * 3, (x + y) % 256, 255], (y * c.width + x) * 4);
	context.putImageData(input, 0, 0);
	const compositor = await createCompositor("../effects/boy-ii/");
	const checks = [];
	try {
		for (const [map, alpha, strength] of [
			[0.6, 1, 1],
			[0.6, 0, 1],
			[0.6, 1, 0],
			[0.5, 1, 1],
			[0.35, 0.5, 0.7],
		]) {
			const rgba = new Float32Array(8 * 8 * 4);
			for (let i = 0; i < 64; i++)
				rgba.set([map * 2 - 1, map * 2 - 1, map * 2 - 1, alpha * 2 - 1], i * 4);
			const patch: SkinPatch = {
				rgba,
				size: 8,
				cropToSource: [12, 0, 0, 8, 0, 0],
				kind: "quadratic-blend",
				maskMode: "alpha-only",
			};
			const result = await compositor.render(
				c,
				c.width,
				c.height,
				[patch],
				[],
				{
					...DEFAULT_SETTINGS,
					colorEnabled: false,
					makeupEnabled: false,
					skin: strength,
				},
			);
			const actual = result
				.getContext("2d")!
				.getImageData(0, 0, c.width, c.height).data;
			const bytes = new Uint8ClampedArray([map * 255, alpha * 255]);
			const m = bytes[0] / 255,
				a = (bytes[1] / 255) * strength;
			let maxError = 0;
			for (let i = 0; i < input.data.length; i++) {
				const v = input.data[i] / 255;
				const expected =
					i % 4 === 3
						? 255
						: Math.round(
								(v * (1 - a) + ((1 - 2 * m) * v * v + 2 * m * v) * a) * 255,
							);
				maxError = Math.max(maxError, Math.abs(expected - actual[i]));
			}
			checks.push({ map, alpha, strength, maxError, passed: maxError <= 1 });
			result.width = result.height = 1;
		}
	} finally {
		compositor.dispose();
		c.width = c.height = 1;
	}
	const report = {
		syntheticOnly: true,
		checks,
		passed: checks.every((c) => c.passed),
	};
	document.querySelector("#state")!.textContent = report.passed
		? "Passed"
		: "Failed";
	document.querySelector("#report")!.textContent = JSON.stringify(
		report,
		null,
		2,
	);
	return report;
}
(
	window as unknown as { independentCompositeTest: Promise<unknown> }
).independentCompositeTest = test().catch((e) => {
	document.querySelector("#state")!.textContent = String(e);
	return { passed: false, error: String(e) };
});
