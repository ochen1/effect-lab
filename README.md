# Effect Lab

A personal photo, video, and live camera lab that runs in a mobile or desktop browser. **BOY II** is the first supported effect. The app shell, local photo handling, presets, and export flow are named independently of that effect so the collection can grow.

The original **BOY II** effect is by **dikdikz7**, effect ID **2420270134**. [Source provenance](research/original-effect-provenance.json) records the untouched original archive and member hashes.

[Open the app](https://ochen1.github.io/effect-lab/) · [Source and research](https://github.com/ochen1/effect-lab)

## What the app does

Choose **Photo**, **Video**, or **Live camera**. The same effect controls and saved presets work across all three modes. Photos keep their full-resolution JPEG/PNG export and before/after comparison. Video playback supports play, pause, seeking, sound, and original/filtered preview. Live camera supports camera switching, paired original/edited photos, and paired original/edited video recording. Camera access begins only when you press Start; microphone recording is a separate opt-in. Every mode has a fullscreen preview, using native fullscreen when available and a viewport-filling fallback otherwise.

Photo, video, and camera pixels stay in the browser. Network requests fetch static application files, models, and original effect assets. There is no photo upload endpoint, account system, analytics, or server inference. Presets store versioned settings only. The first edit downloads the processing tools; offline installation is not promised.

Double-click an effect slider, its value, or its label to restore that setting’s original default; the small reset button provides the same action. On a touchscreen, hold the photo (or the Edited/Compare button) briefly to see the original. Releasing restores the previous view and comparison position. Moving to drag or scroll cancels the hold.

BOY II retains its authored defaults:

| Control | Default |
| --- | ---: |
| Skin strength | 1.00 |
| Color intensity | 0.30 |
| Brightness | -0.02 |
| Temperature | -0.01 |
| Saturation, contrast, exposure, tint | 0.00 |
| Contour | 0.50 |
| Lips | 0.19 |
| Berry | 0.40 |

Skin processing applies to one selected face. The authored makeup overlays apply to every detected face. Skin, color, and makeup can each be switched off. Reset restores the original BOY II settings. For photos, if no face is found, color adjustments remain available and the app says that facial effects were not applied.

## Objective and approach

The goal is a complete, adjustable browser implementation of the supplied effect, including its original neural skin treatment, face analysis, authored textures, and color processing. The browser does not load a native desktop framework or substitute another face model.

The implementation was built by extracting the original model containers and assets, converting the original networks to ONNX, recovering alignment and mesh arithmetic, and comparing isolated stages with native reference tools on mathematical inputs. Native tools are development references; the deployed app runs TypeScript, WebGL 2, and ONNX Runtime Web.

```text
photo / video frame → original face networks → original alignment → original skin model
           → original color shader → original TT295 makeup geometry + textures
                    → preview / photo export / encoded video
```

`src/pipeline.ts` coordinates these stages and serializes work. Face analysis uses a reduced image, landmarks map back to source coordinates, and the photo skin model result is cached while effect amounts change. Motion frames receive fresh face analysis and fresh skin inference; the loaded photo is preserved when switching modes. `src/compositor.ts` renders in tiles so GPU texture limits do not force export dimensions to shrink. The skin runtime attempts WebGPU and falls back to single-thread WebAssembly when needed. Face inference uses WebAssembly.

## What is verified

Checked-in input fixtures are synthetic. Reports contain numerical results and provenance, with no photos or photo-derived landmark arrays.

| Stage | Evidence and scope |
| --- | --- |
| Original skin model conversion | [Ten native comparisons](research/skin-validation.json), all passing. Worst mean absolute error `1.03e-6`; worst individual error `1.16e-4`, in normalized model output units. |
| Browser skin execution | [WebAssembly and WebGPU checks](research/browser-skin-validation.json) compare all 409,600 output values of a mathematical gradient. Both pass. This is one observed browser/device, not a performance benchmark. |
| Skin output quantization | [4,912 synthetic boundary and range values](tests/native-gan-u8.json) match the native conversion exactly. Model output becomes RGBA8 before texture filtering, using the original float32 scaling and nearest-even rounding. |
| Original face networks | Gradient and seeded-noise reports compare 74 detector, 94 base, and 113 extra-network retained activations. Integer values match exactly; small base auxiliary float differences remain below `2e-6`. See [the face extraction notes](research/face-format.md). |
| Face SDK crop and coordinate processing | [Native geometry audit](research/face-geometry-validation.json): all 43,200 initial-crop, 43,200 base-crop, and 76,800 extra-crop values match. Immediate base coordinate decode has maximum error below `0.000027` pixel. The audit reports numerical metrics only. |
| Face alignment | [Portable regression tests](tests/compositing.test.ts) cover the original similarity fit, margin, offset, orientation, and pixel sampling. The native synthetic reference agrees within `0.001` pixel. |
| Makeup registration | [Native landmark-order comparison](research/makeup-extra-order-validation.json) verifies all 134 dense points within `0.000026` pixel. [Full-strength browser checks](tests/makeup-registration-browser-report.json) verify lip, contour, and berry placement using authored fixtures. The original browser release mixed the network’s mouth/eye groups; that port bug is corrected. |
| Original TT295 geometry | [47 synthetic comparisons](research/makeup-geometry-tt295-validation.json) match all 590 float32 coordinates exactly. The separate 248-point fallback is preserved as research and separately tested. |
| Browser compositor | [Synthetic browser checks](research/compositing-browser-validation.json) verify an exact 3000 × 4000 identity pass, identical tiled/untiled results, skin orientation, makeup changes, and cancellation. |
| Application boundaries | Bun tests cover stored settings validation, tensor layout, inference resource lifetime, alignment, and the native geometry fixtures. |
| Local app flow | A real browser loaded a 3000 × 4000 photo, rendered the GPU preview, and exported a PNG that decoded at 3000 × 4000. Brightness, saved presets, and reset were exercised. No photo or exported image is included as evidence. |
| Responsive UI | [A 412 × 915 browser layout check](research/ui-browser-validation.json) loads a mathematical checkerboard, renders color with a no-face notice, and verifies zero horizontal overflow plus visible keyboard focus below the sticky preview. |

**Complete phone-app pixel parity is not established.** The browser processes each image or video frame with the original detector and the package's two refinement cycles. It does not replay the native video tracker's frame history or temporal landmark filtering. Input sizing, browser image decoding, final rasterization, and phone camera processing can also change the final image. Exact network tensors, crop samples, and geometry arithmetic do not establish equivalence to every native video session. See [the face runtime findings](research/face-runtime.md). Actual Android hardware has not yet been verified; responsive browser sizing is a layout check, not an Android device test.

WebGL 2 is required. Recent Safari, Chrome, or Edge is recommended. Memory limits still apply to large photos, and full resolution exports can take longer on a phone. Failed processing produces a visible error; the app does not silently export the source as an edited result.

## Video and live camera

Video export uses [Mediabunny](https://mediabunny.dev/guide/converting-media-files) and browser WebCodecs. It processes source frames asynchronously with their original timestamps, independently of preview speed. Original audio is retained by default; incompatible audio is transcoded when supported. An unsupported track produces an error instead of silently losing audio. The app prefers MP4/H.264 and can fall back to WebM according to the browser's available encoders. Export defaults to original resolution, with 1080-pixel and 720-pixel alternatives (longest edge); common encoders require even dimensions, so an odd source edge can lose one pixel.

The preview processes one frame at a time and displays its measured processing speed. It skips ahead during playback rather than queueing old frames. Live recording saves two files: the original camera stream at its incoming size/cadence, and the edited preview at the device's processing speed. The two encoders run independently; there is no promise of 30 processed frames per second. Their playback durations share a common stop boundary, while native frame timestamps, inference latency, and start offsets are documented in the sidecar. Video-file export processes every source frame even when inference is slower than playback. Skin targets the first detected face in motion modes; overlays apply to all detected faces. Detection is recomputed per frame, without persistent person IDs.

Live recording requires the browser’s [Origin Private File System](https://developer.mozilla.org/en-US/docs/Web/API/File_System_API/Origin_private_file_system). MediaRecorder chunks are written as they arrive; pending encoded writes are capped at 8 MiB per stream. A quota error or a disk that cannot keep up stops recording visibly. Live recording and its Mediabunny packet-copy finalization have no whole-clip RAM fallback. Uploaded-video export still uses temporary disk storage when available, with its separate 128 MB encoded-data fallback. These files stay on the device. Large exports still require available local storage, and decoded-frame processing can be slow on a phone. Camera recordings are finalized with duration and seek metadata without re-encoding their packets. Stopping the camera or backgrounding the page stops its hardware tracks; a completed recording can then be downloaded. Camera preview requires HTTPS (the published site) or localhost, WebGL 2, and camera permission. Offline video export also requires a working WebCodecs decoder and encoder for the chosen tracks. Unsupported functionality produces a visible message.

Validation: [frame-pipeline checks](tests/pipeline-motion-browser-report.json), [video codec and audio roundtrips](research/video-file-validation.json), [recording finalization](tests/recording-browser-report.json), and [integrated UI checks](research/motion-ui-validation.json). Tests preserve all 24 frames and exact two-second timing of a face clip, including identical decoded audio. A separate eight-frame variable-rate fixture preserves every timestamp during processing slower than playback. Camera UI tests use real browser MediaStreams generated from fixtures; physical camera hardware remains untested.

Implementation: `src/motion.ts` owns devices, playback, and paired captures; `src/live-recording.ts` and `src/recording-storage.ts` handle independent encoders and bounded OPFS writes; `src/frame-pump.ts` prevents overlapping preview work; `src/video-file.ts` handles decoding, audio, timestamps, encoding, and cancellation; `src/pipeline.ts` applies the original models to each captured frame.

## Originals, fullscreen, and camera color

**Photo uploads:** Download original preserves the selected file byte for byte. Photo exports also list the original, edited file, and settings JSON together. **Camera shutter/video-frame capture:** one frozen decoded frame produces matching original and edited PNGs at the full incoming frame dimensions, plus a settings sidecar. Live preview resolution does not reduce these photos.

**Your files** retains pairs across edits and mode changes in the current tab. Each file has a download link and sharing where supported. **Edit original** reopens an unfiltered source and restores the saved photo settings or the recording’s initial settings. Live parameter changes are not a complete settings timeline. Download the originals for later sessions: this tray is temporary, and closing the page releases its local files. Discarding a disk-backed original that is currently open is blocked until another source is selected.

Fullscreen keeps photo view controls and camera shutter/record/microphone controls accessible. Unsupported native fullscreen uses the browser viewport. Escape or Exit fullscreen restores normal layout.

Camera image capture uses explicit 8-bit SDR sRGB surfaces with browser-managed transfer/gamut conversion. Saved settings include privacy-safe source color metadata, when available, and camera capabilities without device/group identifiers. A P3 gamut alone does not establish HDR; PQ/HLG transfer metadata does. Camera PNGs are SDR at incoming video-frame resolution. The original recording consumes the camera stream directly; its codec/color encoding is determined by the browser.

An HDR webcam color report is still being investigated. Synthetic sRGB, P3, PQ, HLG, and limited-range sources showed zero additional error through HTML video → capture canvas → compositor → PNG. This does not reproduce or resolve a particular physical camera/driver issue, and no guessed gamma correction was applied. See [the color tests](tests/capture-color-browser-report.json) and [paired recording tests](tests/paired-recording-browser-report.json).

### Native Android performance

A purpose-built Android app offers more control over camera buffers, threads, GPU composition, encoders, and inference. The current web landmark path is single-threaded WASM and includes canvas readbacks/uploads, so there is room for improvement, especially for sustained live use. The browser skin model already uses WebGPU when available. A significant speedup is plausible but must be measured on the target phone and these exact models; wrapping this website in a WebView alone would not establish one. Relevant native building blocks are [CameraX analysis](https://developer.android.com/media/camera/camerax/analyze) and [ONNX Runtime/XNNPACK](https://onnxruntime.ai/docs/execution-providers/Xnnpack-ExecutionProvider.html).

## Run and check

Use the Bun version in `.bun-version`:

```sh
bun install --frozen-lockfile
bun run dev
```

```sh
bun run test
bun run build
bun run check:site
bun run preview
```

`predev` and `prebuild` copy the matching ONNX Runtime Web `.wasm` and `.mjs` files from the pinned dependency. They are generated locally under `public/vendor/onnx/`, excluded from Git, and included in `dist/`. No native desktop binary is needed to build or use the site.

For a development-only numerical browser check, open `/browser-harness.html` on the Vite dev server. It exposes `window.runSkinValidation("wasm")` and `window.runSkinValidation("webgpu")`. The harness and fixtures are outside the website build.

## Research and reproduction

The repository retains extraction and conversion source, original extracted model data, disassembly notes, native oracle source, and numerical synthetic evidence. [The research inventory](research/README.md) describes retained files, provenance, corrected exploratory outputs, and local files excluded from publication.

Portable model validation needs Python with `numpy`, `onnx`, and `onnxruntime`; package extraction also uses `cryptography`. The app build does not need Python. For example:

```sh
python3 -m venv .venv
.venv/bin/pip install numpy onnx onnxruntime cryptography
.venv/bin/python -m unittest discover -s tools -p 'test_*.py'
.venv/bin/python tools/validate_skin.py --report /tmp/effect-lab-skin-local.json
```

The last command validates portable execution. A fresh native comparison additionally requires a separately available matching Effect House framework and a locally compiled oracle; see the scripts and provenance records. Native framework binaries and compiled reference executables are not distributed. Original assets keep their recorded source provenance; the project does not claim ownership of them.

## GitHub Pages

The [Pages workflow](.github/workflows/pages.yml) checks changes on pull requests, then builds and deploys `main` through the `github-pages` environment. Set the repository's Pages source to **GitHub Actions** before its first deployment. It uploads only `dist/`, after tests, TypeScript checking, and the website inventory check. The build uses a relative Vite base so it works at `/effect-lab/`.

The workflow follows the official [Pages artifact](https://github.com/actions/upload-pages-artifact) and [deployment](https://github.com/actions/deploy-pages) actions. The first published build was verified in a real browser on October 9, 2026: photo selection, GPU preview, controls, comparison, reset, and PNG export all worked. The exported image was decoded and checked at 3000 × 4000 pixels. [The report](research/ui-browser-validation.json) includes the deployed bundle and workflow run; private inputs, outputs, and screenshots are excluded. Release checks passed 24 Bun tests and 16 Python extraction/conversion tests.

The video/camera release was also verified on the published Pages URL: a 24-frame clip exported at its original 360 × 480 dimensions with audio and exact two-second duration, and a generated camera stream produced a finalized recording with tracks released on stop. See the [motion UI report](research/motion-ui-validation.json) for the deployed bundle and scope.
