import {
	createCompositor,
	type SkinPatch,
	type FaceMesh,
} from "../src/compositor";
import { DEFAULT_SETTINGS } from "../src/ui-types";
const report: Record<string, unknown> = {
	browser: navigator.userAgent,
	photoData: false,
};
const off = {
	...DEFAULT_SETTINGS,
	skinEnabled: false,
	colorEnabled: false,
	makeupEnabled: false,
};
function canvas(w: number, h: number) {
	const c = document.createElement("canvas");
	c.width = w;
	c.height = h;
	return c;
}
function read(c: HTMLCanvasElement) {
	return c
		.getContext("2d", { willReadFrequently: true })!
		.getImageData(0, 0, c.width, c.height);
}
function difference(a: Uint8ClampedArray, b: Uint8ClampedArray) {
	let max = 0,
		sum = 0,
		changed = 0;
	for (let i = 0; i < a.length; i++) {
		const d = Math.abs(a[i] - b[i]);
		max = Math.max(max, d);
		sum += d;
		if (d) changed++;
	}
	return { max, mean: sum / a.length, changed };
}
function pixel(image: ImageData, x: number, y: number) {
	return Array.from(
		image.data.slice((y * image.width + x) * 4, (y * image.width + x) * 4 + 4),
	);
}
async function main() {
	const c = await createCompositor("../effects/boy-ii/");
	report.shaderCompile = "all four programs linked";
	const source = canvas(3000, 4000),
		ctx = source.getContext("2d", { willReadFrequently: true })!,
		data = ctx.createImageData(source.width, source.height);
	for (let y = 0; y < 4000; y++)
		for (let x = 0; x < 3000; x++) {
			const i = (y * 3000 + x) * 4;
			data.data[i] = x % 256;
			data.data[i + 1] = y % 256;
			data.data[i + 2] =
				(Math.floor(x / 32) + Math.floor(y / 32)) % 2 ? 230 : 35;
			data.data[i + 3] = 255;
		}
	ctx.putImageData(data, 0, 0);
	let tiles = 0;
	const identity = await c.render(source, 3000, 4000, [], [], off, {
		onProgress: () => tiles++,
	});
	report.identity3000x4000 = {
		...difference(data.data, read(identity).data),
		tiles,
		width: identity.width,
		height: identity.height,
	};
	identity.width = identity.height = 1;
	const tiled = await c.render(source, 3000, 4000, [], [], {
		...off,
		colorEnabled: true,
	});
	const tiledPixels = read(tiled);
	tiled.width = tiled.height = 1;
	const limit = (c as unknown as { tileLimit: number }).tileLimit;
	(c as unknown as { tileLimit: number }).tileLimit = 4096;
	const untiled = await c.render(source, 3000, 4000, [], [], {
		...off,
		colorEnabled: true,
	});
	report.colorTiledVersusUntiled = difference(
		tiledPixels.data,
		read(untiled).data,
	);
	untiled.width = untiled.height = 1;
	(c as unknown as { tileLimit: number }).tileLimit = limit;
	const gray = canvas(512, 512),
		gctx = gray.getContext("2d")!;
	gctx.fillStyle = "rgb(64,96,128)";
	gctx.fillRect(0, 0, 512, 512);
	const patch: SkinPatch = {
		size: 320,
		rgba: new Float32Array(320 * 320 * 4),
		cropToSource: [1, 0, 0, 1, 96, 96],
	};
	for (let y = 0; y < 320; y++)
		for (let x = 0; x < 320; x++) {
			const i = (y * 320 + x) * 4;
			patch.rgba[i] = x < 160 ? 1 : -1;
			patch.rgba[i + 1] = y < 160 ? 1 : -1;
			patch.rgba[i + 2] = -1;
			patch.rgba[i + 3] = 1;
		}
	const skin = await c.render(gray, 512, 512, [patch], [], {
		...off,
		skinEnabled: true,
	});
	const si = read(skin);
	report.skinOrientation = {
		topLeft: pixel(si, 216, 216),
		topRight: pixel(si, 296, 216),
		bottomLeft: pixel(si, 216, 296),
		bottomRight: pixel(si, 296, 296),
		outside: pixel(si, 30, 30),
	};
	const rotated: SkinPatch = { ...patch, cropToSource: [0, 1, -1, 0, 416, 96] };
	const rotation = await c.render(gray, 512, 512, [rotated], [], {
		...off,
		skinEnabled: true,
	});
	const ri = read(rotation);
	report.rotatedSkin = {
		topLeft: pixel(ri, 216, 216),
		topRight: pixel(ri, 296, 216),
		bottomLeft: pixel(ri, 216, 296),
		bottomRight: pixel(ri, 296, 296),
	};
	const mesh: FaceMesh = {
		positions: new Float32Array([96, 96, 416, 96, 96, 416, 416, 416]),
		uv: new Float32Array([0, 1, 1, 1, 0, 0, 1, 0]),
		indices: new Uint16Array([0, 1, 2, 1, 3, 2]),
	};
	const makeup = await c.render(gray, 512, 512, [], [mesh], {
		...off,
		makeupEnabled: true,
	});
	report.makeupDifference = difference(read(gray).data, read(makeup).data);
	const crossing: SkinPatch = {
		...patch,
		cropToSource: [5, 0, 0, 5, 1200, 1800],
	};
	const crossMesh: FaceMesh = {
		...mesh,
		positions: new Float32Array([
			1200, 1800, 2800, 1800, 1200, 3400, 2800, 3400,
		]),
	};
	const combinedTiled = await c.render(
		source,
		3000,
		4000,
		[crossing],
		[crossMesh],
		{ ...DEFAULT_SETTINGS },
	);
	const ct = read(combinedTiled);
	combinedTiled.width = combinedTiled.height = 1;
	(c as unknown as { tileLimit: number }).tileLimit = 4096;
	const combinedSingle = await c.render(
		source,
		3000,
		4000,
		[crossing],
		[crossMesh],
		{ ...DEFAULT_SETTINGS },
	);
	report.allStagesAcrossTileBoundary = difference(
		ct.data,
		read(combinedSingle).data,
	);
	combinedSingle.width = combinedSingle.height = 1;
	(c as unknown as { tileLimit: number }).tileLimit = limit;
	const lutSource = canvas(5, 1),
		lc = lutSource.getContext("2d")!,
		ld = lc.createImageData(5, 1);
	ld.data.set([
		0, 0, 0, 255, 255, 0, 0, 255, 0, 255, 0, 255, 0, 0, 255, 255, 255, 255, 255,
		255,
	]);
	lc.putImageData(ld, 0, 0);
	const lutResult = await c.render(lutSource, 5, 1, [], [], {
		...off,
		colorEnabled: true,
		lut: 1,
		brightness: 0,
		temperature: 0,
	});
	const lr = read(lutResult);
	report.lutExtremes = Array.from({ length: 5 }, (_, x) => pixel(lr, x, 0));

	const aborter = new AbortController();
	aborter.abort();
	try {
		await c.render(gray, 512, 512, [], [], off, { signal: aborter.signal });
		report.abort = false;
	} catch (e) {
		report.abort = e instanceof DOMException && e.name === "AbortError";
	}
	const figures = document.createElement("div");
	for (const [name, img] of [
		["Synthetic skin", skin],
		["90 degree rotation", rotation],
		["Original makeup textures", makeup],
	] as const) {
		const label = document.createElement("h2");
		label.textContent = name;
		figures.append(label, img);
		img.style.width = "256px";
	}
	document.body.append(figures);
	c.dispose();
	source.width = source.height = 1;
	report.passed =
		(report.identity3000x4000 as { max: number }).max === 0 &&
		(report.colorTiledVersusUntiled as { max: number }).max <= 1 &&
		(report.allStagesAcrossTileBoundary as { max: number }).max <= 1 &&
		JSON.stringify(
			(report.skinOrientation as Record<string, number[]>).topLeft,
		) === "[255,255,0,255]" &&
		JSON.stringify(
			(report.rotatedSkin as Record<string, number[]>).topRight,
		) === "[255,255,0,255]" &&
		(report.makeupDifference as { changed: number }).changed > 0 &&
		report.abort === true;
	document.querySelector("#state")!.textContent = report.passed
		? "Passed"
		: "Needs investigation";
	document.querySelector("#report")!.textContent = JSON.stringify(
		report,
		null,
		2,
	);
	return report;
}
(
	window as unknown as { compositingValidation: Promise<unknown> }
).compositingValidation = main().catch((error) => {
	report.error = String(error);
	document.querySelector("#state")!.textContent = "Failed";
	document.querySelector("#report")!.textContent = JSON.stringify(
		report,
		null,
		2,
	);
	return report;
});
