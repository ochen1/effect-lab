import { createCompositor, getCompositorDiagnostics } from "../src/compositor";
const promise = (async () => {
	const start = performance.now();
	const compositor = await createCompositor("../effects/boy-ii/");
	const baseline = getCompositorDiagnostics();
	compositor.dispose();
	// Inject a synthetic broken copy shader to prove this checks pixels, not just GL status.
	const original = WebGL2RenderingContext.prototype.shaderSource;
	let fault;
	try {
		WebGL2RenderingContext.prototype.shaderSource = function (shader, source) {
			return original.call(
				this,
				shader,
				source.replace(
					"void main(){o_FragColor=sourceAt(v2f_v_texCoord);}",
					"void main(){o_FragColor=vec4(1.,0.,1.,1.);}",
				),
			);
		};
		const broken = await createCompositor("../effects/boy-ii/");
		fault = getCompositorDiagnostics();
		broken.dispose();
	} finally {
		WebGL2RenderingContext.prototype.shaderSource = original;
	}
	const report = {
		baseline,
		faultDetected:
			fault?.status === "failed" &&
			(fault.checks.identity?.maxError ?? 0) > 200,
		elapsedMilliseconds: Math.round(performance.now() - start),
	};
	document.querySelector("#state")!.textContent =
		baseline?.status === "passed" && report.faultDetected
			? "CPU comparisons pass and synthetic driver failure is detected"
			: "Investigate driver validation";
	document.querySelector("#report")!.textContent = JSON.stringify(
		report,
		null,
		2,
	);
	return report;
})();
(
	window as unknown as { compositorDriverValidation: Promise<unknown> }
).compositorDriverValidation = promise;
