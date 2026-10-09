# Native makeup landmark conversion

`src/makeup-geometry.ts` transcribes the native `BEF::FaceParamFaceUCV248`
106-landmark fallback into TypeScript. The browser executes the recovered
geometry operations directly. No native library, local Jacobian, fitted
coefficients, photo, or landmark data derived from a photo is needed at runtime.

The resulting 248 vertices concatenate:

| Vertex range | Source |
| --- | --- |
| 0–105 | Original 106 landmarks |
| 106–113 | Eight radial extensions around landmark 46 |
| 114–139 | 26 brow vertices |
| 140–183 | 44 eye vertices |
| 184–247 | 64 lip vertices |

Eyes and brows use uniform open Catmull–Rom splines. Lips use **chordal**
Catmull–Rom: each interval is the Euclidean distance between adjacent control
points. Endpoints are reflected. The implementation rounds each arithmetic
operation to float32 in the order used by the native instructions, including
recursive interpolation rather than substituting the cubic polynomial form.
This matters for exact comparisons and avoids the incorrect fixed Jacobian
approximation for distance dependent lip interpolation.

The named `cvt*106to240` functions retain their native names. Their returned
sizes are 44, 26, and 64 respectively; none returns 240 points by itself.

The native UV and triangle arrays are extracted into
`public/effects/boy-ii/makeup-geometry.json`, with SHA-256 provenance hashes.
`buildMakeupMesh` combines those arrays with newly computed positions.

## Reproduction

On macOS, mount a local Effect House application at `/Volumes/Effect House`:

```sh
python3 tools/validate_makeup_geometry.py
```

The script compiles `tools/native_makeup_geometry_reference.cpp` into a temporary
directory, calls the native geometry on deterministic synthetic point arrays,
runs the TypeScript implementation, and compares every coordinate. All temporary
inputs and binaries are removed automatically. The generated report is
`research/makeup-geometry-validation.json`.

Validation covers 47 cases: 32 seeded random arrays at four coordinate scales,
12 rotations/scales/translations, collinear points, completely coincident points,
and one repeated lip control point. All finite float32 output coordinates match
exactly for all three helpers and the entire 248-vertex assembly. Non-finite
coordinate masks also match. Coincident points cause divisions by zero in the
native chordal interpolator; the port preserves that native behavior. Consumers
should reject such unusable geometry rather than claim it is a valid face.

## Original TT295 assembly recovered

`src/makeup-tt295.ts` now implements the separate original scene geometry through
`buildTT295Positions(base106, extra134)`. It directly transcribes
`AmazingEngine::FaceMakeupUtils::calcTT295Pts`. Dense inputs are ordered as
44 eye points, 26 brow points, and 64 lip points. The routine combines the base
contour and nose with these dense groups and computes the remaining mesh
vertices, including the forehead and cheek extensions and four uniform splines.

The input coordinate convention is **y up and isotropic**, matching native
`calcAlgorithmPointsV2`: x is normalized by image width; y is
`(1-yNormalized)*(imageHeight/imageWidth)`. Feeding ordinary y-down pixels into
this routine gives incorrect forehead geometry. Explicit adapters are available
in `src/makeup-geometry.ts`.

Reproduce the assembly comparison with:

```sh
python3 tools/validate_makeup_tt295.py
```

The 47 synthetic cases match all 590 float32 coordinates exactly; the report is
`research/makeup-geometry-tt295-validation.json`. The deterministic source
generator `tools/generate_makeup_tt295.py` retains every native float operation
in its original order. It translates the recorded straight-line arithmetic;
allocation and reference-counting are omitted, and the four uniform spline
calls use the independently validated TypeScript spline.

This proves the original **295-vertex geometric assembly**. Mapping the extra
landmark network output into the canonical dense groups, SDK input normalization,
network preprocessing, and final texture rasterization are independent
requirements for complete original-effect parity. The 248-vertex fallback
remains available and must not be confused with the original 295-vertex path.

The ARM64 disassemblies in this directory record the routines used for the port.
They contain code and constants, with no user image data. Native framework
binaries are not included.

## Canonical 240 point ordering

Native `BEF::FaceParamV2CV240::update(float*,...)` passes 240 points directly
into `convertToBE180`. Its dense branches copy eye indices **106–149**, brow
indices **150–175**, and lip indices **176–239**. This confirms the renderer's
canonical 240 point ordering: base 106 followed by the dense 134. It does not
by itself establish that a particular network output has already been arranged
in that order; that requires tracing or comparing the inference result path.

Portable regression fixtures contain 240 mathematical points generated by
`x=i*2.23+13*sin(i)`, `y=i*.73+7*cos(i*.7)`, rounded to float32. The committed
248 and 295 outputs were generated by the native reference, not the browser.
Run `bun test src/makeup-geometry.test.ts` without a native installation.
`makeup-geometry-provenance.json` records the reference framework SHA-256 and
symbol addresses. Reference parity is scoped to that framework version; no
claim of independently captured mobile TikTok execution is implied.

## Original mesh UV and triangle extraction

`public/effects/boy-ii/makeup-tt295.json` contains **295 UV pairs and 1,656
indices (552 triangles)** from the original package, independently of the native
248 fallback asset. Reproduce it with:

```sh
python3 tools/extract_makeup_tt295.py /path/to/original-package
```

All four original `.mesh` files have identical UV values and topology. Their
serialized vertex buffer contains 8,850 floats: six slots of 295 vertices,
interleaved as `(x,y,z,u,v)`. The first slot holds authored positions; the five
remaining slots have `(-1,-1,0)` positions but repeat the same UVs. There are five
submeshes. Each has 1,656 uint16 indices, and each copy equals the first submesh
plus `faceIndex*295`. Only vertices 0–292 are referenced; the two computed eye
centers (293 and 294) are not used by these makeup triangles.

The extractor checks every copy, compares all four original files, and records
source SHA-256 values, array offsets, and extracted-array hashes in the JSON.
It preserves raw package UVs without flipping V. It reads only named original
mesh files and does not copy their authored positions or consume user images.

## Network-to-renderer ordering correction

The renderer's canonical240 ordering above **is not the raw extra network's
ordering**. The network emits base106, **mouth64, brow26, eye44**. Treating its
last134 points directly as eye44/brow26/mouth64 put lip geometry on the eyes and
eye geometry on the lips. This was a wiring defect in the browser port, rather
than evidence of a defect in the original effect.

The required canonical dense134 permutation is:

| Renderer group | Raw network indices, inclusive |
| --- | --- |
| Eyes44 | 196–239 |
| Brows26 | 170–195 |
| Mouth64 | 106–169 |

Every group preserves its internal traversal. This is independently verified
against native SDK output, not inferred solely from labels or ranges. Decode a
captured original extra-network output using its native crop transform and the
authored mean, then compare all134 points with the SDK's `bef_face_ext_info_t`:

```sh
python3 tools/validate_makeup_extra_mapping.py /external/native-trace-directory
```

For the captured reference, all134 points agree within **0.00002502 pixels**.
`research/makeup-extra-order-validation.json` contains only aggregate error
statistics and non-personal permutation indices. Captured tensors, crop
transforms, photographs, and image-derived landmarks stay outside the repository.

`tests/makeup-registration.test.ts` tests the entire route from authored network
mean through the public reorder function and TT295 assembly to image positions.
It verifies every eye, brow, and mouth vertex against its anatomical region,
checks independent base106 corner landmarks to detect reversal, and projects
the original lips texture's pigment coordinate through the authored UV triangles
to confirm it lands on the mouth below the nose. These checks cover the
integration mistake that isolated native spline/mesh arithmetic tests missed.
