import { expect, test } from "bun:test";
import { describeCaptureColor, getSdrContext } from "../src/capture-color";

function withVideoFrame(value: unknown, run: () => void) {
	const previous = Object.getOwnPropertyDescriptor(globalThis, "VideoFrame");
	Object.defineProperty(globalThis, "VideoFrame", {
		configurable: true,
		writable: true,
		value,
	});
	try {
		run();
	} finally {
		if (previous) Object.defineProperty(globalThis, "VideoFrame", previous);
		else Reflect.deleteProperty(globalThis, "VideoFrame");
	}
}
const video = {
	videoWidth: 1280,
	videoHeight: 720,
	readyState: 2,
} as HTMLVideoElement;

test("capture metadata recognizes encoded HDR, closes the temporary frame, and removes device identifiers", () => {
	let closed = 0;
	class Frame {
		format = "NV12";
		colorSpace = {
			toJSON: () => ({
				primaries: "bt2020",
				transfer: "pq",
				matrix: "bt2020-ncl",
				fullRange: false,
			}),
		};
		close() {
			closed++;
		}
	}
	const track = {
		getSettings: () => ({
			deviceId: "secret-device",
			groupId: "secret-group",
			width: 1280,
			height: 720,
		}),
		getCapabilities: () => ({
			deviceId: "secret-device",
			groupId: "secret-group",
			frameRate: { min: 1, max: 60 },
		}),
	} as unknown as MediaStreamTrack;
	withVideoFrame(Frame, () => {
		const result = describeCaptureColor(video, undefined, track);
		expect(result.source.dynamicRange).toBe("hdr");
		expect(result.source.colorSpace?.fullRange).toBe(false);
		expect(result.source.format).toBe("NV12");
		expect(result.camera?.settings).toEqual({ width: 1280, height: 720 });
		expect(result.camera?.capabilities).toEqual({
			frameRate: { min: 1, max: 60 },
		});
		expect(JSON.stringify(result)).not.toContain("secret");
		expect(closed).toBe(1);
	});
});

test("P3 alone does not classify a source as HDR", () => {
	withVideoFrame(
		class {
			format = "RGBA";
			colorSpace = {
				toJSON: () => ({
					primaries: "smpte432",
					transfer: "iec61966-2-1",
					matrix: "rgb",
					fullRange: true,
				}),
			};
			close() {}
		},
		() => expect(describeCaptureColor(video).source.dynamicRange).toBe("sdr"),
	);
});

test("unavailable video metadata stays unknown without blocking capture", () => {
	withVideoFrame(undefined, () =>
		expect(describeCaptureColor(video).source.dynamicRange).toBe("unknown"),
	);
	withVideoFrame(
		class {
			constructor() {
				throw new Error("Unsupported source");
			}
		},
		() => {
			const result = describeCaptureColor(video);
			expect(result.source.colorSpace).toBeNull();
			expect(result.source.dynamicRange).toBe("unknown");
		},
	);
});

test("an existing wide-gamut target cannot silently bypass the SDR capture contract", () => {
	const incompatible = {
		getContext: () => ({
			getContextAttributes: () => ({
				colorSpace: "display-p3",
				colorType: "unorm8",
			}),
		}),
	} as unknown as HTMLCanvasElement;
	expect(() => getSdrContext(incompatible)).toThrow("8-bit sRGB");
});
