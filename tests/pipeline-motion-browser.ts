import { createPipeline } from "../src/pipeline";
import { createCompositor } from "../src/compositor";
import { getSkinStatus } from "../src/inference";
import { DEFAULT_SETTINGS } from "../src/ui-types";
const report: Record<string, unknown> = {
	browser: navigator.userAgent,
	syntheticOnly: true,
	realNeuralNetworks: true,
	coverage:
		"Real face detector runs on synthetic no-face frames; skin model is warmed. Moving-face skin inference is outside this fixture.",
};
const off = {
	...DEFAULT_SETTINGS,
	skinEnabled: false,
	colorEnabled: false,
	makeupEnabled: false,
};
const progress = document.querySelector("#state")!;
const ids = new WeakMap<HTMLCanvasElement, number>();
let sequence = 0;
function id(c: HTMLCanvasElement) {
	let n = ids.get(c);
	if (!n) {
		n = ++sequence;
		ids.set(c, n);
	}
	return n;
}
const draw = CanvasRenderingContext2D.prototype.drawImage;
let events: { target: HTMLCanvasElement; source: CanvasImageSource }[] = [];
CanvasRenderingContext2D.prototype.drawImage = function (...args: unknown[]) {
	events.push({ target: this.canvas, source: args[0] as CanvasImageSource });
	return Reflect.apply(draw, this, args);
};
function make(w: number, h: number, color: string) {
	const c = document.createElement("canvas");
	c.width = w;
	c.height = h;
	paint(c, color);
	return c;
}
function paint(c: HTMLCanvasElement, color: string) {
	const ctx = c.getContext("2d")!;
	ctx.fillStyle = color;
	ctx.fillRect(0, 0, c.width, c.height);
}
function pixels(c: HTMLCanvasElement) {
	return c
		.getContext("2d", { willReadFrequently: true })!
		.getImageData(0, 0, c.width, c.height).data;
}
function diff(a: Uint8ClampedArray, b: Uint8ClampedArray) {
	if (a.length !== b.length) return Infinity;
	let max = 0;
	for (let i = 0; i < a.length; i++) max = Math.max(max, Math.abs(a[i] - b[i]));
	return max;
}
function pixel(c: HTMLCanvasElement) {
	return Array.from(c.getContext("2d")!.getImageData(0, 0, 1, 1).data);
}
function free(c: HTMLCanvasElement) {
	c.width = c.height = 1;
}
async function expectReject(task: Promise<unknown>, pattern: RegExp) {
	try {
		await task;
		return false;
	} catch (e) {
		return pattern.test(
			e instanceof Error ? e.name + ":" + e.message : String(e),
		);
	}
}
async function main() {
	const pipeline = await createPipeline({
		onStatus: (s) => {
			progress.textContent = s;
		},
	});
	const abortedWarm = new AbortController();
	abortedWarm.abort();
	report.preAbortedWarm = await expectReject(
		pipeline.warm(abortedWarm.signal),
		/AbortError/,
	);
	const begin = performance.now();
	await pipeline.warm();
	report.warm = {
		milliseconds: Math.round(performance.now() - begin),
		skin: getSkinStatus(),
	};
	const reference = await createCompositor("/effects/boy-ii/");
	const frame = make(160, 90, "rgb(20,70,130)");
	let sourceBuffer: HTMLCanvasElement | undefined,
		analysisBuffer: HTMLCanvasElement | undefined;
	const sourceIds: number[] = [],
		analysisIds: number[] = [],
		observed: number[][] = [],
		expected: number[][] = [];
	let maxNoFaceDifference = 0;
	progress.textContent = "Processing changing synthetic frames…";
	for (const color of [
		"rgb(20,70,130)",
		"rgb(180,50,35)",
		"rgb(35,170,80)",
		"rgb(70,30,180)",
		"rgb(20,70,130)",
	]) {
		paint(frame, color);
		events = [];
		const output = await pipeline.processFrame(
			frame,
			160,
			90,
			{ ...DEFAULT_SETTINGS },
			{ maxDimension: null },
		);
		const capture = events.find((e) => e.source === frame);
		if (!capture) throw new Error("Frame capture not observed");
		sourceBuffer = capture.target;
		sourceIds.push(id(sourceBuffer));
		const small = events.find((e) => e.source === sourceBuffer);
		if (!small) throw new Error("Frame analysis not observed");
		analysisBuffer = small.target;
		analysisIds.push(id(analysisBuffer));
		observed.push(pixel(output));
		const target = await reference.render(frame, 160, 90, [], [], {
			...DEFAULT_SETTINGS,
		});
		expected.push(pixel(target));
		maxNoFaceDifference = Math.max(
			maxNoFaceDifference,
			diff(pixels(output), pixels(target)),
		);
		free(output);
		free(target);
		events = [];
	}
	report.consecutiveFrames = {
		observed,
		expected,
		maxDifferenceFromNoFaceReference: maxNoFaceDifference,
		firstFrameMatchesReturnToSameColor:
			JSON.stringify(observed[0]) === JSON.stringify(observed[4]),
		distinctFirstFour: new Set(observed.slice(0, 4).map((p) => p.join(",")))
			.size,
	};
	report.reusedFrameBuffers = {
		sourceIds,
		analysisIds,
		sourceCount: new Set(sourceIds).size,
		analysisCount: new Set(analysisIds).size,
	};
	const photo = make(80, 60, "rgb(99,121,147)");
	const photoPixels = pixels(photo).slice();
	const blob = await new Promise<Blob>((resolve, reject) =>
		photo.toBlob(
			(b) =>
				b ? resolve(b) : reject(new Error("Synthetic photo encoding failed")),
			"image/png",
		),
	);
	const loaded = await pipeline.loadPhoto(
		new File([blob], "synthetic-solid.png", { type: "image/png" }),
	);
	const original = pipeline.getOriginal();
	const limited = await pipeline.processFrame(frame, 160, 90, off, {
		maxDimension: 80,
	});
	report.dimensionLimit = {
		width: limited.width,
		height: limited.height,
		pixel: pixel(limited),
	};
	free(limited);
	const restored = await pipeline.render(off, { maxDimension: null });
	report.photoPreserved = {
		loaded,
		originalIdentity: original === pipeline.getOriginal(),
		originalDifference: diff(photoPixels, pixels(pipeline.getOriginal())),
		renderDifference: diff(photoPixels, pixels(restored)),
		width: restored.width,
		height: restored.height,
	};
	free(restored);
	const preAbort = new AbortController();
	preAbort.abort();
	report.preAbortedFrame = await expectReject(
		pipeline.processFrame(frame, 160, 90, off, {
			maxDimension: null,
			signal: preAbort.signal,
		}),
		/AbortError/,
	);
	events = [];
	const during = new AbortController();
	const interrupted = pipeline.processFrame(frame, 160, 90, off, {
		maxDimension: null,
		signal: during.signal,
	});
	queueMicrotask(() => during.abort());
	report.inProgressCancellation = await expectReject(interrupted, /AbortError/);
	report.cancelledAfterCapture = events.some((e) => e.source === frame);
	const recovered = await pipeline.processFrame(frame, 160, 90, off, {
		maxDimension: null,
	});
	report.recoveredAfterCancellation =
		diff(pixels(frame), pixels(recovered)) === 0;
	free(recovered);
	const invalids: [number, number, number | null][] = [
		[0, 90, null],
		[160, -1, null],
		[160.5, 90, null],
		[NaN, 90, null],
		[160, 90, 0],
		[160, 90, -2],
		[160, 90, NaN],
		[160, 90, Infinity],
	];
	const invalidResults: boolean[] = [];
	for (const [w, h, maxDimension] of invalids)
		invalidResults.push(
			await expectReject(
				pipeline.processFrame(frame, w, h, off, { maxDimension }),
				/invalid dimensions|size limit is invalid/,
			),
		);
	report.invalidDimensions = {
		cases: invalids.map(([w, h, l]) => [String(w), String(h), String(l)]),
		rejected: invalidResults,
	};
	progress.textContent = "Checking repeated-frame resource reuse…";
	const repeatIds: number[] = [];
	for (let i = 0; i < 12; i++) {
		paint(frame, `rgb(${20 + i * 9},90,110)`);
		events = [];
		const output = await pipeline.processFrame(frame, 160, 90, off, {
			maxDimension: 80,
		});
		repeatIds.push(id(events.find((e) => e.source === frame)!.target));
		free(output);
		events = [];
	}
	report.repeatedFrames = {
		count: 12,
		sourceBufferCount: new Set(repeatIds).size,
		reusedOriginalSource: repeatIds.every((n) => n === sourceIds[0]),
	};

	const queuedA = make(160, 90, "rgb(10,90,180)"),
		queuedB = make(160, 90, "rgb(190,30,80)");
	const pendingA = pipeline.processFrame(queuedA, 160, 90, off, {
		maxDimension: null,
	});
	const pendingB = pipeline.processFrame(queuedB, 160, 90, off, {
		maxDimension: null,
	});
	const [outputA, outputB] = await Promise.all([pendingA, pendingB]);
	report.queuedFrames = {
		firstDifference: diff(pixels(queuedA), pixels(outputA)),
		secondDifference: diff(pixels(queuedB), pixels(outputB)),
		independentOutputs: outputA !== outputB,
	};
	free(outputA);
	free(outputB);
	free(queuedA);
	free(queuedB);
	const hd = make(1280, 720, "rgb(110,70,190)");
	events = [];
	const hdOut = await pipeline.processFrame(hd, 1280, 720, off, {
		maxDimension: 640,
	});
	const hdCapture = events.find((e) => e.source === hd)!.target,
		hdAnalysis = events.find((e) => e.source === hdCapture)!.target;
	report.hdDimensionLimit = {
		width: hdOut.width,
		height: hdOut.height,
		analysisWidth: hdAnalysis.width,
		analysisHeight: hdAnalysis.height,
		pixel: pixel(hdOut),
		sameSource: id(hdCapture) === sourceIds[0],
		sameAnalysis: id(hdAnalysis) === analysisIds[0],
	};
	free(hdOut);
	free(hd);
	events = [];
	await pipeline.dispose();
	report.dispose = {
		sourceReleased: sourceBuffer?.width === 1 && sourceBuffer?.height === 1,
		analysisReleased:
			analysisBuffer?.width === 1 && analysisBuffer?.height === 1,
		photoReleased: original.width === 1 && original.height === 1,
		rejectsNewFrame: await expectReject(
			pipeline.processFrame(frame, 160, 90, off, { maxDimension: null }),
			/closed/,
		),
	};
	reference.dispose();
	CanvasRenderingContext2D.prototype.drawImage = draw;
	events = [];
	const pp = report.photoPreserved as Record<string, unknown>,
		disposed = report.dispose as Record<string, unknown>;
	report.passed =
		(
			report.repeatedFrames as {
				sourceBufferCount: number;
				reusedOriginalSource: boolean;
			}
		).sourceBufferCount === 1 &&
		(report.repeatedFrames as { reusedOriginalSource: boolean })
			.reusedOriginalSource === true &&
		(report.queuedFrames as { independentOutputs: boolean })
			.independentOutputs === true &&
		(report.hdDimensionLimit as { sameSource: boolean; sameAnalysis: boolean })
			.sameSource === true &&
		(report.hdDimensionLimit as { sameSource: boolean; sameAnalysis: boolean })
			.sameAnalysis === true &&
		report.preAbortedWarm === true &&
		maxNoFaceDifference === 0 &&
		(report.consecutiveFrames as { distinctFirstFour: number })
			.distinctFirstFour === 4 &&
		new Set(sourceIds).size === 1 &&
		new Set(analysisIds).size === 1 &&
		loaded.faceCount === 0 &&
		(report.dimensionLimit as { width: number; height: number }).width === 80 &&
		(report.dimensionLimit as { width: number; height: number }).height ===
			45 &&
		(report.hdDimensionLimit as { width: number; height: number }).width ===
			640 &&
		(report.hdDimensionLimit as { width: number; height: number }).height ===
			360 &&
		(
			report.queuedFrames as {
				firstDifference: number;
				secondDifference: number;
			}
		).firstDifference === 0 &&
		(
			report.queuedFrames as {
				firstDifference: number;
				secondDifference: number;
			}
		).secondDifference === 0 &&
		report.cancelledAfterCapture === true &&
		pp.originalIdentity === true &&
		pp.originalDifference === 0 &&
		pp.renderDifference === 0 &&
		report.preAbortedFrame === true &&
		report.inProgressCancellation === true &&
		report.recoveredAfterCancellation === true &&
		invalidResults.every(Boolean) &&
		Object.values(disposed).every(Boolean);
	progress.textContent = report.passed ? "Passed" : "Needs investigation";
	document.querySelector("#report")!.textContent = JSON.stringify(
		report,
		null,
		2,
	);
	return report;
}
(
	window as unknown as { motionPipelineValidation: Promise<unknown> }
).motionPipelineValidation = main().catch((error) => {
	CanvasRenderingContext2D.prototype.drawImage = draw;
	report.error = error instanceof Error ? error.stack : String(error);
	progress.textContent = "Failed";
	document.querySelector("#report")!.textContent = JSON.stringify(
		report,
		null,
		2,
	);
	return report;
});
