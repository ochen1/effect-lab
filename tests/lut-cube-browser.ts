import {
	cubeColorShader,
	createCompositor,
	getCompositorDiagnostics,
} from "../src/compositor";
const report: Record<string, unknown> = { syntheticOnly: true };
function adjacent(value: number, direction: number) {
	const f = new Float32Array([value]),
		u = new Uint32Array(f.buffer);
	u[0] += direction;
	return f[0];
}
async function main() {
	const canvas = document.createElement("canvas"),
		gl = canvas.getContext("webgl2", {
			alpha: true,
			premultipliedAlpha: false,
			antialias: false,
			preserveDrawingBuffer: true,
		})!;
	if (!gl) throw new Error("WebGL2 unavailable");
	const blue: number[] = [];
	for (let b = 0; b < 64; b++)
		blue.push(b === 63 ? 1 : Math.fround((b + 0.5) / 63));
	for (let b = 1; b <= 63; b++) {
		const v = Math.fround(b / 63);
		for (const value of [adjacent(v, -1), v, adjacent(v, 1)])
			if (value <= 1) blue.push(value);
	}
	for (let b = 0; b < 256; b++) blue.push(Math.fround(b / 255));
	const rg = [0, 1 / 63, 0.03125, 0.1, 1 / 3, 0.5, 0.731, 62 / 63, 1].map(
		Math.fround,
	);
	const gridCount = blue.length * rg.length * rg.length,
		count = gridCount + 256,
		width = 512,
		height = Math.ceil(count / width),
		input = new Float32Array(width * height * 4);
	let offset = 0;
	for (const b of blue)
		for (const g of rg)
			for (const r of rg) {
				input.set([r, g, b, 1], offset);
				offset += 4;
			}
	for (let v = 0; v < 256; v++) {
		input.set([v / 255, v / 255, v / 255, 1], offset);
		offset += 4;
	}
	canvas.width = width;
	canvas.height = height;
	gl.viewport(0, 0, width, height);
	const vertex =
		"#version 300 es\nprecision highp float;in vec2 position;out vec2 v2f_v_texCoord;void main(){v2f_v_texCoord=position;gl_Position=vec4(position.x*2.-1.,1.-position.y*2.,0.,1.);}";
	function program(fragment: string) {
		const p = gl.createProgram()!;
		for (const [type, source] of [
			[gl.VERTEX_SHADER, vertex],
			[gl.FRAGMENT_SHADER, fragment],
		] as const) {
			const sh = gl.createShader(type)!;
			gl.shaderSource(sh, source);
			gl.compileShader(sh);
			if (!gl.getShaderParameter(sh, gl.COMPILE_STATUS))
				throw new Error(gl.getShaderInfoLog(sh) || "Shader compile failed");
			gl.attachShader(p, sh);
			gl.deleteShader(sh);
		}
		gl.linkProgram(p);
		if (!gl.getProgramParameter(p, gl.LINK_STATUS))
			throw new Error(gl.getProgramInfoLog(p) || "Shader link failed");
		return p;
	}
	const original = await (await fetch("../effects/boy-ii/filter.frag")).text(),
		atlasProgram = program(original),
		cubeProgram = program(cubeColorShader(original));
	const quad = gl.createBuffer()!;
	gl.bindBuffer(gl.ARRAY_BUFFER, quad);
	gl.bufferData(
		gl.ARRAY_BUFFER,
		new Float32Array([0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1]),
		gl.STATIC_DRAW,
	);
	function texture(target: number) {
		const t = gl.createTexture()!;
		gl.bindTexture(target, t);
		gl.texParameteri(target, gl.TEXTURE_MIN_FILTER, gl.NEAREST);
		gl.texParameteri(target, gl.TEXTURE_MAG_FILTER, gl.NEAREST);
		gl.texParameteri(target, gl.TEXTURE_WRAP_S, gl.CLAMP_TO_EDGE);
		gl.texParameteri(target, gl.TEXTURE_WRAP_T, gl.CLAMP_TO_EDGE);
		return t;
	}
	gl.activeTexture(gl.TEXTURE0);
	const source = texture(gl.TEXTURE_2D);
	gl.texImage2D(
		gl.TEXTURE_2D,
		0,
		gl.RGBA32F,
		width,
		height,
		0,
		gl.RGBA,
		gl.FLOAT,
		input,
	);
	gl.activeTexture(gl.TEXTURE1);
	const atlas = texture(gl.TEXTURE_2D);
	gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.LINEAR);
	gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, gl.LINEAR);
	const image = await createImageBitmap(
		await (await fetch("../effects/boy-ii/peach.png")).blob(),
		{
			imageOrientation: "flipY",
			premultiplyAlpha: "none",
			colorSpaceConversion: "none",
		},
	);
	gl.texImage2D(gl.TEXTURE_2D, 0, gl.RGBA, gl.RGBA, gl.UNSIGNED_BYTE, image);
	image.close();
	const cube = texture(gl.TEXTURE_3D),
		bytes = new Uint8Array(
			await (await fetch("../effects/boy-ii/peach-lut.rgba")).arrayBuffer(),
		);
	if (bytes.length !== 64 * 64 * 64 * 4) throw new Error("Invalid cube size");
	gl.texParameteri(gl.TEXTURE_3D, gl.TEXTURE_WRAP_R, gl.CLAMP_TO_EDGE);
	gl.texImage3D(
		gl.TEXTURE_3D,
		0,
		gl.RGBA8,
		64,
		64,
		64,
		0,
		gl.RGBA,
		gl.UNSIGNED_BYTE,
		bytes,
	);
	function draw(
		p: WebGLProgram,
		intensity: number,
		cube: boolean,
		protection = 0,
	) {
		gl.useProgram(p);
		gl.bindBuffer(gl.ARRAY_BUFFER, quad);
		const position = gl.getAttribLocation(p, "position");
		gl.enableVertexAttribArray(position);
		gl.vertexAttribPointer(position, 2, gl.FLOAT, false, 0, 0);
		gl.uniform1i(gl.getUniformLocation(p, "u_FBOTexture"), 0);
		gl.uniform1i(
			gl.getUniformLocation(p, cube ? "_LutCube" : "_LutTexture"),
			1,
		);
		for (const [k, v] of Object.entries({
			_Intensity: intensity,
			_HighlightProtection: protection,
			_Exposure: 0,
			_Brightness: -0.02,
			_Temperature: -0.01,
			_Tint: 0,
			_Contrast: 0,
			_Saturation: 0,
		}))
			gl.uniform1f(gl.getUniformLocation(p, k), v);
		gl.drawArrays(gl.TRIANGLES, 0, 6);
		const out = new Uint8Array(width * height * 4);
		gl.readPixels(0, 0, width, height, gl.RGBA, gl.UNSIGNED_BYTE, out);
		gl.disableVertexAttribArray(position);
		const error = gl.getError();
		if (error !== gl.NO_ERROR) throw new Error(`WebGL error ${error}`);
		return out;
	}
	const cases = [];
	for (const intensity of [0.3, 1]) {
		const old = draw(atlasProgram, intensity, false),
			next = draw(cubeProgram, intensity, true);
		let max = 0,
			total = 0,
			outsideOne = 0;
		for (let i = 0; i < count; i++) {
			const y = Math.floor(i / width),
				x = i % width,
				k = ((height - 1 - y) * width + x) * 4;
			for (let c = 0; c < 4; c++) {
				const d = Math.abs(old[k + c] - next[k + c]);
				max = Math.max(max, d);
				total += d;
				if (d > 1) outsideOne++;
			}
		}
		cases.push({
			intensity,
			pixels: count,
			maxError: max,
			meanError: total / (count * 4),
			channelsOutsideOneByte: outsideOne,
		});
	}
	const highlightChecks = [];
	const at = (v: number, channel: number) => {
		const i = gridCount + v;
		return (
			((height - 1 - Math.floor(i / width)) * width + (i % width)) * 4 + channel
		);
	};
	for (const intensity of [0.35, 1]) {
		const original = draw(cubeProgram, intensity, true, 0);
		const protectedPixels = draw(cubeProgram, intensity, true, 1);
		const noLut = draw(cubeProgram, 0, true, 0);
		let midtoneError = 0,
			highlightError = 0,
			reversal = 0;
		for (let v = 0; v < 256; v++)
			for (let c = 0; c < 3; c++) {
				const k = at(v, c);
				if (v <= 204)
					midtoneError = Math.max(
						midtoneError,
						Math.abs(original[k] - protectedPixels[k]),
					);
				if (v >= 250)
					highlightError = Math.max(
						highlightError,
						Math.abs(noLut[k] - protectedPixels[k]),
					);
				if (v >= 251)
					reversal = Math.max(
						reversal,
						protectedPixels[at(v - 1, c)] - protectedPixels[k],
					);
			}
		highlightChecks.push({
			intensity,
			midtoneError,
			highlightError,
			highlightReversal: reversal,
			whiteOriginal: [0, 1, 2].map((c) => original[at(255, c)]),
			whiteProtected: [0, 1, 2].map((c) => protectedPixels[at(255, c)]),
			passed: midtoneError === 0 && highlightError === 0 && reversal === 0,
		});
	}
	report.highlightProtection = highlightChecks;
	report.coverage = {
		blueBins: 64,
		boundaryAdjacentFloat32Values: 188,
		all256BlueByteValues: true,
		redGreenGrid: rg.length + "×" + rg.length,
		totalPixels: count,
	};
	report.atlasVersusCube = cases;
	for (const t of [source, atlas, cube]) gl.deleteTexture(t);
	gl.deleteProgram(atlasProgram);
	gl.deleteProgram(cubeProgram);
	gl.deleteBuffer(quad);
	gl.getExtension("WEBGL_lose_context")?.loseContext();
	const actual = await createCompositor("../effects/boy-ii/");
	report.productionDriverChecks = getCompositorDiagnostics();
	actual.dispose();
	report.passed =
		cases.every((c) => c.channelsOutsideOneByte === 0) &&
		highlightChecks.every((c) => c.passed) &&
		(report.productionDriverChecks as { status: string }).status === "passed";
	document.querySelector("#state")!.textContent = report.passed
		? "Original atlas and raw cube agree within one byte"
		: "LUT parity failed";
	document.querySelector("#report")!.textContent = JSON.stringify(
		report,
		null,
		2,
	);
	return report;
}
(
	window as unknown as { lutCubeValidation: Promise<unknown> }
).lutCubeValidation = main().catch((e) => {
	report.error = e instanceof Error ? e.stack : String(e);
	document.querySelector("#state")!.textContent = "Failed";
	document.querySelector("#report")!.textContent = JSON.stringify(
		report,
		null,
		2,
	);
	return report;
});
