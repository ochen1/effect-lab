import type { EffectSettings } from "./ui-types";
import { createFramePump } from "./frame-pump";
import { describeCaptureColor, getSdrContext } from "./capture-color";

export type MotionMode = "video" | "camera";
export interface MotionExportItem {
	file: File;
	kind: "original" | "edited" | "settings";
	release?: () => Promise<void>;
}
type PairedRecordingSession = Awaited<
	ReturnType<typeof import("./live-recording").startPairedRecording>
>;
interface MotionPipeline {
	warm(signal?: AbortSignal): Promise<void>;
	processFrame(
		source: CanvasImageSource,
		width: number,
		height: number,
		settings: EffectSettings,
		options: { maxDimension: number | null; signal?: AbortSignal },
	): Promise<HTMLCanvasElement>;
}
interface MotionActivity {
	busy: boolean;
	hasMedia: boolean;
	recording: boolean;
	exporting: boolean;
}
interface MotionOptions {
	getPipeline(): Promise<MotionPipeline>;
	getSettings(): EffectSettings;
	onStatus(message: string, busy?: boolean): void;
	onError(message: string): void;
	onActivity(activity: MotionActivity): void;
	onExport(file: File, release?: () => Promise<void>): void;
	onExportBatch(
		files: MotionExportItem[],
		title?: string,
	): Promise<void> | void;
}

const e = <T extends HTMLElement = HTMLElement>(id: string) =>
	document.getElementById(id)! as T;
const text = (error: unknown) =>
	error instanceof Error ? error.message : String(error);
const aborted = (error: unknown) =>
	error instanceof Error && error.name === "AbortError";
const time = (value: number) => {
	const seconds = Math.max(0, Math.floor(value || 0));
	return `${Math.floor(seconds / 60)}:${String(seconds % 60).padStart(2, "0")}`;
};
const abortError = () => new DOMException("Cancelled", "AbortError");
const stopTracks = (stream?: MediaStream) =>
	stream?.getTracks().forEach((track) => track.stop());

function mediaReady(video: HTMLVideoElement, signal: AbortSignal) {
	if (
		video.readyState >= HTMLMediaElement.HAVE_CURRENT_DATA &&
		video.videoWidth
	)
		return Promise.resolve();
	return new Promise<void>((resolve, reject) => {
		const finish = (error?: Error) => {
			video.removeEventListener("loadeddata", ready);
			video.removeEventListener("error", fail);
			signal.removeEventListener("abort", cancel);
			error ? reject(error) : resolve();
		};
		const ready = () => finish();
		const fail = () =>
			finish(
				new Error(
					"This browser could not play this video. Try an MP4 or WebM file.",
				),
			);
		const cancel = () => finish(abortError());
		video.addEventListener("loadeddata", ready, { once: true });
		video.addEventListener("error", fail, { once: true });
		signal.addEventListener("abort", cancel, { once: true });
		if (signal.aborted) cancel();
	});
}

function blobFrom(canvas: HTMLCanvasElement): Promise<Blob> {
	return new Promise((resolve, reject) =>
		canvas.toBlob(
			(blob) =>
				blob
					? resolve(blob)
					: reject(new Error("The browser could not save this frame.")),
			"image/png",
		),
	);
}

/** Owns media devices and playback. Photo pipeline state remains untouched. */
export function createMotionController(options: MotionOptions) {
	e("motion-stage").innerHTML = `
    <div class="motion-welcome" id="motion-welcome"><span class="eyebrow" id="motion-eyebrow">A LITTLE MOVEMENT</span><h2 id="motion-heading">Give your look<br /><em>some motion.</em></h2><p id="motion-description">Choose a video from your device.<br />Every exported frame gets the full effect.</p><button class="button button-primary" id="motion-start">Choose a video ↗</button><span class="motion-private">Processed here. Never uploaded.</span></div>
    <div class="motion-picture" id="motion-picture" hidden><canvas id="motion-filtered" aria-label="Filtered video preview"></canvas><canvas id="motion-original" aria-label="Original video frame" hidden></canvas><span class="image-corner-label" id="motion-image-label">BOY II</span><span class="record-indicator" id="record-indicator" hidden><i></i><span id="record-time">0:00</span></span></div>
    <div class="stage-busy" id="motion-loading" hidden><span class="spinner"></span><strong id="motion-loading-label">Getting ready…</strong><span>Processing tools stay on your device.</span><button class="button button-small" id="motion-cancel-load">Cancel</button></div>
    <video id="motion-source" class="decoder-video" playsinline muted preload="auto"></video>`;
	e("motion-controls").innerHTML = `
    <div class="motion-toolbar"><button class="button button-small" id="motion-replace">Change video</button><button class="button button-small" id="video-download-original" disabled>Save original video</button><button class="button button-small" id="motion-original-toggle" disabled aria-pressed="false">Show original</button><button class="button button-small" id="camera-switch" hidden>Switch camera</button><button class="button button-small" id="camera-stop" hidden>Stop camera</button></div>
    <div class="motion-capture-actions"><button id="motion-shutter" class="button button-primary" aria-label="Capture original and edited frame" disabled>◉ Capture photo</button><button id="camera-record-preview" class="button button-small" aria-label="Start recording original and edited videos" hidden disabled>● Record video</button><button id="motion-cancel-action" class="button button-small" hidden>Cancel</button><label class="media-checkbox" id="camera-microphone-wrap" hidden><input id="camera-microphone" type="checkbox" /> Microphone in both recordings</label><span id="motion-capture-size" class="motion-note">Saves an original and an edited version.</span></div>
    <div class="video-transport" id="video-transport" hidden><button id="video-play" class="button button-small" aria-label="Play video">Play</button><label class="sr-only" for="video-seek">Video position</label><input id="video-seek" class="slider" type="range" min="0" max="1" value="0" step="0.01" /><span id="video-time">0:00 / 0:00</span><label class="media-checkbox"><input id="video-sound" type="checkbox" /> Sound</label></div>
    <p class="motion-note" id="motion-fps" role="status">Preview speed depends on your device.</p>`;
	e("motion-export-area").innerHTML = `
    <div id="video-export-options"><div class="export-meta"><label for="video-resolution">Export size</label><select id="video-resolution"><option value="original" selected>Original resolution</option><option value="1080">1080 px</option><option value="720">720 px · fastest</option></select></div><p class="motion-note">Size limits the longest edge. Every source frame is processed.</p><label class="media-checkbox"><input id="video-keep-audio" type="checkbox" checked /> Keep original audio</label><button id="video-export" class="button button-export" aria-label="Export video" disabled><span>Export video</span>↗</button></div>
    <div id="camera-export-options" hidden><button id="camera-record" class="button button-export" aria-label="Start recording original and edited videos" disabled><span>Record original + edited</span>●</button><p class="motion-note">The original keeps the camera’s stream size and cadence. The edited recording uses the filtered preview size and processing speed. Recording requires available device storage; microphone is off unless selected above.</p></div>
    <button id="motion-snapshot" class="button button-small motion-snapshot" disabled>Capture original + edited photo ↗</button><div id="motion-export-progress" class="export-progress" hidden><progress id="video-progress" max="1" value="0" aria-label="Capture or video export progress"></progress><button id="video-cancel-export" class="text-button">Cancel</button></div><p class="export-note" id="motion-export-note">Your video stays on this device.</p>
    <input id="video-input" type="file" accept="video/*" hidden />`;

	const video = e<HTMLVideoElement>("motion-source");
	const filtered = e<HTMLCanvasElement>("motion-filtered");
	const original = e<HTMLCanvasElement>("motion-original");
	const capture = document.createElement("canvas");
	let mode: MotionMode | null = null;
	let engine: MotionPipeline | undefined;
	let generation = 0;
	let requestSerial = 0;
	let controller: AbortController | undefined;
	let frameController: AbortController | undefined;
	let exportController: AbortController | undefined;
	let stream: MediaStream | undefined;
	let microphone: MediaStream | undefined;
	let videoUrl: string | undefined;
	let file: File | undefined;
	let sourceName = "video";
	let face = "user";
	let ready = false;
	let loading = false;
	let exporting = false;
	let capturing = false;
	let snapshotController: AbortController | undefined;
	let revision = 1;
	let renderedRevision = 0;
	let renderedTime = -1;
	let renderedFrameKey = -1;
	let showOriginal = false;
	let canExport = false;
	let sourceHasAudio = false;
	let lastFrameAt = 0;
	let fps = 0;
	let recordingSession: PairedRecordingSession | undefined;
	let recordingController: AbortController | undefined;
	let recordingInitialSettings: EffectSettings | undefined;
	let recordingCaptureColor: ReturnType<typeof describeCaptureColor> | undefined;
	let recordingBaseName = "";
	let recordingAt = 0;
	let recordTimer = 0;
	let recordFinished: Promise<void> | undefined;
	let recordingStarting = false;
	let recordingStopping = false;
	let finalizingRecording = false;

	function activity() {
		const recording =
			Boolean(
				recordingSession &&
					(recordingSession.state === "recording" ||
						recordingSession.state === "stopping"),
			) ||
			recordingStarting ||
			recordingStopping;
		options.onActivity({
			busy:
				loading ||
				exporting ||
				capturing ||
				recordingStarting ||
				finalizingRecording,
			hasMedia: ready,
			recording,
			exporting,
		});
		e<HTMLButtonElement>("video-export").disabled =
			!ready || !canExport || exporting || loading || capturing;
		e<HTMLButtonElement>("motion-snapshot").disabled =
			!ready ||
			exporting ||
			loading ||
			capturing ||
			recording ||
			finalizingRecording;
		e<HTMLButtonElement>("motion-shutter").disabled =
			e<HTMLButtonElement>("motion-snapshot").disabled;
		e<HTMLButtonElement>("video-download-original").disabled =
			!file || loading || exporting || capturing;
		e<HTMLButtonElement>("motion-original-toggle").disabled =
			!ready || exporting || capturing;
		e<HTMLButtonElement>("camera-record").disabled =
			(!ready && !recording) ||
			exporting ||
			capturing ||
			loading ||
			recordingStarting ||
			recordingStopping ||
			finalizingRecording;
		e<HTMLButtonElement>("camera-record-preview").disabled =
			e<HTMLButtonElement>("camera-record").disabled;
		e<HTMLButtonElement>("camera-switch").disabled =
			!ready || recording || loading || capturing || finalizingRecording;
		e<HTMLButtonElement>("camera-stop").disabled =
			!stream && !loading && !recording;
		e<HTMLInputElement>("camera-microphone").disabled =
			recording || loading || finalizingRecording;
		for (const id of [
			"video-resolution",
			"video-keep-audio",
			"video-play",
			"video-seek",
			"motion-replace",
		])
			e<HTMLInputElement>(id).disabled = loading || exporting || capturing;
		e<HTMLInputElement>("video-keep-audio").disabled =
			loading || exporting || capturing || !sourceHasAudio;
		e("motion-export-progress").hidden =
			!exporting && !capturing && !finalizingRecording;
		e("motion-cancel-action").hidden =
			!exporting && !capturing && !finalizingRecording;
	}

	function fail(error: unknown) {
		if (aborted(error)) return;
		loading = false;
		ready = false;
		e("motion-loading").hidden = true;
		e("motion-welcome").hidden = false;
		e("motion-picture").hidden = true;
		const message =
			error instanceof DOMException &&
			["NotAllowedError", "PermissionDeniedError"].includes(error.name)
				? "Camera or microphone access was denied. Enable access in your browser’s site settings, then try again."
				: error instanceof DOMException &&
						["NotFoundError", "DevicesNotFoundError"].includes(error.name)
					? "No matching camera or microphone was found on this device."
					: error instanceof DOMException && error.name === "NotReadableError"
						? "This camera is already in use or could not start. Close other camera apps and try again."
						: text(error);
		options.onError(message);
		options.onStatus("Media processing stopped");
		activity();
	}

	function paint(
		target: HTMLCanvasElement,
		source: CanvasImageSource,
		width: number,
		height: number,
	) {
		if (target.width !== width || target.height !== height) {
			target.width = width;
			target.height = height;
		}
		const context = getSdrContext(target);
		context.clearRect(0, 0, width, height);
		context.drawImage(source, 0, 0, width, height);
	}

	async function frame() {
		if (
			!mode ||
			!engine ||
			exporting ||
			capturing ||
			video.seeking ||
			video.readyState < 2 ||
			!video.videoWidth
		)
			return;
		const currentTime = video.currentTime;
		const frameKey =
			video.getVideoPlaybackQuality?.().totalVideoFrames || currentTime;
		if (ready && frameKey === renderedFrameKey && renderedRevision === revision)
			return;
		const version = generation;
		const frameRevision = revision;
		const scale = Math.min(1, 720 / video.videoWidth, 720 / video.videoHeight);
		const recording =
			recordingStarting ||
			Boolean(
				recordingSession &&
					(recordingSession.state === "recording" ||
						recordingSession.state === "stopping"),
			);
		const width = recording
			? filtered.width
			: Math.max(1, Math.round(video.videoWidth * scale));
		const height = recording
			? filtered.height
			: Math.max(1, Math.round(video.videoHeight * scale));
		// Snapshot before awaiting inference. This buffer cannot change while in flight.
		paint(capture, video, width, height);
		const abort = new AbortController();
		frameController = abort;
		const result = await engine.processFrame(
			capture,
			width,
			height,
			{ ...options.getSettings(), faceIndex: 0 },
			{ maxDimension: 720, signal: abort.signal },
		);
		try {
			if (abort.signal.aborted || version !== generation || exporting) return;
			paint(original, capture, result.width, result.height);
			paint(filtered, result, result.width, result.height);
			renderedTime = currentTime;
			renderedFrameKey = frameKey;
			renderedRevision = frameRevision;
			const now = performance.now();
			if (lastFrameAt)
				fps = fps
					? fps * 0.7 + (1000 / (now - lastFrameAt)) * 0.3
					: 1000 / (now - lastFrameAt);
			lastFrameAt = now;
			e("motion-fps").textContent =
				mode === "camera"
					? `Edited preview · ${fps ? fps.toFixed(1) : "…"} fps. Original recording follows the camera independently.`
					: `Preview · ${fps ? fps.toFixed(1) : "…"} fps. Export processes every source frame.`;
			e("motion-export-note").textContent =
				mode === "camera"
					? `Original recording: ${video.videoWidth} × ${video.videoHeight}. Edited recording: ${filtered.width} × ${filtered.height} px.`
					: "Your video stays on this device.";
			e("motion-capture-size").textContent =
				`Photos: original + edited at ${video.videoWidth} × ${video.videoHeight} px`;
			if (!ready) {
				ready = true;
				loading = false;
				e("motion-welcome").hidden = true;
				e("motion-picture").hidden = false;
				e("motion-loading").hidden = true;
				activity();
				options.onStatus(
					mode === "camera"
						? "Camera is live on this device"
						: "Your video is ready",
				);
			}
		} finally {
			result.width = result.height = 1;
		}
	}

	const pump = createFramePump(frame, (error) => {
		if (aborted(error)) return;
		void endRecording(true);
		stopTracks(stream);
		stream = undefined;
		video.pause();
		fail(error);
	});

	function updateTransport() {
		const duration = Number.isFinite(video.duration) ? video.duration : 0;
		const seek = e<HTMLInputElement>("video-seek");
		seek.max = String(duration || 1);
		if (document.activeElement !== seek)
			seek.value = String(video.currentTime || 0);
		seek.setAttribute(
			"aria-valuetext",
			`${time(video.currentTime)} of ${time(duration)}`,
		);
		seek.style.setProperty(
			"--fill",
			`${duration ? (video.currentTime / duration) * 100 : 0}%`,
		);
		e("video-time").textContent =
			`${time(video.currentTime)} / ${time(duration)}`;
		e("video-play").textContent = video.paused ? "Play" : "Pause";
		e("video-play").setAttribute(
			"aria-label",
			video.paused ? "Play video" : "Pause video",
		);
	}
	for (const event of [
		"timeupdate",
		"durationchange",
		"play",
		"pause",
		"ended",
	])
		video.addEventListener(event, updateTransport);
	video.addEventListener("seeked", () => {
		revision++;
		pump.start();
	});
	video.addEventListener("pause", () => {
		revision++;
	});

	function setRecordButtons(
		label = "Record original + edited",
		previewLabel = "● Record video",
		accessible = "Start recording original and edited videos",
	) {
		e("camera-record").innerHTML = `<span>${label}</span>`;
		e("camera-record").setAttribute("aria-label", accessible);
		e("camera-record-preview").textContent = previewLabel;
		e("camera-record-preview").setAttribute("aria-label", accessible);
	}

	async function endRecording(save = true) {
		const active = recordingSession;
		if (!save) recordingController?.abort();
		if (recordFinished) {
			if (!save) await active?.abort();
			return recordFinished;
		}
		if (!active) return;
		const version = generation;
		const abort = recordingController!;
		const initialSettings = recordingInitialSettings;
		const captureColor = recordingCaptureColor;
		const basename = recordingBaseName;
		const activeMicrophone = microphone;
		recordingStopping = true;
		finalizingRecording = save;
		clearInterval(recordTimer);
		e("record-indicator").hidden = true;
		if (save) {
			setRecordButtons(
				"Finishing both recordings…",
				"Finishing…",
				"Finishing original and edited recordings",
			);
			e<HTMLProgressElement>("video-progress").removeAttribute("value");
			options.onStatus("Finishing original and edited recordings…", true);
		}
		activity();
		recordFinished = (async () => {
			let output:
				| Awaited<ReturnType<PairedRecordingSession["stop"]>>
				| undefined;
			try {
				if (!save) {
					await active.abort();
					return;
				}
				output = await active.stop();
				if (version !== generation || abort.signal.aborted) {
					await output.release();
					output = undefined;
					return;
				}
				const metadata = {
					schemaVersion: 1,
					app: "Effect Lab",
					effect: "BOY II",
					initialSettings,
					captureColor,
					settingsNote:
						"Initial settings only; adjustments during recording are not a complete parameter history.",
					recording: output.metadata,
				};
				await options.onExportBatch(
					[
						{
							file: new File(
								[output.original.blob],
								`${basename}-original.${output.original.extension}`,
								{ type: output.original.blob.type },
							),
							kind: "original",
							release: output.original.release,
						},
						{
							file: new File(
								[output.filtered.blob],
								`${basename}-edited.${output.filtered.extension}`,
								{ type: output.filtered.blob.type },
							),
							kind: "edited",
							release: output.filtered.release,
						},
						{
							file: new File(
								[JSON.stringify(metadata, null, 2)],
								`${basename}-settings.json`,
								{ type: "application/json" },
							),
							kind: "settings",
						},
					],
					"Camera recording · original + edited",
				);
				output = undefined; // The export gallery now owns both file lifetimes.
				if (version === generation)
					options.onStatus("Original and edited recordings are ready to save");
			} catch (error) {
				await output?.release();
				if (save && version === generation) {
					if (abort.signal.aborted || aborted(error))
						options.onStatus("Recording save cancelled");
					else {
						options.onError(`Recordings could not be saved. ${text(error)}`);
						options.onStatus("Recordings could not be saved");
					}
				}
			} finally {
				stopTracks(activeMicrophone);
				if (microphone === activeMicrophone) microphone = undefined;
				if (recordingSession === active) recordingSession = undefined;
				if (recordingController === abort) recordingController = undefined;
				recordFinished = undefined;
				if (version === generation) {
					recordingStopping = finalizingRecording = false;
					setRecordButtons();
					activity();
				}
			}
		})();
		return recordFinished;
	}

	async function stopMedia() {
		const request = ++requestSerial;
		generation++;
		controller?.abort();
		frameController?.abort();
		exportController?.abort();
		recordingController?.abort();
		snapshotController?.abort();
		stopTracks(stream);
		stream = undefined;
		stopTracks(microphone);
		microphone = undefined;
		video.pause();
		await endRecording(false);
		await pump.stop();
		if (request !== requestSerial) return;
		video.srcObject = null;
		video.removeAttribute("src");
		video.load();
		if (videoUrl) URL.revokeObjectURL(videoUrl);
		videoUrl = undefined;
		file = undefined;
		loading =
			exporting =
			capturing =
			ready =
			recordingStarting =
			recordingStopping =
			finalizingRecording =
				false;
		revision++;
		renderedTime = -1;
		renderedFrameKey = -1;
		renderedRevision = 0;
		fps = lastFrameAt = 0;
		capture.width = capture.height = 1;
		e("motion-loading").hidden = true;
		e("motion-picture").hidden = true;
		e("motion-welcome").hidden = false;
		e("video-transport").hidden = true;
		e("record-indicator").hidden = true;
		setRecordButtons();
		activity();
	}

	async function stopCameraSafely(message: string) {
		const version = generation;
		ready = false;
		snapshotController?.abort();
		frameController?.abort();
		void pump.stop();
		const activeStream = stream;
		stream = undefined;
		stopTracks(activeStream);
		stopTracks(microphone);
		microphone = undefined;
		activity();
		await endRecording(true);
		if (version !== generation) return;
		await stopMedia();
		if (mode === "camera") options.onStatus(message);
	}

	async function beginCamera() {
		if (mode !== "camera" || exporting || recordingStarting) return;
		const request = requestSerial + 1;
		await stopMedia();
		if (request !== requestSerial || mode !== "camera") return;
		if (!navigator.mediaDevices?.getUserMedia) {
			fail(
				new Error(
					"Live camera needs a browser with camera access on HTTPS. Use the published site or localhost.",
				),
			);
			return;
		}
		const version = generation;
		const abort = new AbortController();
		controller = abort;
		loading = true;
		activity();
		e("motion-loading-label").textContent = "Starting your camera…";
		e("motion-loading").hidden = false;
		options.onStatus("Waiting for camera access", true);
		try {
			const acquired = await navigator.mediaDevices.getUserMedia({
				video: {
					facingMode: { ideal: face },
					width: { ideal: 1280 },
					height: { ideal: 720 },
				},
				audio: false,
			});
			if (abort.signal.aborted || version !== generation) {
				stopTracks(acquired);
				return;
			}
			stream = acquired;
			for (const track of acquired.getVideoTracks())
				track.addEventListener(
					"ended",
					() => {
						if (stream === acquired) {
							void stopCameraSafely(
								"Camera disconnected. Any completed recording is ready to save.",
							);
						}
					},
					{ once: true },
				);
			video.srcObject = acquired;
			video.muted = true;
			await video.play();
			await mediaReady(video, abort.signal);
			engine = await options.getPipeline();
			options.onStatus("Preparing live processing", true);
			await engine.warm(abort.signal);
			if (abort.signal.aborted || version !== generation) return;
			pump.start();
		} catch (error) {
			if (version !== generation) return;
			stopTracks(stream);
			stream = undefined;
			if (!aborted(error)) fail(error);
		}
	}

	async function openVideo(next: File) {
		if (mode !== "video" || exporting) return;
		if (next.type && !next.type.startsWith("video/")) {
			options.onError("Choose a video file, such as MP4, MOV, or WebM.");
			return;
		}
		const request = requestSerial + 1;
		await stopMedia();
		if (request !== requestSerial || mode !== "video") return;
		const version = generation;
		const abort = new AbortController();
		controller = abort;
		loading = true;
		file = next;
		activity();
		sourceName =
			next.name
				.replace(/\.[^.]+$/, "")
				.replace(/[^a-zA-Z0-9_-]/g, "-")
				.slice(0, 80) || "video";
		e("motion-loading-label").textContent = "Opening your video…";
		e("motion-loading").hidden = false;
		options.onStatus("Getting your video ready", true);
		try {
			videoUrl = URL.createObjectURL(next);
			video.src = videoUrl;
			video.muted = true;
			e<HTMLInputElement>("video-sound").checked = false;
			video.load();
			await mediaReady(video, abort.signal);
			if (abort.signal.aborted || version !== generation) return;
			const { inspectVideo } = await import("./video-file");
			const info = await inspectVideo(next, abort.signal);
			if (abort.signal.aborted || version !== generation) return;
			canExport = info.canDecode;
			sourceHasAudio = info.audioTracks > 0;
			if (!canExport)
				options.onError(
					"This video can play here, but its codec cannot be exported by this browser. Try Chrome or a standard MP4/WebM file.",
				);
			e<HTMLInputElement>("video-keep-audio").checked = info.audioTracks > 0;
			e<HTMLInputElement>("video-keep-audio").disabled = info.audioTracks === 0;
			engine = await options.getPipeline();
			await engine.warm(abort.signal);
			if (abort.signal.aborted || version !== generation) return;
			e("video-transport").hidden = false;
			updateTransport();
			pump.start();
		} catch (error) {
			if (version === generation && !aborted(error)) fail(error);
		}
	}

	async function exportVideo() {
		if (
			mode !== "video" ||
			!file ||
			!ready ||
			exporting ||
			capturing ||
			!engine
		)
			return;
		const version = generation;
		const sourceFile = file;
		const abort = new AbortController();
		exportController = abort;
		exporting = true;
		activity();
		video.pause();
		frameController?.abort();
		await pump.stop();
		if (version !== generation || mode !== "video") return;
		if (abort.signal.aborted) {
			exporting = false;
			activity();
			pump.start();
			options.onStatus("Video export cancelled");
			return;
		}
		const values = { ...options.getSettings(), faceIndex: 0 };
		const size = e<HTMLSelectElement>("video-resolution").value;
		const maxDimension = size === "original" ? null : Number(size);
		exporting = true;
		activity();
		e<HTMLProgressElement>("video-progress").value = 0;
		options.onStatus("Exporting every video frame", true);
		try {
			const { exportFilteredVideo } = await import("./video-file");
			const output = await exportFilteredVideo(sourceFile, {
				maxDimension,
				signal: abort.signal,
				includeAudio: e<HTMLInputElement>("video-keep-audio").checked,
				onProgress: (fraction) => {
					e<HTMLProgressElement>("video-progress").value = fraction;
				},
				onStatus: (message) => options.onStatus(message, true),
				processFrame: (source, width, height, signal) =>
					engine!.processFrame(source, width, height, values, {
						maxDimension,
						signal,
					}),
			});
			if (abort.signal.aborted || version !== generation) {
				await output.release();
				return;
			}
			try {
				const basename = `${sourceName}-${Date.now()}`;
				await options.onExportBatch(
					[
						{ file: sourceFile, kind: "original" },
						{
							file: new File(
								[output.blob],
								`${basename}-edited.${output.extension}`,
								{ type: output.blob.type },
							),
							kind: "edited",
							release: output.release,
						},
						{
							file: new File(
								[
									JSON.stringify(
										{
											schemaVersion: 1,
											app: "Effect Lab",
											effect: "BOY II",
											settings: values,
											source: { name: sourceFile.name, kind: "video" },
											output: {
												width: output.width,
												height: output.height,
												duration: output.duration,
												hasAudio: output.hasAudio,
											},
										},
										null,
										2,
									),
								],
								`${basename}-settings.json`,
								{ type: "application/json" },
							),
							kind: "settings",
						},
					],
					"Video · original + edited",
				);
			} catch (error) {
				await output.release();
				throw error;
			}
			options.onStatus(
				`Video exported · ${output.width} × ${output.height} · ${output.hasAudio ? "with audio" : "silent"}`,
			);
		} catch (error) {
			if (!aborted(error) && !abort.signal.aborted)
				options.onError(`Video export could not finish. ${text(error)}`);
		} finally {
			if (version === generation) {
				exporting = false;
				activity();
				if (abort.signal.aborted) options.onStatus("Video export cancelled");
				pump.start();
			}
		}
	}

	async function startRecording() {
		if (
			mode !== "camera" ||
			!ready ||
			capturing ||
			recordingStarting ||
			recordingStopping ||
			finalizingRecording
		)
			return;
		if (recordingSession?.state === "recording") {
			await endRecording();
			return;
		}
		if (!stream) return;
		const version = generation;
		const cameraStream = stream;
		const abort = new AbortController();
		recordingController = abort;
		recordingStarting = true;
		recordingInitialSettings = { ...options.getSettings(), faceIndex: 0 };
		recordingBaseName = `effect-lab-recording-${Date.now()}`;
		let requestedMicrophone: MediaStream | undefined;
		activity();
		options.onStatus("Preparing original and edited recording…", true);
		try {
			if (e<HTMLInputElement>("camera-microphone").checked) {
				requestedMicrophone = await navigator.mediaDevices.getUserMedia({
					audio: true,
					video: false,
				});
				if (version !== generation || abort.signal.aborted) {
					stopTracks(requestedMicrophone);
					return;
				}
				microphone = requestedMicrophone;
			}
			const { startPairedRecording } = await import("./live-recording");
			if (version !== generation || abort.signal.aborted) {
				stopTracks(requestedMicrophone);
				return;
			}
			recordingInitialSettings = { ...options.getSettings(), faceIndex: 0 };
			recordingCaptureColor = describeCaptureColor(video, filtered, cameraStream.getVideoTracks()[0]);
			const active = await startPairedRecording({
				originalStream: cameraStream,
				filteredCanvas: filtered,
				microphoneStream: requestedMicrophone,
				signal: abort.signal,
				onError(error) {
					if (version !== generation || recordingController !== abort) return;
					options.onError(`Recording stopped. ${text(error)}`);
					options.onStatus(
						"Recording stopped; the camera preview is still available",
					);
					void endRecording(false);
				},
			});
			if (version !== generation || abort.signal.aborted) {
				await active.abort();
				stopTracks(requestedMicrophone);
				return;
			}
			recordingSession = active;
			recordingAt = performance.now();
			e("record-time").textContent = "0:00";
			e("record-indicator").hidden = false;
			setRecordButtons(
				"Stop & save both recordings",
				"■ Stop & save",
				"Stop and save original and edited recordings",
			);
			recordTimer = window.setInterval(() => {
				e("record-time").textContent = time(
					(performance.now() - recordingAt) / 1000,
				);
				if (recordingSession === active && active.state !== "recording") {
					void endRecording(active.state === "stopping" || active.state === "stopped");
				}
			}, 250);
			options.onStatus(
				requestedMicrophone
					? "Recording original + edited with microphone"
					: "Recording original + edited without microphone",
			);
		} catch (error) {
			stopTracks(requestedMicrophone);
			if (microphone === requestedMicrophone) microphone = undefined;
			if (version !== generation) return;
			if (recordingController === abort) recordingController = undefined;
			options.onError(
				error instanceof DOMException && error.name === "NotAllowedError"
					? "Microphone access was denied. Turn off microphone recording or enable it in your browser’s site settings."
					: `Recording could not start. ${text(error)}`,
			);
			options.onStatus("Camera is live. Recording did not start.");
		} finally {
			if (version === generation) {
				recordingStarting = false;
				activity();
			}
		}
	}

	async function capturePair() {
		if (
			!mode ||
			!ready ||
			!engine ||
			exporting ||
			capturing ||
			recordingSession ||
			recordingStarting ||
			finalizingRecording
		)
			return;
		if (
			video.seeking ||
			video.readyState < 2 ||
			!video.videoWidth ||
			!video.videoHeight
		) {
			options.onError(
				"Wait for the current video frame to finish loading, then capture again.",
			);
			return;
		}
		const version = generation;
		const capturedMode = mode;
		const capturedAt = new Date();
		const sourceTime = video.currentTime;
		const width = video.videoWidth,
			height = video.videoHeight;
		const values = { ...options.getSettings(), faceIndex: 0 };
		const wasPlaying = capturedMode === "video" && !video.paused;
		const basename = `${capturedMode === "camera" ? "camera" : sourceName + "-frame-" + Math.round(sourceTime * 1000)}-${capturedAt.getTime()}`;
		const source = document.createElement("canvas");
		const abort = new AbortController();
		snapshotController = abort;
		let edited: HTMLCanvasElement | undefined;
		let captureColor: ReturnType<typeof describeCaptureColor> | undefined;
		capturing = true;
		activity();
		e<HTMLProgressElement>("video-progress").removeAttribute("value");
		options.onStatus(
			"Capturing original and edited photos at full source resolution…",
			true,
		);
		try {
			// Snapshot the actual decoded camera/video pixels synchronously, before any await.
			paint(source, video, width, height);
			captureColor = describeCaptureColor(video, source, stream?.getVideoTracks()[0]);
			if (capturedMode === "video") video.pause();
			frameController?.abort();
			await pump.stop();
			if (version !== generation || abort.signal.aborted) return;
			edited = await engine.processFrame(source, width, height, values, {
				maxDimension: null,
				signal: abort.signal,
			});
			if (version !== generation || abort.signal.aborted) return;
			const [rawBlob, editedBlob] = await Promise.all([
				blobFrom(source),
				blobFrom(edited),
			]);
			if (version !== generation || abort.signal.aborted) return;
			const metadata = {
				schemaVersion: 1,
				app: "Effect Lab",
				effect: "BOY II",
				capturedAt: capturedAt.toISOString(),
				source: {
					kind: capturedMode === "camera" ? "camera" : "video-frame",
					width,
					height,
					mediaTime: sourceTime,
				},
				settings: values,
				captureColor,
			};
			await options.onExportBatch(
				[
					{
						file: new File([rawBlob], `${basename}-original.png`, {
							type: "image/png",
						}),
						kind: "original",
					},
					{
						file: new File([editedBlob], `${basename}-edited.png`, {
							type: "image/png",
						}),
						kind: "edited",
					},
					{
						file: new File(
							[JSON.stringify(metadata, null, 2)],
							`${basename}-settings.json`,
							{ type: "application/json" },
						),
						kind: "settings",
					},
				],
				`${capturedMode === "camera" ? "Camera photo" : "Video frame"} · ${width} × ${height}`,
			);
			if (version === generation)
				options.onStatus(
					`Original and edited photos ready · ${width} × ${height} px`,
				);
		} catch (error) {
			if (version === generation && !abort.signal.aborted && !aborted(error))
				options.onError(`Capture could not finish. ${text(error)}`);
		} finally {
			source.width = source.height = 1;
			if (edited) edited.width = edited.height = 1;
			if (snapshotController === abort) snapshotController = undefined;
			if (version === generation) {
				capturing = false;
				activity();
				if (abort.signal.aborted) options.onStatus("Photo capture cancelled");
				if (!document.hidden && ready) {
					if (wasPlaying)
						void video.play().catch(() => {
							options.onStatus(
								"Photos are ready. Press Play to resume the video.",
							);
						});
					pump.start();
				}
			}
		}
	}

	e("motion-start").addEventListener("click", () => {
		if (mode === "camera") void beginCamera();
		else e<HTMLInputElement>("video-input").click();
	});
	e("motion-replace").addEventListener("click", () =>
		e<HTMLInputElement>("video-input").click(),
	);
	e<HTMLInputElement>("video-input").addEventListener("change", (event) => {
		const input = event.target as HTMLInputElement;
		const selected = input.files?.[0];
		if (selected) void openVideo(selected);
		input.value = "";
	});
	e("motion-cancel-load").addEventListener("click", () => {
		void stopMedia();
		options.onStatus("Media loading cancelled");
	});
	e("camera-stop").addEventListener("click", async () => {
		await stopCameraSafely("Camera and microphone are off");
	});
	e("camera-switch").addEventListener("click", () => {
		face = face === "user" ? "environment" : "user";
		void beginCamera();
	});
	e("video-play").addEventListener("click", () => {
		if (video.paused) void video.play().catch(fail);
		else video.pause();
	});
	e<HTMLInputElement>("video-seek").addEventListener("input", () => {
		video.currentTime = Number(e<HTMLInputElement>("video-seek").value);
		updateTransport();
	});
	e<HTMLInputElement>("video-sound").addEventListener("change", () => {
		video.muted = !e<HTMLInputElement>("video-sound").checked;
	});
	e("motion-original-toggle").addEventListener("click", () => {
		showOriginal = !showOriginal;
		original.hidden = !showOriginal;
		e("motion-original-toggle").textContent = showOriginal
			? "Show edited"
			: "Show original";
		e("motion-original-toggle").setAttribute(
			"aria-pressed",
			String(showOriginal),
		);
		e("motion-image-label").textContent = showOriginal ? "ORIGINAL" : "BOY II";
	});
	e("video-export").addEventListener("click", () => {
		void exportVideo();
	});
	e("video-cancel-export").addEventListener("click", () => {
		if (finalizingRecording) recordingController?.abort();
		else if (capturing) snapshotController?.abort();
		else exportController?.abort();
	});
	e("motion-cancel-action").addEventListener("click", () =>
		e<HTMLButtonElement>("video-cancel-export").click(),
	);
	e("camera-record").addEventListener("click", () => {
		void startRecording();
	});
	for (const id of ["motion-snapshot", "motion-shutter"])
		e(id).addEventListener("click", () => {
			void capturePair();
		});
	e("camera-record-preview").addEventListener("click", () => {
		void startRecording();
	});
	e("video-download-original").addEventListener("click", async () => {
		if (!file || mode !== "video" || exporting || capturing) return;
		try {
			await options.onExportBatch(
				[{ file, kind: "original" }],
				"Original video",
			);
			options.onStatus("Original video is ready to save");
		} catch (error) {
			options.onError(`Original video could not be retained. ${text(error)}`);
		}
	});

	document.addEventListener("visibilitychange", async () => {
		if (document.hidden && mode) {
			video.pause();
			frameController?.abort();
			void pump.stop();
			if (mode === "camera") {
				void stopCameraSafely(
					"Camera stopped while the app was in the background.",
				);
			}
		} else if (!document.hidden && mode && !exporting && !capturing) {
			const version = generation;
			// Settle an aborted frame before restarting: its rejection stops the pump.
			await pump.stop();
			if (document.hidden || version !== generation || exporting || capturing)
				return;
			if (
				(mode === "video" &&
					(ready || (loading && engine && video.readyState >= 2))) ||
				(mode === "camera" && ready && stream)
			)
				pump.start();
		}
	});

	return {
		async activate(next: MotionMode | null) {
			const request = requestSerial + 1;
			await stopMedia();
			if (request !== requestSerial) return;
			mode = next;
			if (!next) return;
			showOriginal = false;
			original.hidden = true;
			e("motion-original-toggle").textContent = "Show original";
			e("motion-original-toggle").setAttribute("aria-pressed", "false");
			e("motion-image-label").textContent = "BOY II";
			e("motion-heading").innerHTML =
				next === "camera"
					? "Your look.<br /><em>In the moment.</em>"
					: "Give your look<br /><em>some motion.</em>";
			e("motion-description").innerHTML =
				next === "camera"
					? "Try the effect live. Start your camera<br />when you’re ready."
					: "Choose a video from your device.<br />Every exported frame gets the full effect.";
			e("motion-start").textContent =
				next === "camera" ? "Start live camera ↗" : "Choose a video ↗";
			e("motion-replace").hidden = next === "camera";
			e("video-download-original").hidden = next !== "video";
			e("camera-record-preview").hidden = next !== "camera";
			e("camera-microphone-wrap").hidden = next !== "camera";
			e("motion-shutter").textContent =
				next === "camera" ? "◉ Capture photo" : "◉ Capture frame";
			e("motion-capture-size").textContent =
				"Saves an original and an edited version at full source resolution.";
			e("camera-switch").hidden = next !== "camera";
			e("camera-stop").hidden = next !== "camera";
			e("video-export-options").hidden = next !== "video";
			e("camera-export-options").hidden = next !== "camera";
			e("motion-fps").textContent = "Preview speed depends on your device.";
			e("motion-export-note").textContent =
				next === "camera"
					? "Camera and microphone are off until requested."
					: "Your video stays on this device.";
			activity();
		},
		openVideo,
		settingsChanged() {
			revision++;
			if (mode && ready && !exporting && !capturing) pump.start();
		},
		async stop() {
			mode = null;
			await stopMedia();
		},
		get active() {
			return mode !== null;
		},
		get originalFile() {
			return file;
		},
	};
}
