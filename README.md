# Effect Lab

A personal photo lab that runs in a mobile or desktop browser. **BOY II** is the first supported effect. The app shell, local photo handling, presets, and export flow are named independently of that effect so the collection can grow.

The original **BOY II** effect is by **dikdikz7**, effect ID **2420270134**. [Source provenance](research/original-effect-provenance.json) records the untouched original archive and member hashes.

[Open the app](https://ochen1.github.io/effect-lab/) · [Source and research](https://github.com/ochen1/effect-lab)

## What the app does

Choose a photo, use the camera file picker, or drop an image into the preview. Adjust the effect, compare with the original, save a named preset in this browser, and export a JPEG or PNG at the source dimensions. Mobile previews stay visible while adjusting controls. Preview work is debounced and smaller than the final export. Long operations show status and support cancellation.

Photo pixels stay in the browser. Network requests fetch static application files, models, and original effect assets. There is no photo upload endpoint, account system, analytics, or server inference. Presets store versioned settings only. The first edit downloads the processing tools; offline installation is not promised.

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

Skin processing applies to one selected face. The authored makeup overlays apply to every detected face. Skin, color, and makeup can each be switched off. Reset restores the original BOY II settings. If no face is found, color adjustments remain available and the app says that facial effects were not applied.

## Objective and approach

The goal is a complete, adjustable browser implementation of the supplied effect, including its original neural skin treatment, face analysis, authored textures, and color processing. The browser does not load a native desktop framework or substitute another face model.

The implementation was built by extracting the original model containers and assets, converting the original networks to ONNX, recovering alignment and mesh arithmetic, and comparing isolated stages with native reference tools on mathematical inputs. Native tools are development references; the deployed app runs TypeScript, WebGL 2, and ONNX Runtime Web.

```text
local photo → original face networks → original alignment → original skin model
           → original color shader → original TT295 makeup geometry + textures
           → browser preview / full resolution image
```

`src/pipeline.ts` coordinates these stages and serializes work. Face analysis uses a reduced image, landmarks map back to source coordinates, and the skin model result is cached while effect amounts change. `src/compositor.ts` renders in tiles so GPU texture limits do not force export dimensions to shrink. The skin runtime attempts WebGPU and falls back to single-thread WebAssembly when needed. Face inference uses WebAssembly.

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
| Original TT295 geometry | [47 synthetic comparisons](research/makeup-geometry-tt295-validation.json) match all 590 float32 coordinates exactly. The separate 248-point fallback is preserved as research and separately tested. |
| Browser compositor | [Synthetic browser checks](research/compositing-browser-validation.json) verify an exact 3000 × 4000 identity pass, identical tiled/untiled results, skin orientation, makeup changes, and cancellation. |
| Application boundaries | Bun tests cover stored settings validation, tensor layout, inference resource lifetime, alignment, and the native geometry fixtures. |
| Local app flow | A real browser loaded a 3000 × 4000 photo, rendered the GPU preview, and exported a PNG that decoded at 3000 × 4000. Brightness, saved presets, and reset were exercised. No photo or exported image is included as evidence. |
| Responsive UI | [A 412 × 915 browser layout check](research/ui-browser-validation.json) loads a mathematical checkerboard, renders color with a no-face notice, and verifies zero horizontal overflow plus visible keyboard focus below the sticky preview. |

**Complete phone-app pixel parity is not established.** The browser processes a still image with the original detector and the package's two refinement cycles. It does not replay the native video tracker's frame history or temporal landmark filtering. Input sizing, browser image decoding, final rasterization, and phone camera processing can also change the final image. Exact network tensors, crop samples, and geometry arithmetic do not establish equivalence to every native video session. See [the face runtime findings](research/face-runtime.md). Actual Android hardware has not yet been verified; responsive browser sizing is a layout check, not an Android device test.

WebGL 2 is required. Recent Safari, Chrome, or Edge is recommended. Memory limits still apply to large photos, and full resolution exports can take longer on a phone. Failed processing produces a visible error; the app does not silently export the source as an edited result.

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
