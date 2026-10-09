import type { EffectSettings } from "./ui-types";
import { createFramePump } from "./frame-pump";

export type MotionMode = "video" | "camera";
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
    <div class="motion-toolbar"><button class="button button-small" id="motion-replace">Change video</button><button class="button button-small" id="motion-original-toggle" disabled aria-pressed="false">Show original</button><button class="button button-small" id="camera-switch" hidden>Switch camera</button><button class="button button-small" id="camera-stop" hidden>Stop camera</button></div>
    <div class="video-transport" id="video-transport" hidden><button id="video-play" class="button button-small" aria-label="Play video">Play</button><label class="sr-only" for="video-seek">Video position</label><input id="video-seek" class="slider" type="range" min="0" max="1" value="0" step="0.01" /><span id="video-time">0:00 / 0:00</span><label class="media-checkbox"><input id="video-sound" type="checkbox" /> Sound</label></div>
    <p class="motion-note" id="motion-fps" role="status">Preview speed depends on your device.</p>`;
	e("motion-export-area").innerHTML = `
    <div id="video-export-options"><div class="export-meta"><label for="video-resolution">Export size</label><select id="video-resolution"><option value="original" selected>Original resolution</option><option value="1080">1080 px</option><option value="720">720 px · fastest</option></select></div><p class="motion-note">Size limits the longest edge. Every source frame is processed.</p><label class="media-checkbox"><input id="video-keep-audio" type="checkbox" checked /> Keep original audio</label><button id="video-export" class="button button-export" aria-label="Export video" disabled><span>Export video</span>↗</button></div>
    <div id="camera-export-options" hidden><label class="media-checkbox"><input id="camera-microphone" type="checkbox" /> Include microphone in recording</label><button id="camera-record" class="button button-export" aria-label="Start recording" disabled><span>Start recording</span>●</button><p class="motion-note">Records the filtered preview at this device’s processing speed. Microphone is off unless selected.</p></div>
    <button id="motion-snapshot" class="button button-small motion-snapshot" disabled>Save filtered frame ↗</button><div id="motion-export-progress" class="export-progress" hidden><progress id="video-progress" max="1" value="0" aria-label="Video export progress"></progress><button id="video-cancel-export" class="text-button">Cancel</button></div><p class="export-note" id="motion-export-note">Your video stays on this device.</p>
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
	let recordingStream: MediaStream | undefined;
	let videoUrl: string | undefined;
	let file: File | undefined;
	let sourceName = "video";
	let face = "user";
	let ready = false;
	let loading = false;
	let exporting = false;
	let revision = 1;
	let renderedRevision = 0;
	let renderedTime = -1;
	let renderedFrameKey = -1;
	let showOriginal = false;
	let canExport = false;
	let sourceHasAudio = false;
	let lastFrameAt = 0;
	let fps = 0;
	let recorder: MediaRecorder | undefined;
	let recordParts: Blob[] = [];
	let recordedBytes = 0;
	let recordingAt = 0;
	let recordTimer = 0;
	let recordSave = true;
	let recordFinished: Promise<void> | undefined;
	let recordingStarting = false;
	let recordingStopping = false;
	let finalizingRecording = false;
	let recordFinalizeController: AbortController | undefined;

	function activity() {
		const recording =
			Boolean(recorder && recorder.state !== "inactive") ||
			recordingStarting ||
			recordingStopping;
		options.onActivity({
			busy: loading || exporting || finalizingRecording,
			hasMedia: ready,
			recording,
			exporting,
		});
		e<HTMLButtonElement>("video-export").disabled =
			!ready || !canExport || exporting || loading;
		e<HTMLButtonElement>("motion-snapshot").disabled =
			!ready || exporting || loading || recording || finalizingRecording;
		e<HTMLButtonElement>("motion-original-toggle").disabled =
			!ready || exporting;
		e<HTMLButtonElement>("camera-record").disabled =
			(!ready && !recording) ||
			exporting ||
			loading ||
			recordingStarting ||
			recordingStopping ||
			finalizingRecording;
		e<HTMLButtonElement>("camera-switch").disabled =
			!ready || recording || loading || finalizingRecording;
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
			e<HTMLInputElement>(id).disabled = loading || exporting;
		e<HTMLInputElement>("video-keep-audio").disabled =
			loading || exporting || !sourceHasAudio;
		e("motion-export-progress").hidden = !exporting && !finalizingRecording;
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
		const context = target.getContext("2d")!;
		context.clearRect(0, 0, width, height);
		context.drawImage(source, 0, 0, width, height);
	}

	async function frame() {
		if (
			!mode ||
			!engine ||
			exporting ||
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
		const recording = recorder && recorder.state !== "inactive";
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
					? `Live processing · ${fps ? fps.toFixed(1) : "…"} fps. Recording follows this preview.`
					: `Preview · ${fps ? fps.toFixed(1) : "…"} fps. Export processes every source frame.`;
			e("motion-export-note").textContent =
				mode === "camera"
					? `Filtered frames: ${filtered.width} × ${filtered.height} px. Camera stays on until stopped.`
					: "Your video stays on this device.";
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

	async function endRecording(save = true) {
		if (!save) {
			recordSave = false;
			recordFinalizeController?.abort();
		}
		if (!recorder || recorder.state === "inactive") return recordFinished;
		recordSave = save;
		recordingStopping = true;
		activity();
		recorder.stop();
		await recordFinished;
	}

	async function stopMedia() {
		const request = ++requestSerial;
		generation++;
		controller?.abort();
		frameController?.abort();
		exportController?.abort();
		recordFinalizeController?.abort();
		stopTracks(stream);
		stream = undefined;
		stopTracks(microphone);
		microphone = undefined;
		video.pause();
		await endRecording(false);
		stopTracks(recordingStream);
		recordingStream = undefined;
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
		e("camera-record").innerHTML = "<span>Start recording</span>●";
		e("camera-record").setAttribute("aria-label", "Start recording");
		activity();
	}

	async function stopCameraSafely(message: string) {
		const version = generation;
		ready = false;
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
		if (mode !== "video" || !file || !ready || exporting || !engine) return;
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
			options.onExport(
				new File([output.blob], `${sourceName}-boy-ii.${output.extension}`, {
					type: output.blob.type,
				}),
				output.release,
			);
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
			recordingStarting ||
			recordingStopping ||
			finalizingRecording
		)
			return;
		if (recorder && recorder.state !== "inactive") {
			await endRecording();
			return;
		}
		if (
			typeof MediaRecorder === "undefined" ||
			typeof filtered.captureStream !== "function"
		) {
			fail(
				new Error(
					"This browser cannot record the filtered preview. You can still save a filtered frame.",
				),
			);
			return;
		}
		const version = generation;
		recordingStarting = true;
		activity();
		try {
			if (e<HTMLInputElement>("camera-microphone").checked) {
				const acquired = await navigator.mediaDevices.getUserMedia({
					audio: true,
					video: false,
				});
				if (version !== generation) {
					stopTracks(acquired);
					return;
				}
				microphone = acquired;
			}
			if (version !== generation) return;
			recordingStream = filtered.captureStream(30);
			for (const track of microphone?.getAudioTracks() ?? [])
				recordingStream.addTrack(track);
			const mimeType = [
				"video/webm;codecs=vp8,opus",
				"video/mp4",
				"video/webm",
			].find((type) => MediaRecorder.isTypeSupported(type));
			recorder = new MediaRecorder(
				recordingStream,
				mimeType ? { mimeType } : undefined,
			);
			const active = recorder;
			recordParts = [];
			recordedBytes = 0;
			recordSave = true;
			recordingAt = performance.now();
			recordFinished = new Promise<void>((resolve) => {
				active.addEventListener("dataavailable", (event) => {
					if (event.data.size) {
						recordParts.push(event.data);
						recordedBytes += event.data.size;
					}
					if (
						recordedBytes >= 256 * 1024 * 1024 &&
						active.state !== "inactive"
					) {
						options.onStatus(
							"Recording reached the device buffer limit and is being saved",
						);
						recordingStopping = true;
						activity();
						active.stop();
					}
				});
				active.addEventListener("error", () => {
					recordSave = false;
					options.onError(
						"The browser could not finish recording. Try a shorter recording.",
					);
				});
				active.addEventListener(
					"stop",
					async () => {
						const finalizeAbort = new AbortController();
						try {
							clearInterval(recordTimer);
							stopTracks(microphone);
							microphone = undefined;
							stopTracks(recordingStream);
							recordingStream = undefined;
							const type = active.mimeType || recordParts[0]?.type || "video/webm";
							const blob = new Blob(recordParts, { type });
							recordParts = [];
							if (!recordSave || version !== generation) return;
							if (!blob.size) throw new Error("No video frames were recorded. Let the preview run before stopping.");
							recordFinalizeController = finalizeAbort;
							finalizingRecording = true;
							e("record-indicator").hidden = true;
							e("camera-record").innerHTML =
								"<span>Finishing recording…</span>";
							e("camera-record").setAttribute(
								"aria-label",
								"Finishing recording",
							);
							e<HTMLProgressElement>("video-progress").removeAttribute("value");
							activity();
							options.onStatus("Finishing your recording…", true);
							const { finalizeRecording } = await import("./video-file");
							const output = await finalizeRecording(blob, {
								signal: finalizeAbort.signal,
							});
							if (version !== generation || finalizeAbort.signal.aborted) {
								await output.release();
								return;
							}
							options.onExport(
								new File(
									[output.blob],
									`effect-lab-recording-${Date.now()}.${output.extension}`,
									{ type: output.blob.type },
								),
								output.release,
							);
							options.onStatus("Your filtered recording is saved");
						} catch (error) {
							if (version === generation) {
								if (finalizeAbort.signal.aborted || aborted(error))
									options.onStatus("Recording save cancelled");
								else {
									options.onError(
										`Recording could not be saved. ${text(error)}`,
									);
									options.onStatus("Recording could not be saved");
								}
							}
						} finally {
							if (recorder === active) recorder = undefined;
							if (recordFinalizeController === finalizeAbort)
								recordFinalizeController = undefined;
							if (version === generation) {
								recordingStopping = finalizingRecording = false;
								e("record-indicator").hidden = true;
								e("camera-record").innerHTML = "<span>Start recording</span>●";
								e("camera-record").setAttribute(
									"aria-label",
									"Start recording",
								);
								activity();
							}
							resolve();
						}
					},
					{ once: true },
				);
			});
			active.start(1000);
			e("record-time").textContent = "0:00";
			e("record-indicator").hidden = false;
			e("camera-record").innerHTML = "<span>Stop & save recording</span>■";
			e("camera-record").setAttribute("aria-label", "Stop and save recording");
			recordTimer = window.setInterval(() => {
				e("record-time").textContent = time(
					(performance.now() - recordingAt) / 1000,
				);
			}, 250);
			options.onStatus(
				microphone
					? "Recording filtered video with microphone"
					: "Recording filtered video without microphone",
			);
		} catch (error) {
			if (version !== generation) return;
			stopTracks(microphone);
			microphone = undefined;
			stopTracks(recordingStream);
			recordingStream = undefined;
			if (!recorder || recorder.state === "inactive") {
				recorder = undefined;
				recordFinished = undefined;
			}
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
		if (finalizingRecording) recordFinalizeController?.abort();
		else exportController?.abort();
	});
	e("camera-record").addEventListener("click", () => {
		void startRecording();
	});
	e("motion-snapshot").addEventListener("click", async () => {
		if (!ready || exporting) return;
		try {
			const blob = await blobFrom(filtered);
			options.onExport(
				new File(
					[blob],
					`${mode === "camera" ? "camera" : sourceName}-boy-ii-frame.png`,
					{ type: "image/png" },
				),
			);
			options.onStatus(
				`Filtered frame saved · ${filtered.width} × ${filtered.height} px`,
			);
		} catch (error) {
			options.onError(text(error));
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
		} else if (!document.hidden && mode && !exporting) {
			const version = generation;
			// Settle an aborted frame before restarting: its rejection stops the pump.
			await pump.stop();
			if (document.hidden || version !== generation || exporting) return;
			if (
				(mode === "video" && (ready || (loading && engine && video.readyState >= 2))) ||
				(mode === "camera" && ready && stream)
			) pump.start();
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
			if (mode && ready && !exporting) pump.start();
		},
		async stop() {
			mode = null;
			await stopMedia();
		},
		get active() {
			return mode !== null;
		},
	};
}
