import { createCompositor, type FaceMesh } from "../src/compositor";
import { DEFAULT_SETTINGS } from "../src/ui-types";
import { reorderExtraLandmarks } from "../src/face";
import {
	imageToTT295Coordinates,
	tt295ToImageCoordinates,
	type MakeupPoint,
} from "../src/makeup-geometry";
import { buildTT295Positions } from "../src/makeup-tt295";
import authored from "./makeup-authored295.json";
interface Box {
	x0: number;
	y0: number;
	x1: number;
	y1: number;
}
const report: Record<string, unknown> = {
	syntheticOnly: true,
	fixtures:
		"Original package-authored reference mesh and original model mean; no photographs",
};
const state = document.querySelector("#state")!;
function bounds(points: readonly MakeupPoint[], pad = 0): Box {
	return {
		x0: Math.min(...points.map((p) => p.x)) - pad,
		y0: Math.min(...points.map((p) => p.y)) - pad,
		x1: Math.max(...points.map((p) => p.x)) + pad,
		y1: Math.max(...points.map((p) => p.y)) + pad,
	};
}
function points(flat: readonly number[] | Float32Array) {
	return Array.from({ length: flat.length / 2 }, (_, i) => ({
		x: flat[i * 2],
		y: flat[i * 2 + 1],
	}));
}
function blank(w: number, h: number) {
	const c = document.createElement("canvas");
	c.width = w;
	c.height = h;
	const ctx = c.getContext("2d")!;
	ctx.fillStyle = "rgb(180,160,140)";
	ctx.fillRect(0, 0, w, h);
	return c;
}
function measure(image: HTMLCanvasElement, box: Box) {
	const d = image
		.getContext("2d", { willReadFrequently: true })!
		.getImageData(0, 0, image.width, image.height).data;
	let sum = 0,
		sx = 0,
		sy = 0,
		inside = 0,
		count = 0;
	let x0 = Infinity,
		y0 = Infinity,
		x1 = -Infinity,
		y1 = -Infinity;
	for (let y = 0; y < image.height; y++)
		for (let x = 0; x < image.width; x++) {
			const k = (y * image.width + x) * 4,
				w =
					Math.abs(d[k] - 180) +
					Math.abs(d[k + 1] - 160) +
					Math.abs(d[k + 2] - 140);
			if (w < 3) continue;
			sum += w;
			sx += x * w;
			sy += y * w;
			count++;
			x0 = Math.min(x0, x);
			y0 = Math.min(y0, y);
			x1 = Math.max(x1, x);
			y1 = Math.max(y1, y);
			if (x >= box.x0 && x <= box.x1 && y >= box.y0 && y <= box.y1) inside += w;
		}
	return {
		centroid: [sx / sum, sy / sum],
		insideFraction: inside / sum,
		effectPixels: count,
		bounds: [x0, y0, x1, y1],
		totalDifference: sum,
	};
}
function deltaAt(image: HTMLCanvasElement, p: MakeupPoint, radius = 3) {
	const ctx = image.getContext("2d")!;
	const x = Math.round(p.x),
		y = Math.round(p.y),
		d = ctx.getImageData(
			x - radius,
			y - radius,
			radius * 2 + 1,
			radius * 2 + 1,
		).data;
	let sum = 0;
	for (let i = 0; i < d.length; i += 4)
		sum +=
			Math.abs(d[i] - 180) +
			Math.abs(d[i + 1] - 160) +
			Math.abs(d[i + 2] - 140);
	return sum / (d.length / 4);
}
function show(
	title: string,
	images: { label: string; canvas: HTMLCanvasElement }[],
	meshPoints: MakeupPoint[],
) {
	const heading = document.createElement("h2");
	heading.textContent = title;
	const row = document.createElement("section");
	for (const entry of images) {
		const figure = document.createElement("figure"),
			copy = document.createElement("canvas");
		copy.width = entry.canvas.width;
		copy.height = entry.canvas.height;
		const ctx = copy.getContext("2d")!;
		ctx.drawImage(entry.canvas, 0, 0);
		ctx.strokeStyle = "#00ffff";
		ctx.lineWidth = 1.5;
		for (const [a, b] of [
			[46, 68],
			[68, 90],
			[90, 103],
			[103, 116],
			[116, 131],
			[161, 176],
		]) {
			ctx.beginPath();
			meshPoints
				.slice(a, b)
				.forEach((p, i) => (i ? ctx.lineTo(p.x, p.y) : ctx.moveTo(p.x, p.y)));
			ctx.stroke();
		}
		const text = document.createElement("figcaption");
		text.textContent = entry.label;
		figure.append(copy, text);
		row.append(figure);
	}
	document.querySelector("#images")!.append(heading, row);
}
async function main() {
	const compositor = await createCompositor("../effects/boy-ii/");
	const topology = await (
		await fetch("../effects/boy-ii/makeup-tt295.json")
	).json();
	const templates = await (await fetch("../models/face-templates.json")).json();
	const network = points(templates.extra as number[]).map((p) => ({
		x: p.x * 1.8 + 26,
		y: p.y * 1.8 + 26,
	}));
	const make = (extra: MakeupPoint[]) =>
		tt295ToImageCoordinates(
			buildTT295Positions(
				imageToTT295Coordinates(network.slice(0, 106), 512, 512),
				imageToTT295Coordinates(extra, 512, 512),
			),
			512,
			512,
		);
	const corrected = make(reorderExtraLandmarks(network));
	const broken = make(network.slice(106));
	const modes = [
		{
			name: "authored",
			positions: new Float32Array(authored.positions),
			w: 704,
			h: 896,
			mouth: bounds(points(authored.positions).slice(116, 180), 12),
		},
		{
			name: "modelMeanCorrected",
			positions: corrected,
			w: 512,
			h: 512,
			mouth: bounds(network.slice(84, 104), 12),
		},
		{
			name: "modelMeanOldOrder",
			positions: broken,
			w: 512,
			h: 512,
			mouth: bounds(network.slice(84, 104), 12),
		},
	];
	const isolated = {
		...DEFAULT_SETTINGS,
		skinEnabled: false,
		colorEnabled: false,
		makeupEnabled: true,
		contour: 0,
		lips: 0,
		berry: 0,
	};
	for (const mode of modes) {
		const source = blank(mode.w, mode.h),
			mesh: FaceMesh = {
				positions: mode.positions,
				uv: new Float32Array(topology.uv),
				indices: new Uint16Array(topology.indices),
			};
		const results: { label: string; canvas: HTMLCanvasElement }[] = [];
		const metrics: Record<string, unknown> = { mouthRegion: mode.mouth };
		for (const name of ["contour", "lips", "berry"] as const) {
			const output = await compositor.render(
				source,
				mode.w,
				mode.h,
				[],
				[mesh],
				{ ...isolated, [name]: 1 },
			);
			metrics[name] = measure(output, mode.mouth);
			results.push({ label: `${name}: full strength`, canvas: output });
			if (name === "contour") {
				const p = points(mode.positions);
				metrics.contourAtNose = deltaAt(output, p[36]);
				metrics.contourAtBrowLeft = deltaAt(output, p[94]);
				metrics.contourAtBrowRight = deltaAt(output, p[107]);
			}
		}
		report[mode.name] = metrics;
		show(mode.name, results, points(mode.positions));
	}
	interface Metrics {
		lips: { insideFraction: number };
		berry: { centroid: number[] };
		contourAtNose: number;
		contourAtBrowLeft: number;
		contourAtBrowRight: number;
	}
	const a = report.authored as Metrics,
		c = report.modelMeanCorrected as Metrics,
		b = report.modelMeanOldOrder as Metrics;
	const centerX = (network[0].x + network[32].x) / 2;
	report.checks = {
		authoredLipRegistration: a.lips.insideFraction > 0.95,
		modelMeanLipRegistration: c.lips.insideFraction > 0.95,
		oldPermutationReproducesDisplacedLips: b.lips.insideFraction < 0.25,
		contourFollowsNose:
			c.contourAtNose > 30 && c.contourAtNose > b.contourAtNose * 3,
		contourFollowsBothBrows:
			c.contourAtBrowLeft > 10 && c.contourAtBrowRight > 10,
		berryRemainsCentered: Math.abs(c.berry.centroid[0] - centerX) < 5,
	};
	report.passed = Object.values(report.checks as Record<string, boolean>).every(
		Boolean,
	);
	compositor.dispose();
	state.textContent = report.passed
		? "Passed: lips remain registered to mouth; old ordering reproduces displacement"
		: "Registration assertion failed";
	document.querySelector("#report")!.textContent = JSON.stringify(
		report,
		null,
		2,
	);
	return report;
}
(
	window as unknown as { makeupRegistrationValidation: Promise<unknown> }
).makeupRegistrationValidation = main().catch((e) => {
	report.error = e instanceof Error ? e.stack : String(e);
	state.textContent = "Failed";
	document.querySelector("#report")!.textContent = JSON.stringify(
		report,
		null,
		2,
	);
	return report;
});
