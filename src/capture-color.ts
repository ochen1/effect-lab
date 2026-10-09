/** Every editing/capture surface is SDR sRGB. Browser drawImage performs the
 * source's color/transfer/range conversion; do not reinterpret P3/PQ bytes as RGB.
 */
const SDR_OPTIONS = {
	colorSpace: "srgb",
	colorType: "unorm8",
	toneMapping: { mode: "standard" },
} as const;

export function getSdrContext(
	canvas: HTMLCanvasElement,
	options: Pick<
		CanvasRenderingContext2DSettings,
		"alpha" | "willReadFrequently"
	> = {},
): CanvasRenderingContext2D {
	const context = canvas.getContext("2d", { ...options, ...SDR_OPTIONS });
	if (!context) throw new Error("This browser cannot create an image canvas.");
	// A context's color space is fixed at first creation; detect an incompatible reuse.
	const attributes = context.getContextAttributes?.() as
		| (CanvasRenderingContext2DSettings & { colorType?: string })
		| undefined;
	if (
		(attributes?.colorSpace && attributes.colorSpace !== "srgb") ||
		(attributes?.colorType && attributes.colorType !== "unorm8")
	) {
		throw new Error("The capture canvas must use 8-bit sRGB color.");
	}
	return context;
}

interface FrameColors {
	primaries: string | null;
	transfer: string | null;
	matrix: string | null;
	fullRange: boolean | null;
}
export interface CaptureColorMetadata {
	version: 1;
	conversion: "browser-managed-to-srgb";
	output: { colorSpace: "srgb"; colorType: "unorm8"; toneMapping: "standard" };
	source: {
		width: number;
		height: number;
		format: string | null;
		colorSpace: FrameColors | null;
		dynamicRange: "hdr" | "sdr" | "unknown";
	};
	camera?: {
		settings?: Record<string, unknown>;
		capabilities?: Record<string, unknown>;
	};
	canvas?: Record<string, unknown>;
}
function withoutDeviceIdentifiers(value: object): Record<string, unknown> {
	return Object.fromEntries(
		Object.entries(value).filter(
			([key]) => key !== "deviceId" && key !== "groupId",
		),
	);
}

/** Capture metadata only, at the same synchronous boundary as the saved frame.
 * Never reads or serializes image pixels; missing browser metadata stays unknown.
 * No camera HDR toggle is assumed: getUserMedia has no portable HDR constraint.
 */
export function describeCaptureColor(
	video: HTMLVideoElement,
	canvas?: HTMLCanvasElement,
	track?: MediaStreamTrack,
): CaptureColorMetadata {
	const result: CaptureColorMetadata = {
		version: 1,
		conversion: "browser-managed-to-srgb",
		output: {
			colorSpace: "srgb",
			colorType: "unorm8",
			toneMapping: "standard",
		},
		source: {
			width: video.videoWidth,
			height: video.videoHeight,
			format: null,
			colorSpace: null,
			dynamicRange: "unknown",
		},
	};
	if (typeof VideoFrame !== "undefined" && video.readyState >= 2) {
		let frame: VideoFrame | undefined;
		try {
			frame = new VideoFrame(video, { timestamp: 0 });
			const colors = frame.colorSpace.toJSON();
			result.source.format = frame.format;
			result.source.colorSpace = {
				primaries: colors.primaries ?? null,
				transfer: colors.transfer ?? null,
				matrix: colors.matrix ?? null,
				fullRange: colors.fullRange ?? null,
			};
			const transfer: string | null = colors.transfer ?? null;
			result.source.dynamicRange =
				transfer === "pq" || transfer === "hlg"
					? "hdr"
					: transfer === "iec61966-2-1" ||
							transfer === "bt709" ||
							transfer === "smpte170m"
						? "sdr"
						: "unknown";
		} catch {
			// Diagnostics must not prevent a snapshot on browsers without this path.
		} finally {
			frame?.close();
		}
	}
	if (track) {
		result.camera = {};
		try {
			result.camera.settings = withoutDeviceIdentifiers(track.getSettings());
		} catch {}
		try {
			if (typeof track.getCapabilities === "function")
				result.camera.capabilities = withoutDeviceIdentifiers(
					track.getCapabilities(),
				);
		} catch {}
	}
	if (canvas) {
		try {
			const attributes = getSdrContext(canvas).getContextAttributes?.();
			if (attributes) result.canvas = { ...attributes };
		} catch {}
	}
	return result;
}
