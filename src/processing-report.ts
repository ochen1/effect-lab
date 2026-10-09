import { getSdrContext, describeCaptureColor } from "./capture-color";
import { getCompositorDiagnostics } from "./compositor";
import { getSkinStatus, getSkinBackendPreference } from "./inference";
import type { EffectSettings } from "./ui-types";

/** Generated colors only. A report never includes photographs or landmark arrays. */
export function checkCanvasReadback() {
	const canvas = document.createElement("canvas");
	canvas.width = 128;
	canvas.height = 16;
	try {
		const context = getSdrContext(canvas, { willReadFrequently: true });
		const expected = context.createImageData(canvas.width, canvas.height);
		for (let i = 0; i < expected.data.length; i += 4) {
			const pixel = i / 4;
			expected.data[i] = pixel % 256;
			expected.data[i + 1] = (pixel * 7 + 31) % 256;
			expected.data[i + 2] = (pixel * 13 + 73) % 256;
			expected.data[i + 3] = 255;
		}
		context.putImageData(expected, 0, 0);
		const actual = context.getImageData(0, 0, canvas.width, canvas.height).data;
		let sum = 0,
			maximum = 0;
		for (let i = 0; i < actual.length; i++) {
			const delta = Math.abs(actual[i] - expected.data[i]);
			sum += delta;
			maximum = Math.max(maximum, delta);
		}
		const mean = sum / actual.length;
		return {
			passed: maximum <= 2 && mean <= 0.5,
			meanByteError: mean,
			maxByteError: maximum,
			synthetic: true,
		};
	} catch (error) {
		return { passed: false, error: String(error), synthetic: true };
	} finally {
		canvas.width = canvas.height = 1;
	}
}

export async function collectProcessingReport(settings: EffectSettings) {
	let brave: boolean | null = null;
	try {
		const api = navigator as Navigator & {
			brave?: { isBrave(): Promise<boolean> };
		};
		if (api.brave) brave = await api.brave.isBrave();
	} catch {
		/* Unknown browser identification is fine. */
	}
	const video = document.getElementById(
		"motion-source",
	) as HTMLVideoElement | null;
	const stream =
		typeof MediaStream !== "undefined" &&
		video?.srcObject instanceof MediaStream
			? video.srcObject
			: undefined;
	return {
		schemaVersion: 1,
		createdAt: new Date().toISOString(),
		privacy:
			"Generated test colors, browser information, settings and numerical checks only. No photos or face landmarks. Nothing is uploaded.",
		browser: { userAgent: navigator.userAgent, brave },
		bundles: [...document.scripts].map((script) => script.src).filter(Boolean),
		preference: getSkinBackendPreference(),
		skin: getSkinStatus(),
		compositor: getCompositorDiagnostics(),
		canvas: checkCanvasReadback(),
		captureColor:
			video && video.readyState >= 2
				? describeCaptureColor(video, undefined, stream?.getVideoTracks()[0])
				: null,
		settings: { ...settings },
	};
}
