import "./styles.css";
import { createPipeline } from "./pipeline";
import { getSkinStatus } from "./inference";
import {
	DEFAULT_SETTINGS,
	SETTING_RANGES,
	validateSettings,
	type EffectSettings,
	type NumericSetting,
} from "./ui-types";

const svg = (path: string, extra = "") =>
	`<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.7" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true" ${extra}>${path}</svg>`;
const icons = {
	plus: svg('<path d="M12 5v14M5 12h14"/>'),
	image: svg(
		'<rect x="3" y="3" width="18" height="18" rx="4"/><circle cx="8.5" cy="8.5" r="1.5"/><path d="m21 15-5-5L5 21"/>',
	),
	camera: svg(
		'<path d="M8 5 9.5 3h5L16 5h3a2 2 0 0 1 2 2v12H3V7a2 2 0 0 1 2-2Z"/><circle cx="12" cy="12" r="4"/>',
	),
	lock: svg(
		'<rect x="5" y="10" width="14" height="11" rx="3"/><path d="M8 10V7a4 4 0 0 1 8 0v3"/><circle cx="12" cy="15" r=".6"/>',
	),
	arrow: svg('<path d="M7 17 17 7M7 7h10v10"/>'),
	download: svg('<path d="M12 3v12m-5-5 5 5 5-5M4 15v5h16v-5"/>'),
	reset: svg('<path d="M3 10a9 9 0 1 1 2 8M3 4v6h6"/>'),
	chevron: svg('<path d="m8 10 4 4 4-4"/>'),
	close: svg('<path d="m6 6 12 12M6 18 18 6"/>'),
	split: svg('<path d="M12 3v18M8 7 3 12l5 5m8-10 5 5-5 5"/>'),
	bookmark: svg('<path d="M6 21V4a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v17l-6-4Z"/>'),
};

const slider = (key: NumericSetting, label: string, help = "") => {
	const [min, max] = SETTING_RANGES[key];
	return `<div class="control" data-control="${key}">
    <div class="control-label"><label for="${key}">${label}</label><input class="number-input" id="${key}-number" type="number" inputmode="decimal" aria-label="${label} value" min="${min}" max="${max}" step="0.01" value="${DEFAULT_SETTINGS[key]}" /></div>
    <input id="${key}" class="slider" data-setting="${key}" type="range" min="${min}" max="${max}" step="0.01" value="${DEFAULT_SETTINGS[key]}" aria-describedby="${key}-help" />
    <span class="control-help" id="${key}-help">${help}</span>
  </div>`;
};

const toggle = (
	key: "skinEnabled" | "colorEnabled" | "makeupEnabled",
	label: string,
) =>
	`<label class="switch" title="${label}"><input type="checkbox" id="${key}" aria-label="${label}" checked /><span></span></label>`;

document.querySelector<HTMLDivElement>("#app")!.innerHTML = `
  <header class="header">
    <a class="brand" href="./" aria-label="Effect Lab home"><img src="./icon.svg" alt="" width="34" height="34" /><span>effect<span class="brand-light">lab</span><span class="brand-dot">.</span></span></a>
    <span class="privacy-pill">${icons.lock}<span>Stays on your device</span></span>
  </header>
  <main class="workspace">
    <section class="studio" aria-label="Photo preview">
      <div class="section-topline"><span class="eyebrow">A little room to experiment</span><span class="issue-label">PHOTO LAB / 001</span></div>
      <div class="stage" id="stage">
        <div class="empty-state" id="empty-state">
          <div class="abstract-art" aria-hidden="true"><div class="art-grid"></div><div class="art-disc art-disc-one"></div><div class="art-disc art-disc-two"></div><div class="art-disc art-disc-three"></div><span class="art-cross cross-one">+</span><span class="art-cross cross-two">+</span><span class="art-caption">A NEW POINT OF VIEW</span></div>
          <div class="empty-copy"><span class="eyebrow">Made for your camera roll</span><h1>Your photo.<br />A new <em>feeling.</em></h1><p>Start with a portrait. Find your light,<br class="desktop-break" /> fine-tune the details, make it yours.</p>
          <button class="button button-primary choose-photo" id="first-photo">${icons.plus} Choose a photo ${icons.arrow}</button>
          <button class="button-link camera-action" id="first-camera">${icons.camera} Take a photo</button><span class="drop-hint">or drop an image here</span></div>
        </div>
        <div class="photo-stage" id="photo-stage" role="img" aria-label="Your photo with the BOY II effect" hidden>
          <div class="image-layer" id="edited-image"></div><div class="image-layer original-image" id="original-image"></div>
          <div class="compare-divider" id="compare-divider" hidden><span>${icons.split}</span></div>
          <input id="compare-range" class="compare-range" type="range" min="0" max="100" value="50" aria-label="Before and after divider" hidden />
          <div class="image-corner-label" id="image-label">BOY II</div><div class="original-corner-label" id="original-label" hidden>ORIGINAL</div>
        </div>
        <div class="stage-busy" id="stage-busy" hidden><span class="spinner"></span><strong id="stage-busy-label">Opening your photo…</strong><span id="stage-busy-detail">Everything happens on your device.</span><button class="button button-small" id="cancel-load">Cancel</button></div>
        <div class="preview-busy" id="preview-busy" hidden><span class="spinner"></span>Updating preview</div>
        <div class="drop-overlay" id="drop-overlay" hidden>${icons.image}<strong>Drop your next photo</strong></div>
      </div>
      <div class="photo-toolbar" id="photo-toolbar" hidden>
        <button class="button button-small" id="replace-photo">${icons.image}<span>Change photo</span></button>
        <div class="view-switch" role="group" aria-label="Preview mode"><button data-view="edited" aria-pressed="true">Edited</button><button data-view="split" aria-pressed="false">Compare</button><button data-view="original" aria-pressed="false">Original</button></div>
        <span class="photo-size" id="photo-size"></span>
      </div>
      <div class="photo-message" id="photo-message" aria-live="polite"></div>
      <div class="status-line"><span class="status-dot" id="status-dot"></span><span id="status-text" role="status">Ready when you are</span><span id="runtime-status" class="runtime-status" hidden></span><button class="text-button" id="about-button">About the lab ${icons.arrow}</button></div>
      <div class="error-message" id="error-message" role="alert" hidden><span id="error-text"></span><button id="dismiss-error" aria-label="Dismiss error">${icons.close}</button></div>
    </section>
    <aside class="inspector" aria-label="Effect controls">
      <div class="inspector-top"><span class="eyebrow">THE EFFECT COLLECTION</span><span class="count-pill">01</span></div>
      <div class="effect-card"><div class="effect-card-copy"><span class="effect-category">Soft light · berry tones</span><h2>BOY <span>II</span></h2><p>A softer finish. A little more you.</p></div><div class="effect-swatch" aria-hidden="true"><span></span><span></span><span></span></div></div>
      <div class="preset-row"><label for="preset-select" class="sr-only">Saved preset</label><select id="preset-select"><option value="default">BOY II · original settings</option><option value="custom" disabled>Custom settings</option></select><button class="icon-button" id="save-preset" aria-label="Save settings as a preset" title="Save preset">${icons.bookmark}</button><button class="icon-button" id="reset-settings" aria-label="Reset to BOY II original settings" title="Reset original settings">${icons.reset}</button></div>
      <div class="face-select" id="face-select-wrap" hidden><label for="face-select">Apply skin smoothing to</label><select id="face-select"></select><p>Face details apply to all detected faces.</p></div>
      <div class="control-groups" id="control-groups">
        <details class="control-group" open><summary><span><span class="group-index">01</span> Skin</span>${icons.chevron}</summary><div class="group-content"><div class="group-intro"><span>A softer, even finish</span>${toggle("skinEnabled", "Enable skin smoothing")}</div>${slider("skin", "Skin strength", "Works on the selected face.")}</div></details>
        <details class="control-group" open><summary><span><span class="group-index">02</span> Face details</span>${icons.chevron}</summary><div class="group-content"><div class="group-intro"><span>Shape, color, a little dimension</span>${toggle("makeupEnabled", "Enable face overlays")}</div>${slider("contour", "Contour")}${slider("lips", "Lips")}${slider("berry", "Berry")}</div></details>
        <details class="control-group" open><summary><span><span class="group-index">03</span> Color</span>${icons.chevron}</summary><div class="group-content"><div class="group-intro"><span>The signature BOY II color</span>${toggle("colorEnabled", "Enable color adjustments")}</div>${slider("lut", "Color intensity")}${slider("brightness", "Brightness")}${slider("temperature", "Temperature")}</div></details>
        <details class="control-group"><summary><span><span class="group-index">04</span> Fine-tune</span>${icons.chevron}</summary><div class="group-content">${slider("saturation", "Saturation")}${slider("contrast", "Contrast")}${slider("exposure", "Exposure")}${slider("tint", "Tint")}</div></details>
      </div>
      <div class="export-area"><div class="export-meta"><span id="export-resolution">Full resolution export</span><label><span class="sr-only">Export format</span><select id="export-format"><option value="image/jpeg">JPG</option><option value="image/png">PNG</option></select></label></div><button class="button button-export" id="export-photo" disabled>${icons.download}<span id="export-button-text">Export photo</span>${icons.arrow}</button><div class="export-progress" id="export-progress" hidden><progress id="export-progress-bar" aria-label="Photo export progress" max="1" value="0"></progress><button class="text-button" id="cancel-export">Cancel</button></div><p class="export-note" id="export-note">Your photo never leaves this device.</p><button class="button button-small share-button" id="share-photo" hidden>Save or share exported photo ${icons.arrow}</button></div>
    </aside>
  </main>
  <footer class="footer"><span>Effect Lab<span class="brand-dot">.</span></span><span>Small experiments. Good light.</span><span>PRIVATE BY DESIGN ${icons.lock}</span></footer>
  <input id="photo-input" type="file" accept="image/*" hidden /><input id="camera-input" type="file" accept="image/*" capture="user" hidden />
  <dialog id="preset-dialog"><form id="preset-form"><div class="dialog-top"><span class="eyebrow">MAKE IT YOURS</span><button type="button" class="icon-button dialog-close" aria-label="Close">${icons.close}</button></div><h2>Keep this feeling.</h2><p>Save these settings to use on your next photo. Presets stay in this browser.</p><label for="preset-name">Preset name</label><input id="preset-name" maxlength="40" placeholder="My everyday look" required autocomplete="off" /><button type="submit" class="button button-primary">Save preset ${icons.bookmark}</button><button type="button" class="text-button" id="delete-preset" hidden>Delete selected preset</button></form></dialog>
  <dialog id="about-dialog"><div class="dialog-top"><span class="eyebrow">YOUR OWN LITTLE PHOTO LAB</span><button type="button" class="icon-button dialog-close" aria-label="Close">${icons.close}</button></div><h2>A little more personal.</h2><p>Effect Lab brings photo effects into a private, adjustable space. BOY II is the first effect in the collection.</p><p>Your photo is processed entirely on your device. The app downloads its editing tools; it never uploads your image. Saved presets contain settings only.</p><p>This browser version reconstructs the effect from its original assets. Results can vary from the effect in a phone app.</p><p class="small-copy">A recent Safari, Chrome, or Edge browser works best. The first photo may take a moment while editing tools load. On older devices, full resolution exports may take longer.</p><button class="button button-primary dialog-close">Back to the lab ${icons.arrow}</button></dialog>
`;

function element<T extends HTMLElement = HTMLElement>(id: string): T {
	const found = document.getElementById(id);
	if (!found) throw new Error(`Missing UI element: ${id}`);
	return found as T;
}

type Pipeline = Awaited<ReturnType<typeof createPipeline>>;
type Phase = "empty" | "loading" | "ready" | "exporting";
type Preset = { id: string; name: string; settings: EffectSettings };
const PRESET_KEY = "effect-lab.presets.v1";
let settings: EffectSettings = { ...DEFAULT_SETTINGS };
let pipeline: Pipeline | undefined;
let pipelinePromise: Promise<Pipeline> | undefined;
let phase: Phase = "empty";
let original: HTMLCanvasElement | undefined;
let hasPreview = false;
let fileName = "photo";
let viewMode = "edited";
let presets: Preset[] = readPresets();
let loadController: AbortController | undefined;
let previewController: AbortController | undefined;
let exportController: AbortController | undefined;
let previewTimer = 0;
let previewVersion = 0;
let loadVersion = 0;
let downloadUrl: string | undefined;
let exportedFile: File | undefined;

function readPresets(): Preset[] {
	try {
		const stored = JSON.parse(localStorage.getItem(PRESET_KEY) ?? "null");
		if (stored?.version !== 1 || !Array.isArray(stored.presets)) return [];
		return stored.presets
			.slice(0, 30)
			.filter(
				(preset: unknown): preset is Preset =>
					!!preset &&
					typeof preset === "object" &&
					typeof (preset as Preset).id === "string" &&
					typeof (preset as Preset).name === "string",
			)
			.map((preset: Preset) => ({
				id: preset.id,
				name: preset.name.slice(0, 40),
				settings: validateSettings(preset.settings),
			}));
	} catch {
		return [];
	}
}

function persistPresets() {
	try {
		localStorage.setItem(PRESET_KEY, JSON.stringify({ version: 1, presets }));
		return true;
	} catch {
		showError(
			"This browser could not save your preset. Check that browser storage is enabled.",
		);
		return false;
	}
}

function refreshPresetOptions(selected = "custom") {
	const select = element<HTMLSelectElement>("preset-select");
	select.replaceChildren(
		new Option("BOY II · original settings", "default"),
		Object.assign(new Option("Custom settings", "custom"), { disabled: true }),
		...presets.map((preset) => new Option(preset.name, preset.id)),
	);
	select.value = selected;
}

function setStatus(text: string, busy = false) {
	element("status-text").textContent = text;
	element("status-dot").classList.toggle("working", busy);
	const runtime = getSkinStatus();
	const badge = element("runtime-status");
	badge.hidden = !runtime.backend;
	badge.textContent = runtime.backend === "webgpu" ? "GPU" : "CPU";
	badge.title =
		runtime.backend === "webgpu"
			? "Skin smoothing uses graphics acceleration on this device."
			: "Skin smoothing runs on this device’s CPU. Larger photos may take longer.";
}

function showError(message: string) {
	element("error-text").textContent = message;
	element("error-message").hidden = false;
}

function clearError() {
	element("error-message").hidden = true;
}
function messageOf(error: unknown) {
	return error instanceof Error ? error.message : String(error);
}
function isCancelled(error: unknown, signal?: AbortSignal) {
	return (
		signal?.aborted || (error instanceof Error && error.name === "AbortError")
	);
}

function updatePhase(next: Phase) {
	phase = next;
	element("stage").setAttribute("aria-busy", String(phase === "loading"));
	element<HTMLButtonElement>("export-photo").disabled =
		phase !== "ready" || !hasPreview;
	element("stage-busy").hidden = phase !== "loading";
	element("export-progress").hidden = phase !== "exporting";
	element("export-button-text").textContent =
		phase === "exporting" ? "Developing your photo…" : "Export photo";
	element("export-note").textContent =
		phase === "exporting"
			? "Working at your photo’s full resolution."
			: "Your photo never leaves this device.";
	for (const control of document.querySelectorAll<
		HTMLInputElement | HTMLSelectElement | HTMLButtonElement
	>(
		".control-groups input, #face-select, #preset-select, #reset-settings, #save-preset, #export-format",
	))
		control.disabled = phase === "loading" || phase === "exporting";
	for (const button of document.querySelectorAll<HTMLButtonElement>(
		".choose-photo, .camera-action, #replace-photo",
	))
		button.disabled = phase === "exporting";
	document.body.classList.toggle("has-photo", Boolean(original));
}

function updateControl(key: NumericSetting) {
	const range = element<HTMLInputElement>(key);
	const number = element<HTMLInputElement>(`${key}-number`);
	range.value = String(settings[key]);
	if (document.activeElement !== number)
		number.value = settings[key].toFixed(2);
	const [min, max] = SETTING_RANGES[key];
	range.style.setProperty(
		"--fill",
		`${((settings[key] - min) / (max - min)) * 100}%`,
	);
}

function syncControls() {
	for (const key of Object.keys(SETTING_RANGES) as NumericSetting[])
		updateControl(key);
	for (const key of ["skinEnabled", "colorEnabled", "makeupEnabled"] as const)
		element<HTMLInputElement>(key).checked = settings[key];
	updateGroupStates();
}

function updateGroupStates() {
	for (const [toggleKey, keys] of [
		["skinEnabled", ["skin"]],
		["makeupEnabled", ["contour", "lips", "berry"]],
		[
			"colorEnabled",
			[
				"lut",
				"brightness",
				"temperature",
				"saturation",
				"contrast",
				"exposure",
				"tint",
			],
		],
	] as const) {
		for (const key of keys) {
			const control = document.querySelector<HTMLElement>(
				`[data-control="${key}"]`,
			)!;
			control.classList.toggle("muted", !settings[toggleKey]);
		}
	}
}

function settingsChanged(quick = false) {
	element<HTMLSelectElement>("preset-select").value = "custom";
	element("share-photo").hidden = true;
	schedulePreview(quick);
}

for (const key of Object.keys(SETTING_RANGES) as NumericSetting[]) {
	const range = element<HTMLInputElement>(key);
	range.addEventListener("input", () => {
		settings[key] = Number(range.value);
		updateControl(key);
		settingsChanged(true);
	});
	range.addEventListener("change", () => schedulePreview(false));
	const number = element<HTMLInputElement>(`${key}-number`);
	number.addEventListener("input", () => {
		if (!number.value || !Number.isFinite(number.valueAsNumber)) return;
		const [min, max] = SETTING_RANGES[key];
		settings[key] = Math.max(min, Math.min(max, number.valueAsNumber));
		updateControl(key);
		settingsChanged(true);
	});
	number.addEventListener("change", () => {
		number.value = settings[key].toFixed(2);
		schedulePreview(false);
	});
	number.addEventListener("blur", () => {
		number.value = settings[key].toFixed(2);
	});
}
for (const key of ["skinEnabled", "colorEnabled", "makeupEnabled"] as const)
	element<HTMLInputElement>(key).addEventListener("change", (event) => {
		settings[key] = (event.target as HTMLInputElement).checked;
		updateGroupStates();
		settingsChanged();
	});

async function ensurePipeline() {
	if (!pipelinePromise) {
		pipelinePromise = createPipeline({
			onStatus(message: string) {
				if (phase !== "empty")
					setStatus(message, phase === "loading" || phase === "exporting");
				if (phase === "loading")
					element("stage-busy-detail").textContent = message;
			},
		})
			.then((ready) => {
				pipeline = ready;
				return ready;
			})
			.catch((error) => {
				pipelinePromise = undefined;
				throw error;
			});
	}
	return pipelinePromise;
}

async function openPhoto(file?: File) {
	if (!file || phase === "exporting") return;
	if (file.type && !file.type.startsWith("image/")) {
		showError("Choose an image file, such as a JPEG, PNG, or WebP photo.");
		return;
	}
	const version = ++loadVersion;
	loadController?.abort();
	previewController?.abort();
	clearTimeout(previewTimer);
	++previewVersion;
	const controller = new AbortController();
	loadController = controller;
	clearError();
	element("share-photo").hidden = true;
	element("preview-busy").hidden = true;
	element("stage-busy-label").textContent = "Opening your photo…";
	element("stage-busy-detail").textContent =
		"Everything happens on your device.";
	updatePhase("loading");
	setStatus("Getting your photo ready", true);
	try {
		const engine = await ensurePipeline();
		if (controller.signal.aborted) return;
		const info = await engine.loadPhoto(file, controller.signal);
		if (controller.signal.aborted || version !== loadVersion) return;
		const photo = engine.getOriginal();
		original = photo;
		hasPreview = false;
		element("original-image").replaceChildren(photo);
		element("edited-image").replaceChildren();
		element("empty-state").hidden = true;
		element("photo-stage").hidden = false;
		element("photo-toolbar").hidden = false;
		setView("original");
		fileName =
			file.name
				.replace(/\.[^.]+$/, "")
				.replace(/[^a-zA-Z0-9_-]+/g, "-")
				.slice(0, 80) || "photo";
		element("photo-size").textContent =
			`${info.width.toLocaleString()} × ${info.height.toLocaleString()}`;
		element("export-resolution").textContent =
			`${info.width.toLocaleString()} × ${info.height.toLocaleString()} px`;
		const faceSelect = element<HTMLSelectElement>("face-select");
		faceSelect.replaceChildren(
			...Array.from(
				{ length: info.faceCount },
				(_, index) => new Option(`Face ${index + 1}`, String(index)),
			),
		);
		settings.faceIndex = Math.max(
			0,
			Math.min(settings.faceIndex, info.faceCount - 1),
		);
		faceSelect.value = String(settings.faceIndex);
		element("face-select-wrap").hidden = info.faceCount <= 1;
		element("photo-message").textContent =
			info.faceCount === 0
				? "No face found. You can still adjust the photo’s color. Try a clear, front-facing portrait for skin and face details."
				: info.faceCount > 1
					? `${info.faceCount} faces found. Choose a face for skin smoothing. Face details apply to all faces.`
					: "";
		element("stage-busy-label").textContent = "Finding your light…";
		await renderPreview(1280, controller.signal);
		if (controller.signal.aborted || version !== loadVersion) return;
		setView("edited");
		updatePhase("ready");
		setStatus("Your photo is ready");
	} catch (error) {
		if (version !== loadVersion) return;
		if (!isCancelled(error, controller.signal)) {
			showError(messageOf(error));
			setStatus("Couldn’t finish opening this photo");
		} else
			setStatus(original ? "Photo loading cancelled" : "Ready when you are");
		updatePhase(original ? "ready" : "empty");
	} finally {
		if (version === loadVersion && controller.signal.aborted) {
			updatePhase(original ? "ready" : "empty");
			setStatus(original ? "Photo loading cancelled" : "Ready when you are");
		}
	}
}

function schedulePreview(quick = false) {
	if (!original || phase !== "ready") return;
	element("share-photo").hidden = true;
	hasPreview = false;
	element<HTMLButtonElement>("export-photo").disabled = true;
	clearTimeout(previewTimer);
	previewController?.abort();
	++previewVersion;
	previewTimer = window.setTimeout(
		() => {
			void renderPreview(quick ? 640 : 1280);
		},
		quick ? 110 : 180,
	);
}

async function renderPreview(maxDimension: number, parentSignal?: AbortSignal) {
	if (!pipeline || !original) return;
	previewController?.abort();
	const controller = new AbortController();
	previewController = controller;
	const abort = () => controller.abort();
	parentSignal?.addEventListener("abort", abort, { once: true });
	const version = ++previewVersion;
	element("preview-busy").hidden = phase === "loading";
	try {
		const result = await pipeline.render(
			{ ...settings },
			{ maxDimension, signal: controller.signal },
		);
		if (controller.signal.aborted || version !== previewVersion) return;
		element("edited-image").replaceChildren(result);
		hasPreview = true;
		if (phase === "ready") {
			element<HTMLButtonElement>("export-photo").disabled = false;
			setStatus("Your photo is ready");
		}
		setView(viewMode);
	} catch (error) {
		if (!isCancelled(error, controller.signal) && version === previewVersion) {
			if (parentSignal) throw error;
			showError(`Preview could not finish. ${messageOf(error)}`);
		}
	} finally {
		parentSignal?.removeEventListener("abort", abort);
		if (version === previewVersion) element("preview-busy").hidden = true;
	}
}

function setView(mode: string) {
	viewMode = mode;
	element("photo-stage").setAttribute(
		"aria-label",
		mode === "original"
			? "Your original photo"
			: mode === "split"
				? "Before and after comparison of your photo"
				: "Your photo with the BOY II effect",
	);
	document
		.querySelectorAll<HTMLButtonElement>("[data-view]")
		.forEach((button) =>
			button.setAttribute("aria-pressed", String(button.dataset.view === mode)),
		);
	element("original-image").hidden = mode === "edited";
	element("compare-divider").hidden = mode !== "split";
	element("compare-range").hidden = mode !== "split";
	element("image-label").textContent =
		mode === "original" ? "ORIGINAL" : "BOY II";
	element("original-label").hidden = mode !== "split";
	updateComparison();
}

function updateComparison() {
	const value = Number(element<HTMLInputElement>("compare-range").value);
	element("original-image").style.clipPath =
		viewMode === "split" ? `inset(0 ${100 - value}% 0 0)` : "none";
	element("compare-divider").style.left = `${value}%`;
}

document
	.querySelectorAll<HTMLButtonElement>("[data-view]")
	.forEach((button) =>
		button.addEventListener("click", () => setView(button.dataset.view!)),
	);
element("compare-range").addEventListener("input", updateComparison);
element("face-select").addEventListener("change", () => {
	settings.faceIndex = Number(element<HTMLSelectElement>("face-select").value);
	settingsChanged();
});
for (const id of ["first-photo", "replace-photo"])
	element(id).addEventListener("click", () =>
		element<HTMLInputElement>("photo-input").click(),
	);
element("first-camera").addEventListener("click", () =>
	element<HTMLInputElement>("camera-input").click(),
);
for (const id of ["photo-input", "camera-input"])
	element<HTMLInputElement>(id).addEventListener("change", (event) => {
		const input = event.target as HTMLInputElement;
		void openPhoto(input.files?.[0]);
		input.value = "";
	});
element("cancel-load").addEventListener("click", () => {
	loadController?.abort();
	updatePhase(original ? "ready" : "empty");
	setStatus(original ? "Photo loading cancelled" : "Ready when you are");
});
element("dismiss-error").addEventListener("click", clearError);

let dragDepth = 0;
const stage = element("stage");
stage.addEventListener("dragenter", (event) => {
	event.preventDefault();
	if (phase !== "exporting") {
		dragDepth++;
		element("drop-overlay").hidden = false;
	}
});
stage.addEventListener("dragover", (event) => {
	event.preventDefault();
});
stage.addEventListener("dragleave", () => {
	dragDepth = Math.max(0, dragDepth - 1);
	if (!dragDepth) element("drop-overlay").hidden = true;
});
stage.addEventListener("drop", (event) => {
	event.preventDefault();
	dragDepth = 0;
	element("drop-overlay").hidden = true;
	void openPhoto(event.dataTransfer?.files[0]);
});
window.addEventListener("dragover", (event) => {
	event.preventDefault();
});
window.addEventListener("drop", (event) => {
	event.preventDefault();
});

element("reset-settings").addEventListener("click", () => {
	const faceIndex = settings.faceIndex;
	settings = { ...DEFAULT_SETTINGS, faceIndex };
	syncControls();
	element<HTMLSelectElement>("preset-select").value = "default";
	schedulePreview();
});
element("preset-select").addEventListener("change", () => {
	const selected = element<HTMLSelectElement>("preset-select").value;
	const preset = presets.find((item) => item.id === selected);
	settings = {
		...(preset?.settings ?? DEFAULT_SETTINGS),
		faceIndex: settings.faceIndex,
	};
	syncControls();
	schedulePreview();
});
element("save-preset").addEventListener("click", () => {
	const selected = presets.find(
		(item) => item.id === element<HTMLSelectElement>("preset-select").value,
	);
	element<HTMLInputElement>("preset-name").value = selected?.name ?? "";
	element("delete-preset").hidden = !selected;
	element<HTMLDialogElement>("preset-dialog").showModal();
});
element("preset-form").addEventListener("submit", (event) => {
	event.preventDefault();
	const name = element<HTMLInputElement>("preset-name").value.trim();
	if (!name) {
		element<HTMLInputElement>("preset-name").focus();
		return;
	}
	const existing = presets.find(
		(item) => item.name.toLocaleLowerCase() === name.toLocaleLowerCase(),
	);
	if (!existing && presets.length >= 30) {
		element<HTMLInputElement>("preset-name").setCustomValidity(
			"You have 30 presets. Delete a saved preset first, or use its name to replace it.",
		);
		element<HTMLInputElement>("preset-name").reportValidity();
		return;
	}
	const preset = {
		id: existing?.id ?? crypto.randomUUID(),
		name,
		settings: { ...settings, faceIndex: 0 },
	};
	presets = [...presets.filter((item) => item.id !== preset.id), preset];
	const saved = persistPresets();
	refreshPresetOptions(preset.id);
	element<HTMLDialogElement>("preset-dialog").close();
	if (saved) setStatus(`Saved “${name}” in this browser`);
});
element<HTMLInputElement>("preset-name").addEventListener("input", () =>
	element<HTMLInputElement>("preset-name").setCustomValidity(""),
);
element("delete-preset").addEventListener("click", () => {
	presets = presets.filter(
		(item) => item.id !== element<HTMLSelectElement>("preset-select").value,
	);
	persistPresets();
	refreshPresetOptions();
	element<HTMLDialogElement>("preset-dialog").close();
});
element("about-button").addEventListener("click", () =>
	element<HTMLDialogElement>("about-dialog").showModal(),
);
document
	.querySelectorAll<HTMLButtonElement>(".dialog-close")
	.forEach((button) =>
		button.addEventListener("click", () => button.closest("dialog")!.close()),
	);
document.querySelectorAll<HTMLDialogElement>("dialog").forEach((dialog) =>
	dialog.addEventListener("click", (event) => {
		if (event.target === dialog) {
			const rect = dialog.getBoundingClientRect();
			if (
				event.clientX < rect.left ||
				event.clientX > rect.right ||
				event.clientY < rect.top ||
				event.clientY > rect.bottom
			)
				dialog.close();
		}
	}),
);

function toBlob(canvas: HTMLCanvasElement, type: string): Promise<Blob> {
	return new Promise((resolve, reject) =>
		canvas.toBlob(
			(blob) =>
				blob
					? resolve(blob)
					: reject(
							new Error(
								"The browser could not encode this photo. Try a smaller photo or a different format.",
							),
						),
			type,
			0.96,
		),
	);
}

element("export-photo").addEventListener("click", async () => {
	if (phase !== "ready" || !pipeline || !hasPreview) return;
	clearTimeout(previewTimer);
	previewController?.abort();
	++previewVersion;
	element("preview-busy").hidden = true;
	element("share-photo").hidden = true;
	clearError();
	const controller = new AbortController();
	exportController = controller;
	updatePhase("exporting");
	setStatus("Developing your full resolution photo", true);
	element<HTMLProgressElement>("export-progress-bar").value = 0;
	try {
		const result = await pipeline.render(
			{ ...settings },
			{
				maxDimension: null,
				signal: controller.signal,
				onProgress(fraction: number) {
					element<HTMLProgressElement>("export-progress-bar").value =
						Math.max(0, Math.min(1, fraction)) * 0.94;
				},
			},
		);
		if (controller.signal.aborted) return;
		const type = element<HTMLSelectElement>("export-format").value;
		const blob = await toBlob(result, type);
		if (controller.signal.aborted) return;
		const extension = blob.type === "image/png" ? "png" : "jpg";
		exportedFile = new File([blob], `${fileName}-boy-ii.${extension}`, {
			type: blob.type,
		});
		if (downloadUrl) URL.revokeObjectURL(downloadUrl);
		downloadUrl = URL.createObjectURL(blob);
		const link = Object.assign(document.createElement("a"), {
			href: downloadUrl,
			download: exportedFile.name,
		});
		document.body.append(link);
		link.click();
		link.remove();
		element<HTMLProgressElement>("export-progress-bar").value = 1;
		setStatus("Your full resolution photo is exported");
		if (navigator.canShare?.({ files: [exportedFile] }))
			element("share-photo").hidden = false;
	} catch (error) {
		if (!isCancelled(error, controller.signal)) {
			showError(`Export could not finish. ${messageOf(error)}`);
			setStatus("Export could not finish");
		}
	} finally {
		if (controller.signal.aborted)
			setStatus("Export cancelled. Your photo is still here.");
		updatePhase("ready");
	}
});
element("cancel-export").addEventListener("click", () => {
	exportController?.abort();
});
element("share-photo").addEventListener("click", async () => {
	if (!exportedFile) return;
	try {
		await navigator.share({ files: [exportedFile] });
	} catch (error) {
		if (!isCancelled(error))
			showError(`Couldn’t open sharing. ${messageOf(error)}`);
	}
});

window.addEventListener("pagehide", () => {
	previewController?.abort();
	loadController?.abort();
	exportController?.abort();
	if (downloadUrl) URL.revokeObjectURL(downloadUrl);
});

// Keyboard focus must stay below the sticky photo on narrow screens.
document.addEventListener("focusin", (event) => {
	const target = event.target;
	if (
		!(target instanceof HTMLElement) ||
		!target.closest(".inspector") ||
		!original ||
		!matchMedia("(max-width: 780px)").matches
	)
		return;
	requestAnimationFrame(() => {
		const bottom = document
			.querySelector<HTMLElement>(".studio")!
			.getBoundingClientRect().bottom;
		const top = (target.closest(".control") ?? target).getBoundingClientRect().top;
		if (top < bottom + 16) window.scrollBy(0, top - bottom - 16);
	});
});

refreshPresetOptions("default");
syncControls();
updatePhase("empty");
