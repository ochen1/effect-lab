# Research inventory and provenance

This directory preserves the work behind the browser implementation. It is source-repository material and is never copied into the deployed website. The website build reads only `src/`, the entry HTML, and `public/`.

The [publication provenance audit](publication-provenance-audit.json) records the origin of research tensors and the examination of 220 files. It found no raster image or private photo-derived data in that snapshot. Later additions still need their own provenance. Private face SDK photo probes and their outputs were kept outside this repository and must remain outside publication.

## Retained intermediate work

| Paths | Origin and purpose |
| --- | --- |
| `original-effect.tar.zst`, `original-effect-provenance.json` | Untouched original BOY II package and 430-member inventory with hashes. The 536,589-byte archive SHA-256 is `f4948df5107318bb00a36ad1aad9dc0a07b0acbeeff75a3adea8475b52b0b5c2`. It is not a runtime website dependency. |
| `extracted/` | Original model-container entries: graph, model data, effect scripts, configuration, and extraction manifests. |
| `skin-network/` | Decoded original skin graph, weights, model data, and hashes. |
| `face-network/`, `face-extra/` | Independently extracted original face graphs, raw/compressed weights, and package manifests. The manifests record source package SHA-256, per-entry hashes, and native parameters. |
| `face-parts/` | Superseded exploratory extraction outputs, retained as intermediate work. **Its `weights.decoded` files are incorrect**: the experiment applied AES to weights that were already raw. They are never used by the app or final conversion; use `face-network/` and `face-extra/`. |
| `decoder-table.bin` | Static decoding constants from the model format. |
| `*.asm` | Native ARM64 routine disassembly used to recover arithmetic and data conventions. These are text files, not native executable binaries. |
| `*.frag` | Original/recovered shader source used during implementation. |
| `face-trace.cpp` | Intermediate native tracing helper source. Stable reference source is also in `../tools/native_*.cpp`. |
| `native-preview/` | Six explicitly retained documentary source/provenance files for the original native preview experiment. No capture, renderer binary, or photo tensor is retained. See its README. |
| `skin-validation.json`, `browser-skin-validation.json` | Original skin native comparison and actual browser numerical evidence. |
| `face-*-layer-validation.json`, `face-quantization-validation.json` | Synthetic gradient/noise activation and fixed-point arithmetic comparisons. |
| `face-geometry-validation.json`, `face-runtime.md` | Native crop and immediate coordinate-decoding findings, with numerical summary metrics and recovered formulas only. The source frame and captured tensors are excluded. |
| `compositing-browser-validation.json`, `ui-browser-validation.json` | Browser checks: synthetic compositor comparisons and numerical/UI state results without photo artifacts. |
| `face-gradient-{120,160}.i16`, `native-face-{base,detect}-*.raw` and associated JSON | Mathematical RGB gradients and their native tensor results. The original author attested that these exact filename groups use no photo input. |
| `reference-*.f32`, `onnx-output.npy` | Historical skin comparison using a seeded uniform random input and its intermediate/output tensors. |
| `makeup-geometry-synthetic-*.f32` | Mathematical landmark inputs and native results. Required by portable Bun regression tests. |
| `makeup-final.f32`, `makeup248.f32`, `makeup.positions.f32`, `makeup.jacobian.f32` | Original package mean landmarks, plus controlled four-unit perturbations for the historical Jacobian experiment. The positions/final arrays were independently regenerated and match all 496 values exactly. These are research artifacts; the browser uses the recovered original TT295 arithmetic. |
| `makeup.uv.f32`, `makeup.triangles.u16` | Static authored geometry. |
| `makeup-geometry-*.json`, `makeup-geometry.md`, `face-format.md` | Numerical evidence, native symbol/version provenance, and explanations of the recovered formats. |

`../tests/fixtures/skin-gradient-*` contains a separate mathematical RGB gradient and model output, with its formula/layout and model hash in the adjacent JSON. `../tests/native-alignment.json` contains a synthetic affine-alignment case. No fixture is a portrait or a landmark record from a portrait.

## Deliberately excluded local artifacts

The `.gitignore` includes research paths individually. It excludes compiled native helpers, dependency environments, build output, runtime copies generated from npm, logs, screenshots, and user image formats. The only allowed standalone PNG files are the six original effect textures/masks in `public/effects/boy-ii/`; `assets.json` records their SHA-256 and size, and the website check verifies those hashes.

`face-parts/` is retained to document the earlier failed extraction approach. Its incorrect decoded weights must not be used as a model source. `tools/unpack_face.py` is the corrected independent parser used by the final conversion.

Empty provisional extraction reports and duplicate local logs are also excluded. Their completed manifests and validation reports are retained. No research file was deleted to prepare publication.

## Reproducing the stages

| Stage | Source |
| --- | --- |
| Effect container parsing | `../tools/unpack_model.py` |
| ByteNN skin graph/weight decoding | `../tools/decode_bytenn.py` |
| Skin ONNX conversion | `../tools/convert_skin.py` |
| Legacy face extraction and ONNX conversion | `../tools/unpack_face.py`, `../tools/convert_face.py` |
| Original textures, shader and alignment extraction | `../tools/extract_effect_assets.py` |
| Native skin, face, alignment, compositor and makeup references | `../tools/native_*.cpp` |
| Skin numerical comparison | `../tools/validate_skin.py` |
| Face activation tracing | `../tests/trace_face_model.py` |
| Face integer arithmetic audit | `../tests/validate_face_quantization.py` |
| Original TT295 source generation and verification | `../tools/generate_makeup_tt295.py`, `../tools/validate_makeup_tt295.py` |
| Separate FaceUCV248 fallback verification | `../tools/validate_makeup_geometry.py` |

Each Python tool supplies its arguments with `--help`, or records its invocation near the source entry point. Native references are tied to the recorded ARM64 library build and symbol layout. Their source is included; use a separately available matching native installation to rebuild them. Browser execution has no dependency on those tools.

The original effect is **BOY II**, effect ID `2420270134`, by **dikdikz7**. Its [source archive URL](https://lf16-effectcdn-sg.tiktokcdn.com/obj/ies.fe.effect.alisg/bccbefabc0ff09f12e3954f857d04b4a), API path, Effect House version, hashes, and complete member inventory are recorded in [original-effect-provenance.json](original-effect-provenance.json).

The portable skin model SHA-256 is `c4d17902dc2f74173e988a069df3d48aad3583a1ca5febebf7d381b4e006595d`. The compared native skin model SHA-256 is `66d0b9008cb0bdb76ef925a6c3f2672f697753c53d79772ae93ff669890ac5c7`. Face model and native geometry provenance is tied to the supplied extracted files and the locally available matching native framework; no independently verified download URL is asserted for that framework.

## Video and camera follow-up

`video-file-validation.json` records synthetic codec, timing, audio, fallback, and cancellation checks. `motion-ui-validation.json` records integrated UI results without private media. Additional browser fixtures and reports live in `../tests/pipeline-motion-browser*`, `../tests/video-browser.ts`, and `../tests/recording-browser*`. The latter generates MediaRecorder output in memory and verifies that lossless remuxing adds usable duration and seeking. Camera requests are simulated with generated browser MediaStreams; these checks do not claim physical-device testing. No input clips, recorded clips, screenshots, or private frame data are committed.
