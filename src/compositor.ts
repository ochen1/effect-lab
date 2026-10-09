import reference from "./compositor-reference.json";
import { DEFAULT_SETTINGS } from "./ui-types";
import { getSdrContext } from "./capture-color";
import { invertAffine, type Affine } from "./alignment";
import type { EffectSettings } from "./ui-types";
export interface SkinPatch {
	rgba: Float32Array;
	size: number;
	cropToSource: Affine;
}
export interface FaceMesh {
	positions: Float32Array;
	uv: Float32Array;
	indices: Uint16Array;
}
export interface CompositeOptions {
	signal?: AbortSignal;
	onProgress?: (progress: number) => void;
	maxDimension?: number | null;
}
export interface CompositorStageCheck {
	passed: boolean;
	maxError: number;
	meanError: number;
	tolerance: number;
	checkedChannels: number;
	outsideTolerance: number;
	glErrors: string[];
}
export interface CompositorDiagnostics {
	version: 1;
	status: "pending" | "passed" | "failed" | "error";
	syntheticOnly: true;
	referenceVersion: number;
	lutSampling: "raw-rgba8-cube-explicit-bilinear-rg-floor-b";
	reportedImplementation: { vendor: string; renderer: string; version: string };
	fragmentHighFloat: {
		rangeMin: number;
		rangeMax: number;
		precision: number;
	} | null;
	checks: Partial<
		Record<"identity" | "color" | "skin" | "makeup", CompositorStageCheck>
	>;
	error?: string;
}
let latestDiagnostics: CompositorDiagnostics | null = null;
/** Only built-in synthetic pixels and exposed WebGL API details; never user images. */
export function getCompositorDiagnostics(): CompositorDiagnostics | null {
	return latestDiagnostics
		? JSON.parse(JSON.stringify(latestDiagnostics))
		: null;
}
/** GanHeadCpu converts each model texel before filtering: CV_8UC4, alpha=beta=127.5.
 * Native MobileCV uses float32 fused multiply-add, then nearest-even U8 saturation.
 * Uint8ClampedArray supplies the same nearest-even/clamping step; see native oracle.
 */
export function quantizeGanRGBA(rgba: Float32Array): Uint8ClampedArray {
	const bytes = new Uint8ClampedArray(rgba.length);
	for (let i = 0; i < rgba.length; i++)
		bytes[i] = Math.fround(rgba[i] * 127.5 + 127.5);
	return bytes;
}
const VERT = `#version 300 es
precision highp float;
in vec2 position; out vec2 v2f_v_texCoord;
void main(){v2f_v_texCoord=position;gl_Position=vec4(position.x*2.-1.,1.-position.y*2.,0.,1.);}`;
const HEADER = `#version 300 es
precision highp float;
in vec2 v2f_v_texCoord;out vec4 o_FragColor;
uniform highp sampler2D u_FBOTexture;uniform float sourceFlip;
vec4 sourceAt(vec2 uv){return texture(u_FBOTexture,vec2(uv.x,mix(uv.y,1.-uv.y,sourceFlip)));}
`;
const COPY = HEADER + `void main(){o_FragColor=sourceAt(v2f_v_texCoord);}`;
const SKIN =
	HEADER +
	`
uniform highp sampler2D ganTexture,maskTexture;uniform mat3 sourceToCrop;
uniform vec2 tileOrigin,tileSize;uniform float cropSize,strength;
void main(){vec4 src=sourceAt(v2f_v_texCoord);vec2 pt=tileOrigin+v2f_v_texCoord*tileSize;
 vec2 uv=(sourceToCrop*vec3(pt,1.)).xy/cropSize;
 if(any(lessThan(uv,vec2(0.)))||any(greaterThan(uv,vec2(1.)))){o_FragColor=src;return;}
 vec4 gan=texture(ganTexture,uv);
 float alpha=clamp(gan.a*texture(maskTexture,vec2(uv.x,1.-uv.y)).r*strength,0.,1.);
 o_FragColor=vec4(mix(src.rgb,gan.rgb,alpha),src.a+alpha*(1.-src.a));}`;
const MESH_VERT = `#version 300 es
precision highp float;
in vec2 position;in vec2 texCoord;out vec2 v2f_v_texCoord;out vec2 makeupUV;
uniform vec2 tileOrigin,tileSize;
void main(){v2f_v_texCoord=(position-tileOrigin)/tileSize;makeupUV=texCoord;gl_Position=vec4(v2f_v_texCoord.x*2.-1.,1.-v2f_v_texCoord.y*2.,0.,1.);}`;
const MAKEUP =
	HEADER +
	`
in vec2 makeupUV;uniform highp sampler2D makeupTexture,opacityTexture;
uniform float intensity,opacityEnabled;uniform int blendMode;
float softLight(float b,float s){return s<.5?2.*b*s+b*b*(1.-2.*s):sqrt(max(b,0.))*(2.*s-1.)+2.*b*(1.-s);}
void main(){vec4 base=sourceAt(v2f_v_texCoord),m=texture(makeupTexture,makeupUV);
 float alpha=clamp(m.a*intensity*mix(1.,texture(opacityTexture,makeupUV).r,opacityEnabled),0.,1.);
 vec3 blend=blendMode==5?vec3(softLight(base.r,m.r),softLight(base.g,m.g),softLight(base.b,m.b)):base.rgb*m.rgb;
 o_FragColor=vec4(mix(base.rgb,blend,alpha),base.a+alpha*(1.-base.a));}`;
/** Preserve the authored floor(B*63) + bilinear RG lookup, without relying on
 * packed-atlas coordinates, image upload color handling, or texture filtering. */
export function cubeColorShader(authored: string): string {
	const declaration = "uniform highp sampler2D _LutTexture;";
	const lookup = "texture(_LutTexture, _756).xyz";
	if (!authored.includes(declaration) || !authored.includes(lookup))
		throw new Error("Unsupported effect color shader layout.");
	const sample = `
vec3 sampleOriginalLut(vec3 rgb) {
 vec2 coordinate=clamp(rgb.rg,vec2(0.0),vec2(1.0))*63.0;
 ivec2 low=ivec2(floor(coordinate));
 ivec2 high=min(low+ivec2(1),ivec2(63));
 int blue=int(clamp(floor(rgb.b*63.0),0.0,63.0));
 vec2 weight=coordinate-vec2(low);
 vec3 c00=texelFetch(_LutCube,ivec3(low,blue),0).rgb;
 vec3 c10=texelFetch(_LutCube,ivec3(high.x,low.y,blue),0).rgb;
 vec3 c01=texelFetch(_LutCube,ivec3(low.x,high.y,blue),0).rgb;
 vec3 c11=texelFetch(_LutCube,ivec3(high,blue),0).rgb;
 return mix(mix(c00,c10,weight.x),mix(c01,c11,weight.x),weight.y);
}
`;
	return authored
		.replace(declaration, "uniform highp sampler3D _LutCube;")
		.replace("void main()", sample + "\nvoid main()")
		.replace(lookup, "sampleOriginalLut(_465.xyz)");
}
function abort(signal?: AbortSignal) {
	if (signal?.aborted)
		throw new DOMException("Rendering cancelled", "AbortError");
}
function affineMatrix(m: Affine) {
	return new Float32Array([m[0], m[1], 0, m[2], m[3], 0, m[4], m[5], 1]);
}
async function bitmap(url: string) {
	const r = await fetch(url);
	if (!r.ok) throw new Error(`Effect asset unavailable: ${url}`);
	return createImageBitmap(await r.blob(), {
		premultiplyAlpha: "none",
		colorSpaceConversion: "none",
		imageOrientation: "flipY",
	});
}
/** Tile allocation bounds GPU memory independently from the original photograph's size. */
export class Compositor {
	private canvas = document.createElement("canvas");
	private gl: WebGL2RenderingContext;
	private programs: Record<string, WebGLProgram> = {};
	private textures: Record<string, WebGLTexture> = {};
	private quad: WebGLBuffer;
	private vertex: WebGLBuffer;
	private uv: WebGLBuffer;
	private index: WebGLBuffer;
	private fbo: WebGLFramebuffer;
	private targets: WebGLTexture[] = [];
	private tileLimit: number;
	private diagnostics: CompositorDiagnostics;
	private constructor() {
		const gl = this.canvas.getContext("webgl2", {
			alpha: true,
			premultipliedAlpha: false,
			preserveDrawingBuffer: true,
			antialias: false,
			depth: false,
		});
		if (!gl) throw new Error("WebGL 2 is required to apply this effect.");
		this.gl = gl;
		const precision = gl.getShaderPrecisionFormat(
			gl.FRAGMENT_SHADER,
			gl.HIGH_FLOAT,
		);
		this.diagnostics = {
			version: 1,
			status: "pending",
			syntheticOnly: true,
			referenceVersion: reference.version,
			lutSampling: "raw-rgba8-cube-explicit-bilinear-rg-floor-b",
			reportedImplementation: {
				vendor: String(gl.getParameter(gl.VENDOR)),
				renderer: String(gl.getParameter(gl.RENDERER)),
				version: String(gl.getParameter(gl.VERSION)),
			},
			fragmentHighFloat: precision
				? {
						rangeMin: precision.rangeMin,
						rangeMax: precision.rangeMax,
						precision: precision.precision,
					}
				: null,
			checks: {},
		};
		latestDiagnostics = this.diagnostics;
		if ("drawingBufferColorSpace" in gl) gl.drawingBufferColorSpace = "srgb";
		this.tileLimit = Math.min(
			2048,
			gl.getParameter(gl.MAX_TEXTURE_SIZE),
			gl.getParameter(gl.MAX_RENDERBUFFER_SIZE),
		);
		this.quad = gl.createBuffer()!;
		this.vertex = gl.createBuffer()!;
		this.uv = gl.createBuffer()!;
		this.index = gl.createBuffer()!;
		this.fbo = gl.createFramebuffer()!;
		gl.bindBuffer(gl.ARRAY_BUFFER, this.quad);
		gl.bufferData(
			gl.ARRAY_BUFFER,
			new Float32Array([0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1]),
			gl.STATIC_DRAW,
		);
	}
	static async create(base = "./effects/boy-ii/"): Promise<Compositor> {
		const c = new Compositor();
		try {
			const names = ["contour", "lips", "berry", "opacity", "ganmask"];
			const results = await Promise.all(
				names.map((n) => bitmap(base + n + ".png")),
			);
			results.forEach((b, i) => {
				c.textures[names[i]] = c.imageTexture(b, false);
				b.close();
			});
			const cubeResponse = await fetch(base + "peach-lut.rgba");
			if (!cubeResponse.ok) throw new Error("Effect lookup table unavailable");
			const cube = new Uint8Array(await cubeResponse.arrayBuffer());
			if (cube.byteLength !== 64 * 64 * 64 * 4)
				throw new Error("Effect lookup table has an invalid size.");
			c.textures.lutCube = c.cubeTexture(cube);
			const r = await fetch(base + "filter.frag");
			if (!r.ok) throw new Error("Filter shader unavailable");
			// Retain the authored LUT quantization and the exact color-correction constants.
			let filter = cubeColorShader(await r.text());
			filter = filter
				.replace(
					"uniform highp sampler2D u_FBOTexture;",
					"uniform highp sampler2D u_FBOTexture;\nuniform float sourceFlip;",
				)
				.replace(
					"texture(u_FBOTexture, v2f_v_texCoord)",
					"texture(u_FBOTexture, vec2(v2f_v_texCoord.x,mix(v2f_v_texCoord.y,1.0-v2f_v_texCoord.y,sourceFlip)))",
				);
			c.programs.copy = c.program(VERT, COPY);
			c.programs.skin = c.program(VERT, SKIN);
			c.programs.filter = c.program(VERT, filter);
			c.programs.makeup = c.program(MESH_VERT, MAKEUP);
			await c.checkSyntheticStages();
			return c;
		} catch (e) {
			c.diagnostics.status = "error";
			c.diagnostics.error = e instanceof Error ? e.message : String(e);
			c.dispose();
			throw e;
		}
	}
	/** A small startup driver probe. Thresholds allow rounding/dithering and canvas
	 * privacy noise. Failure is diagnostic: it does not replace or disable effects. */
	private async checkSyntheticStages() {
		const source = document.createElement("canvas");
		source.width = reference.width;
		source.height = reference.height;
		const context = getSdrContext(source);
		const pixels = new ImageData(
			new Uint8ClampedArray(reference.input),
			source.width,
			source.height,
		);
		context.putImageData(pixels, 0, 0);
		const off = {
			...DEFAULT_SETTINGS,
			skinEnabled: false,
			colorEnabled: false,
			makeupEnabled: false,
		};
		const mesh: FaceMesh = {
			positions: new Float32Array([
				0,
				0,
				source.width,
				0,
				0,
				source.height,
				source.width,
				source.height,
			]),
			uv: new Float32Array([0, 1, 1, 1, 0, 0, 1, 0]),
			indices: new Uint16Array([0, 1, 2, 1, 3, 2]),
		};
		const rgba = new Float32Array(320 * 320 * 4);
		for (let i = 0; i < rgba.length; i += 4) rgba.set(reference.skinRGBA, i);
		const patch: SkinPatch = {
			rgba,
			size: 320,
			cropToSource: [source.width / 320, 0, 0, source.height / 320, 0, 0],
		};
		try {
			for (const stage of ["identity", "color", "skin", "makeup"] as const) {
				for (
					let i = 0;
					i < 16 && this.gl.getError() !== this.gl.NO_ERROR;
					i++
				) {}
				const settings = {
					...off,
					...(stage === "color"
						? { colorEnabled: true }
						: stage === "skin"
							? { skinEnabled: true, skin: reference.skinStrength }
							: stage === "makeup"
								? { makeupEnabled: true, contour: 1, lips: 1, berry: 1 }
								: {}),
				};
				const output = await this.render(
					source,
					source.width,
					source.height,
					stage === "skin" ? [patch] : [],
					stage === "makeup" ? [mesh] : [],
					settings,
				);
				try {
					const actual = getSdrContext(output).getImageData(
							0,
							0,
							output.width,
							output.height,
						).data,
						expected = reference.expected[stage],
						tolerance = reference.tolerance[stage];
					let maxError = 0,
						total = 0,
						outsideTolerance = 0;
					for (let i = 0; i < actual.length; i++) {
						const error = Math.abs(actual[i] - expected[i]);
						maxError = Math.max(maxError, error);
						total += error;
						if (error > tolerance) outsideTolerance++;
					}
					const glErrors: string[] = [];
					for (let i = 0; i < 16; i++) {
						const code = this.gl.getError();
						if (code === this.gl.NO_ERROR) break;
						glErrors.push(`0x${code.toString(16)}`);
					}
					this.diagnostics.checks[stage] = {
						passed: outsideTolerance === 0 && glErrors.length === 0,
						maxError,
						meanError: total / actual.length,
						tolerance,
						checkedChannels: actual.length,
						outsideTolerance,
						glErrors,
					};
				} finally {
					output.width = output.height = 1;
				}
			}
			this.diagnostics.status = Object.values(this.diagnostics.checks).every(
				(c) => c?.passed,
			)
				? "passed"
				: "failed";
		} catch (error) {
			this.diagnostics.status = "error";
			this.diagnostics.error =
				error instanceof Error ? error.message : String(error);
		} finally {
			source.width = source.height = 1;
		}
	}

	private program(v: string, f: string) {
		const gl = this.gl,
			p = gl.createProgram()!;
		for (const [type, text] of [
			[gl.VERTEX_SHADER, v],
			[gl.FRAGMENT_SHADER, f],
		] as const) {
			const s = gl.createShader(type)!;
			gl.shaderSource(s, text);
			gl.compileShader(s);
			if (!gl.getShaderParameter(s, gl.COMPILE_STATUS))
				throw new Error(gl.getShaderInfoLog(s) || "Shader compilation failed");
			gl.attachShader(p, s);
			gl.deleteShader(s);
		}
		gl.linkProgram(p);
		if (!gl.getProgramParameter(p, gl.LINK_STATUS))
			throw new Error(gl.getProgramInfoLog(p) || "Shader linking failed");
		return p;
	}
	private configure(t: WebGLTexture) {
		const gl = this.gl;
		gl.bindTexture(gl.TEXTURE_2D, t);
		gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.LINEAR);
		gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, gl.LINEAR);
		gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_S, gl.CLAMP_TO_EDGE);
		gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_T, gl.CLAMP_TO_EDGE);
	}
	private cubeTexture(bytes: Uint8Array) {
		const gl = this.gl,
			t = gl.createTexture();
		if (!t) throw new Error("Cannot allocate effect lookup table.");
		gl.bindTexture(gl.TEXTURE_3D, t);
		gl.texParameteri(gl.TEXTURE_3D, gl.TEXTURE_MIN_FILTER, gl.NEAREST);
		gl.texParameteri(gl.TEXTURE_3D, gl.TEXTURE_MAG_FILTER, gl.NEAREST);
		gl.texParameteri(gl.TEXTURE_3D, gl.TEXTURE_WRAP_S, gl.CLAMP_TO_EDGE);
		gl.texParameteri(gl.TEXTURE_3D, gl.TEXTURE_WRAP_T, gl.CLAMP_TO_EDGE);
		gl.texParameteri(gl.TEXTURE_3D, gl.TEXTURE_WRAP_R, gl.CLAMP_TO_EDGE);
		gl.pixelStorei(gl.UNPACK_FLIP_Y_WEBGL, false);
		gl.pixelStorei(gl.UNPACK_PREMULTIPLY_ALPHA_WEBGL, false);
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
		return t;
	}

	private imageTexture(image: TexImageSource, flip = false) {
		const gl = this.gl,
			t = gl.createTexture()!;
		this.configure(t);
		gl.pixelStorei(gl.UNPACK_FLIP_Y_WEBGL, flip);
		gl.pixelStorei(gl.UNPACK_PREMULTIPLY_ALPHA_WEBGL, false);
		gl.pixelStorei(gl.UNPACK_COLORSPACE_CONVERSION_WEBGL, gl.NONE);
		gl.texImage2D(gl.TEXTURE_2D, 0, gl.RGBA, gl.RGBA, gl.UNSIGNED_BYTE, image);
		gl.pixelStorei(gl.UNPACK_FLIP_Y_WEBGL, false);
		return t;
	}
	private use(p: WebGLProgram, buffer = this.quad) {
		const gl = this.gl;
		gl.useProgram(p);
		const loc = gl.getAttribLocation(p, "position");
		gl.bindBuffer(gl.ARRAY_BUFFER, buffer);
		gl.enableVertexAttribArray(loc);
		gl.vertexAttribPointer(loc, 2, gl.FLOAT, false, 0, 0);
	}
	private one(p: WebGLProgram, n: string, v: number) {
		this.gl.uniform1f(this.gl.getUniformLocation(p, n), v);
	}
	private two(p: WebGLProgram, n: string, x: number, y: number) {
		this.gl.uniform2f(this.gl.getUniformLocation(p, n), x, y);
	}
	private bind(p: WebGLProgram, n: string, t: WebGLTexture, unit: number) {
		const gl = this.gl;
		gl.activeTexture(gl.TEXTURE0 + unit);
		gl.bindTexture(gl.TEXTURE_2D, t);
		gl.uniform1i(gl.getUniformLocation(p, n), unit);
	}
	private draw() {
		this.gl.drawArrays(this.gl.TRIANGLES, 0, 6);
	}
	async render(
		source: CanvasImageSource,
		width: number,
		height: number,
		patches: readonly SkinPatch[],
		meshes: readonly FaceMesh[],
		settings: EffectSettings,
		options: CompositeOptions = {},
	): Promise<HTMLCanvasElement> {
		abort(options.signal);
		const scale = options.maxDimension
			? Math.min(1, options.maxDimension / Math.max(width, height))
			: 1;
		const out = document.createElement("canvas");
		out.width = Math.max(1, Math.round(width * scale));
		out.height = Math.max(1, Math.round(height * scale));
		const ctx = getSdrContext(out);
		const tile = document.createElement("canvas"),
			tc = getSdrContext(tile, { alpha: true });
		const gl = this.gl;
		const patchTextures: WebGLTexture[] = [];
		try {
			for (const patch of patches) {
				if (patch.rgba.length !== patch.size * patch.size * 4)
					throw new Error("Invalid skin model RGBA output");
				const t = gl.createTexture()!;
				patchTextures.push(t);
				this.configure(t);
				gl.texImage2D(
					gl.TEXTURE_2D,
					0,
					gl.RGBA8,
					patch.size,
					patch.size,
					0,
					gl.RGBA,
					gl.UNSIGNED_BYTE,
					quantizeGanRGBA(patch.rgba),
				);
			}
			const total =
				Math.ceil(out.width / this.tileLimit) *
				Math.ceil(out.height / this.tileLimit);
			let done = 0;
			for (let oy = 0; oy < out.height; oy += this.tileLimit)
				for (let ox = 0; ox < out.width; ox += this.tileLimit) {
					abort(options.signal);
					if (gl.isContextLost())
						throw new Error(
							"Graphics context lost. Retry with a smaller output size.",
						);
					const w = Math.min(this.tileLimit, out.width - ox),
						h = Math.min(this.tileLimit, out.height - oy);
					tile.width = w;
					tile.height = h;
					tc.clearRect(0, 0, w, h);
					tc.drawImage(
						source,
						ox / scale,
						oy / scale,
						w / scale,
						h / scale,
						0,
						0,
						w,
						h,
					);
					this.canvas.width = w;
					this.canvas.height = h;
					gl.viewport(0, 0, w, h);
					gl.disable(gl.BLEND);
					gl.disable(gl.DEPTH_TEST);
					let current = this.imageTexture(tile),
						flip = 0;
					const input = current;
					this.targets.forEach((t) => gl.deleteTexture(t));
					this.targets = [];
					for (let i = 0; i < 2; i++) {
						const t = gl.createTexture()!;
						this.targets.push(t);
						this.configure(t);
						gl.texImage2D(
							gl.TEXTURE_2D,
							0,
							gl.RGBA8,
							w,
							h,
							0,
							gl.RGBA,
							gl.UNSIGNED_BYTE,
							null,
						);
					}
					let pass = 0;
					const target = () => {
						const t = this.targets[pass++ % 2];
						gl.bindFramebuffer(gl.FRAMEBUFFER, this.fbo);
						gl.framebufferTexture2D(
							gl.FRAMEBUFFER,
							gl.COLOR_ATTACHMENT0,
							gl.TEXTURE_2D,
							t,
							0,
						);
						const status = gl.checkFramebufferStatus(gl.FRAMEBUFFER);
						if (status !== gl.FRAMEBUFFER_COMPLETE)
							throw new Error(
								`Graphics framebuffer is incomplete (0x${status.toString(16)}).`,
							);
						return t;
					};
					const common = (p: WebGLProgram) => {
						this.bind(p, "u_FBOTexture", current, 0);
						this.one(p, "sourceFlip", flip);
						this.two(p, "tileOrigin", ox / scale, oy / scale);
						this.two(p, "tileSize", w / scale, h / scale);
					};
					if (settings.skinEnabled && settings.skin > 0)
						for (let i = 0; i < patches.length; i++) {
							const t = target(),
								p = this.programs.skin;
							this.use(p);
							common(p);
							this.bind(p, "ganTexture", patchTextures[i], 1);
							this.bind(p, "maskTexture", this.textures.ganmask, 2);
							this.one(p, "strength", settings.skin);
							this.one(p, "cropSize", patches[i].size);
							gl.uniformMatrix3fv(
								gl.getUniformLocation(p, "sourceToCrop"),
								false,
								affineMatrix(invertAffine(patches[i].cropToSource)),
							);
							this.draw();
							current = t;
							flip = 1;
						}
					if (settings.colorEnabled) {
						const t = target(),
							p = this.programs.filter;
						this.use(p);
						common(p);
						gl.activeTexture(gl.TEXTURE1);
						gl.bindTexture(gl.TEXTURE_3D, this.textures.lutCube);
						gl.uniform1i(gl.getUniformLocation(p, "_LutCube"), 1);
						for (const [n, v] of Object.entries({
							_Intensity: settings.lut,
							_Brightness: settings.brightness,
							_Temperature: settings.temperature,
							_Tint: settings.tint,
							_Contrast: settings.contrast,
							_Saturation: settings.saturation,
							_Exposure: settings.exposure,
						}))
							this.one(p, n, v);
						this.draw();
						current = t;
						flip = 1;
					}
					if (settings.makeupEnabled)
						for (const [name, intensity, mode, opacity] of [
							["contour", settings.contour, 5, 1],
							["lips", settings.lips, 1, 1],
							["berry", settings.berry, 1, 0],
						] as const) {
							if (intensity <= 0 || meshes.length === 0) continue;
							const t = target();
							this.use(this.programs.copy);
							common(this.programs.copy);
							this.draw();
							const p = this.programs.makeup;
							this.use(p, this.vertex);
							common(p);
							this.bind(p, "makeupTexture", this.textures[name], 1);
							this.bind(p, "opacityTexture", this.textures.opacity, 2);
							this.one(p, "intensity", intensity);
							this.one(p, "opacityEnabled", opacity);
							gl.uniform1i(gl.getUniformLocation(p, "blendMode"), mode);
							for (const mesh of meshes) {
								gl.bindBuffer(gl.ARRAY_BUFFER, this.vertex);
								gl.bufferData(gl.ARRAY_BUFFER, mesh.positions, gl.DYNAMIC_DRAW);
								const loc = gl.getAttribLocation(p, "texCoord");
								gl.bindBuffer(gl.ARRAY_BUFFER, this.uv);
								gl.bufferData(gl.ARRAY_BUFFER, mesh.uv, gl.DYNAMIC_DRAW);
								gl.enableVertexAttribArray(loc);
								gl.vertexAttribPointer(loc, 2, gl.FLOAT, false, 0, 0);
								gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.index);
								gl.bufferData(
									gl.ELEMENT_ARRAY_BUFFER,
									mesh.indices,
									gl.DYNAMIC_DRAW,
								);
								gl.drawElements(
									gl.TRIANGLES,
									mesh.indices.length,
									gl.UNSIGNED_SHORT,
									0,
								);
								gl.disableVertexAttribArray(loc);
							}
							current = t;
							flip = 1;
						}
					gl.bindFramebuffer(gl.FRAMEBUFFER, null);
					this.use(this.programs.copy);
					common(this.programs.copy);
					this.draw();
					ctx.drawImage(this.canvas, ox, oy);
					gl.deleteTexture(input);
					options.onProgress?.(++done / total);
					await new Promise<void>((r) => setTimeout(r, 0));
				}
			return out;
		} finally {
			patchTextures.forEach((t) => gl.deleteTexture(t));
		}
	}
	dispose() {
		const gl = this.gl;
		Object.values(this.programs).forEach((p) => gl.deleteProgram(p));
		Object.values(this.textures).forEach((t) => gl.deleteTexture(t));
		this.targets.forEach((t) => gl.deleteTexture(t));
		[this.quad, this.vertex, this.uv, this.index].forEach((b) =>
			gl.deleteBuffer(b),
		);
		gl.deleteFramebuffer(this.fbo);
		gl.getExtension("WEBGL_lose_context")?.loseContext();
	}
}
export const createCompositor = (base?: string) => Compositor.create(base);
