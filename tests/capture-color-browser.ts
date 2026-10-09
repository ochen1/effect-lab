import { getSdrContext, describeCaptureColor } from "../src/capture-color";
import { createCompositor } from "../src/compositor";
import { DEFAULT_SETTINGS } from "../src/ui-types";
const off = {
	...DEFAULT_SETTINGS,
	skinEnabled: false,
	colorEnabled: false,
	makeupEnabled: false,
};
const report: Record<string, unknown> = {
	syntheticOnly: true,
	hardwareCameraTested: false,
	sources: [
		"https://html.spec.whatwg.org/multipage/canvas.html#colour-spaces-and-colour-space-conversion",
		"https://www.w3.org/TR/webcodecs/#videocolorspace",
		"https://www.w3.org/TR/mediacapture-streams/#constrainable-properties",
		"https://github.com/w3c-cg/ColorWeb-CG/blob/main/hdr-big-picture.md",
	],
	browser: navigator.userAgent,
};
function canvas(
	w: number,
	h: number,
	options?: CanvasRenderingContext2DSettings,
) {
	const c = document.createElement("canvas");
	c.width = w;
	c.height = h;
	const ctx = c.getContext("2d", options);
	if (!ctx) throw new Error("Canvas unavailable");
	return { c, ctx };
}
function data(c: HTMLCanvasElement) {
	return c
		.getContext("2d", { willReadFrequently: true })!
		.getImageData(0, 0, c.width, c.height).data;
}
function compare(a: Uint8ClampedArray, b: Uint8ClampedArray) {
	let max = 0,
		sum = 0;
	for (let i = 0; i < a.length; i++) {
		const d = Math.abs(a[i] - b[i]);
		max = Math.max(max, d);
		sum += d;
	}
	return { max, mean: sum / a.length };
}
function samples(c: HTMLCanvasElement) {
	const d = data(c),
		a = [];
	for (let x = 8; x < c.width; x += 16)
		a.push(
			Array.from(
				d.slice(
					(Math.floor(c.height / 2) * c.width + x) * 4,
					(Math.floor(c.height / 2) * c.width + x) * 4 + 4,
				),
			),
		);
	return a;
}
async function encodedRoundtrip(c: HTMLCanvasElement) {
	const blob = await new Promise<Blob>((resolve, reject) =>
		c.toBlob(
			(b) => (b ? resolve(b) : reject(new Error("PNG failed"))),
			"image/png",
		),
	);
	const bitmap = await createImageBitmap(blob),
		copy = canvas(c.width, c.height);
	copy.ctx.drawImage(bitmap, 0, 0);
	bitmap.close();
	return compare(data(c), data(copy.c));
}
async function throughVideo(frame: VideoFrame) {
	const Generator = (
		window as unknown as {
			MediaStreamTrackGenerator?: new (options: {
				kind: string;
			}) => MediaStreamTrack & { writable: WritableStream<VideoFrame> };
		}
	).MediaStreamTrackGenerator;
	if (!Generator) return { supported: false };
	const track = new Generator({ kind: "video" }),
		writer = track.writable.getWriter(),
		video = document.createElement("video");
	video.muted = true;
	video.playsInline = true;
	video.srcObject = new MediaStream([track]);
	document.body.append(video);
	const loaded = new Promise<void>((resolve, reject) => {
		video.onloadeddata = () => resolve();
		setTimeout(
			() => reject(new Error("Synthetic video did not become ready")),
			5000,
		);
	});
	let stopped = false;
	const play = video.play();
	const feed = (async () => {
		for (let i = 0; i < 12 && !stopped; i++) {
			await new Promise((r) => setTimeout(r, 30));
			const copy = new VideoFrame(frame, { timestamp: i * 33333 });
			await writer.write(copy);
			copy.close();
		}
	})();
	void feed.catch(() => {});
	try {
		await Promise.race([
			play,
			new Promise((_, reject) =>
				setTimeout(
					() => reject(new Error("Synthetic video playback stalled")),
					3000,
				),
			),
		]);
		if (video.readyState < 2) await loaded;
		const captured = canvas(frame.displayWidth, frame.displayHeight);
		captured.ctx.drawImage(video, 0, 0);
		const direct = canvas(frame.displayWidth, frame.displayHeight);
		direct.ctx.drawImage(frame, 0, 0);
		const extracted = new VideoFrame(video, { timestamp: 0 });
		const metadata = extracted.colorSpace.toJSON();
		extracted.close();
		return {
			supported: true,
			colorSpace: metadata,
			captureMetadata: describeCaptureColor(video, captured.c, track),
			captureVsDirectFrame: compare(data(captured.c), data(direct.c)),
			samples: samples(captured.c),
			pngRoundtrip: await encodedRoundtrip(captured.c),
		};
	} finally {
		stopped = true;
		video.pause();
		video.srcObject = null;
		video.remove();
		track.stop();
		void writer.abort().catch(() => {});
	}
}
const rgba = new Uint8Array(128 * 32 * 4);
const patches = [
	[0, 0, 0],
	[16, 16, 16],
	[64, 64, 64],
	[128, 128, 128],
	[192, 192, 192],
	[235, 235, 235],
	[192, 128, 96],
	[80, 140, 190],
];
for (let y = 0; y < 32; y++)
	for (let x = 0; x < 128; x++) {
		rgba.set([...patches[Math.floor(x / 16)], 255], (y * 128 + x) * 4);
	}
async function main() {
	const compositor = await createCompositor("../effects/boy-ii/");
	const probe = canvas(1, 1);
	report.defaultCanvas = {
		attributes: probe.ctx.getContextAttributes(),
		globalHDRHeadroom:
			(probe.ctx as unknown as { globalHDRHeadroom?: number })
				.globalHDRHeadroom ?? "unavailable",
		globalLinearHDRHeadroom:
			(probe.ctx as unknown as { globalLinearHDRHeadroom?: number })
				.globalLinearHDRHeadroom ?? "unavailable",
		toneMapping:
			(probe.ctx as unknown as { toneMapping?: unknown }).toneMapping ??
			"unavailable",
	};
	report.supportedConstraints =
		navigator.mediaDevices?.getSupportedConstraints();
	for (const [name, primaries, transfer] of [
		["srgb", "bt709", "iec61966-2-1"],
		["displayP3", "smpte432", "iec61966-2-1"],
		["hdrPQ", "bt2020", "pq"],
		["hdrHLG", "bt2020", "hlg"],
	] as const) {
		try {
			const frame = new VideoFrame(rgba, {
				format: "RGBA",
				codedWidth: 128,
				codedHeight: 32,
				timestamp: 0,
				colorSpace: { primaries, transfer, matrix: "rgb", fullRange: true },
			});
			const standard = canvas(128, 32),
				explicit = canvas(128, 32, { colorSpace: "srgb" });
			getSdrContext(explicit.c);
			standard.ctx.drawImage(frame, 0, 0);
			explicit.ctx.drawImage(frame, 0, 0);
			const output = await compositor.render(standard.c, 128, 32, [], [], off);
			report[name] = {
				frameColorSpace: frame.colorSpace.toJSON(),
				samples: samples(standard.c),
				explicitSrgbDifference: compare(data(standard.c), data(explicit.c)),
				compositorIdentity: compare(data(standard.c), data(output)),
				pngRoundtrip: await encodedRoundtrip(standard.c),
				htmlVideoCapture: await throughVideo(frame),
			};
			frame.close();
			const label = document.createElement("p");
			label.textContent = name;
			document.querySelector("#samples")!.append(label, standard.c);
		} catch (e) {
			report[name] = { error: String(e) };
		}
	}
	const p3 = canvas(128, 32, { colorSpace: "display-p3" });
	for (let i = 0; i < 8; i++) {
		p3.ctx.fillStyle = `color(display-p3 ${patches[i].map((n) => n / 255).join(" ")})`;
		p3.ctx.fillRect(i * 16, 0, 16, 32);
	}
	const p3s = canvas(128, 32, { colorSpace: "srgb" });
	p3s.ctx.drawImage(p3.c, 0, 0);
	report.p3Canvas = {
		sourceAttributes: p3.ctx.getContextAttributes(),
		convertedSamples: samples(p3s.c),
		sameAsDeclaredP3Frame:
			JSON.stringify(samples(p3s.c)) ===
			JSON.stringify((report.displayP3 as { samples: unknown }).samples),
	};
	const yuv = new Uint8Array((128 * 32 * 3) / 2);
	for (let y = 0; y < 32; y++)
		for (let x = 0; x < 128; x++)
			yuv[y * 128 + x] = [16, 32, 64, 100, 128, 180, 220, 235][
				Math.floor(x / 16)
			];
	yuv.fill(128, 128 * 32);
	for (const fullRange of [false, true]) {
		const frame = new VideoFrame(yuv, {
			format: "I420",
			codedWidth: 128,
			codedHeight: 32,
			timestamp: 0,
			colorSpace: {
				primaries: "bt709",
				transfer: "bt709",
				matrix: "bt709",
				fullRange,
			},
		});
		const target = canvas(128, 32);
		target.ctx.drawImage(frame, 0, 0);
		report[fullRange ? "yuvFullRange" : "yuvLimitedRange"] = {
			colorSpace: frame.colorSpace.toJSON(),
			samples: samples(target.c),
		};
		frame.close();
	}
	compositor.dispose();
	report.passed = ["srgb", "displayP3", "hdrPQ", "hdrHLG"].every((n) => {
		const r = report[n] as {
			compositorIdentity?: { max: number };
			explicitSrgbDifference?: { max: number };
			pngRoundtrip?: { max: number };
			htmlVideoCapture?: {
				supported: boolean;
				captureVsDirectFrame: { max: number };
				pngRoundtrip: { max: number };
				captureMetadata: { source: { dynamicRange: string } };
			};
		};
		return (
			r.compositorIdentity?.max === 0 &&
			r.explicitSrgbDifference?.max === 0 &&
			r.pngRoundtrip?.max === 0 &&
			r.htmlVideoCapture?.supported === true &&
			r.htmlVideoCapture.captureVsDirectFrame.max === 0 &&
			r.htmlVideoCapture.pngRoundtrip.max === 0 &&
			r.htmlVideoCapture.captureMetadata.source.dynamicRange ===
				(n.startsWith("hdr") ? "hdr" : "sdr")
		);
	});
	document.querySelector("#state")!.textContent = report.passed
		? "Synthetic color capture and roundtrips passed"
		: "Investigate color discrepancy";
	document.querySelector("#report")!.textContent = JSON.stringify(
		report,
		null,
		2,
	);
	return report;
}
async function cameraMetadata() {
	const devices = await navigator.mediaDevices.enumerateDevices();
	const counts = {
		cameras: devices.filter((d) => d.kind === "videoinput").length,
	};
	let permission = "unknown";
	try {
		permission = (
			await navigator.permissions.query({ name: "camera" as PermissionName })
		).state;
	} catch {}
	if (permission === "denied")
		return { ...counts, permission, attempted: false };
	let timedOut = false;
	const request = navigator.mediaDevices.getUserMedia({
		video: {
			facingMode: { ideal: "user" },
			width: { ideal: 1280 },
			height: { ideal: 720 },
		},
		audio: false,
	});
	request.then(
		(s) => {
			if (timedOut) s.getTracks().forEach((t) => t.stop());
		},
		() => {},
	);
	let stream: MediaStream;
	try {
		stream = await Promise.race([
			request,
			new Promise<never>((_, reject) =>
				setTimeout(() => {
					timedOut = true;
					reject(
						new Error(
							"Camera permission or startup not completed within 10 seconds",
						),
					);
				}, 10000),
			),
		]);
	} catch (error) {
		return { ...counts, permission, attempted: true, error: String(error) };
	}
	const video = document.createElement("video");
	video.muted = true;
	video.playsInline = true;
	video.srcObject = stream;
	document.body.append(video);
	try {
		await video.play();
		if (video.readyState < 2)
			await new Promise<void>((resolve, reject) => {
				video.onloadeddata = () => resolve();
				setTimeout(() => reject(new Error("No camera frame")), 5000);
			});
		const track = stream.getVideoTracks()[0];
		const settings = { ...track.getSettings() } as Record<string, unknown>,
			capabilities = { ...track.getCapabilities() } as Record<string, unknown>;
		delete settings.deviceId;
		delete settings.groupId;
		delete capabilities.deviceId;
		delete capabilities.groupId;
		const frame = new VideoFrame(video, { timestamp: 0 });
		const colors = frame.colorSpace.toJSON();
		frame.close();
		return {
			...counts,
			permission,
			attempted: true,
			settings,
			capabilities,
			videoFrameColorSpace: colors,
		};
	} finally {
		stream.getTracks().forEach((t) => t.stop());
		video.srcObject = null;
		video.remove();
	}
}
(
	window as unknown as {
		captureColorValidation: Promise<unknown>;
		captureCameraMetadata: () => Promise<unknown>;
	}
).captureColorValidation = main().catch((e) => {
	report.error = String(e);
	document.querySelector("#report")!.textContent = JSON.stringify(
		report,
		null,
		2,
	);
	return report;
});
(
	window as unknown as { captureCameraMetadata: () => Promise<unknown> }
).captureCameraMetadata = cameraMetadata;
document.querySelector("#camera")!.addEventListener("click", async () => {
	document.querySelector("#state")!.textContent = JSON.stringify(
		await cameraMetadata(),
	);
});
