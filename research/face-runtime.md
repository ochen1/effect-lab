# Original face pipeline in the browser

The browser runs four original Effect House models through ONNX Runtime WASM: `image_detect`, `base_det`, `base`, and `extra`. The face networks and their learned weights are extracted from the original packages. The browser does not load native SDK libraries and does not use a replacement face tracker.

## Recovered image processing

1. Resize the shorter image side to 160. Round the longer side to the nearest multiple of 32, with ties downward. Resize with nearest-neighbor sampling. Preserve the separately rounded horizontal and vertical scales.
2. Convert BGR bytes to model values `(byte - 128) / 64`, matching the native integer input and its six fractional bits.
3. Decode the original three SSD output scales. Background logits precede foreground logits by anchor; box channels contain all dx, then dy, dw, dh. Anchor centers are at grid times stride. Width/height deltas use exp. Coordinates truncate toward zero and clip to the image. NMS uses inclusive box areas and threshold 0.3. The original image detector has confidence threshold 0.6.
4. Map both box endpoints to source pixels independently, then derive inclusive width/height. The initial landmark crop is a square with side `round(1.4 * max(width,height))`. The native legacy crop anchors the square to the far edge of the shorter rectangle axis; it is not an ordinary centered expansion. Source inspection and a runtime hook verified this behavior. `initialFaceCrop` contains the complete boundary-dependent rule.
5. Resize that square to 120×120 with nearest-neighbor sampling and black padding. `base_det` returns 106 direct crop coordinates. Map them back using `(cropSide - 1) / 119`, matching the original endpoint alignment.
6. Run two refinement cycles. Fit a similarity transform from 106 landmarks to the original base template scaled by 120/256. Sample the crop, run `base`, add its 106 predicted offsets to the template, and invert the transform.
7. Fit the 106 refined points to the original extra template scaled by 160/256. Run `extra`, add the 240 predicted offsets to its 240-point template, and invert the transform. The dense output ordering is 106 base points, 44 eye points, 26 brow points, 64 mouth points. The renderer uses the original 106 base results and the 134 dense eye/brow/mouth results.

The templates come from `face-network/mean/weights.bin`: base 106 starts at float offset 212; extra 240 starts at float offset 424. These offsets and the 256 reference size were checked against native coordinate processing.

The native affine sampler rounds its horizontal and vertical contributions separately:

```
sourceX = round(A*x + tx) + round(C*y)
sourceY = round(B*x + ty) + round(D*y)
```

This matters: rounding the combined coordinate produced approximately 2 byte values of mean error on the checked crops. Separate rounding matched every sampled value. The implementation retains black borders and BGR channel order.

## Verification and limits

The numerical model audits use synthetic zero, gradient, and seeded random inputs. The image detector's complete integer graph and all six outputs match native execution exactly. The base 106 landmark outputs and extra 240 landmark outputs also match exactly in the checked fixtures. Small differences in other floating-point heads remain within approximately 2e-6. See the `face-*-layer-validation.json` reports and `tests/trace_face_model.py`.

A separate full SDK audit checked image geometry using a bundled preview frame, with all image files and native tensor captures kept outside this repository:

| Stage | Comparison | Result |
|---|---|---|
| Initial120 crop | BGR fixed-point input, 43,200 values | All values identical |
| Aligned120 base crop | BGR fixed-point input, 43,200 values | All values identical |
| Aligned160 extra crop | BGR fixed-point input, 76,800 values | All values identical |
| Base coordinate decode | Before the native temporal filter, 212 coordinates | Mean absolute error 0.00000596 pixels; maximum 0.0000262 pixels |
| Extra alignment | Similarity fit to the native source landmarks and original template | Same recovered formula; float32 rounding differences only |

The browser processes a still image deterministically using the original image detector and the package's two-cycle image refinement setting. It does not replay a native video tracker's frame history. The native SDK's video path initially uses a cached detector crop, waits for a second frame before reporting a face, and applies temporal landmark adjustments. Those stateful steps can change final coordinates even when model outputs and crop sampling agree exactly. Input sizing and padding also affect the detected geometry. Therefore these component-level results are not a claim of exact final-image parity with an arbitrary native video session.

`src/face.test.ts` provides focused regressions for the captured crop rule, integer nearest sampling, separate affine rounding, detector sizing, original SSD channel layout, and inclusive NMS geometry. Tests contain only synthetic pixels and scalar geometry.

## Runtime lifecycle

All ONNX runs are serialized. Native runtime tensors are disposed after copying their results into ordinary JavaScript arrays. Failed model/template loads can retry. Disposal aborts pending fetches, waits for active inference, and releases loaded sessions. An optional AbortSignal allows a cancelled photo job to skip remaining face/refinement stages.
