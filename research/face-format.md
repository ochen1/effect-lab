# Original face network extraction

`tools/unpack_face.py` is an independent parser for the two legacy face model packages. It checks the total size and consumes the package through the final typed parameter dictionaries. The graph and weights hashes in the generated manifests make extraction reproducible.

Each package has a 16-byte identifier, uint32 total length, length-prefixed name, uint32 entry count, and entries containing length-prefixed name, encrypted entry key, graph checksum, encrypted graph, weights checksum, and raw weights. AES-256-ECB wrappers append uint32 plaintext size; padding is discarded according to that size. Auth format strings are built from character immediates in the native face constructor, rather than account or user credentials. Graph keys are decrypted once with the package format key. Weight blobs are **not AES encrypted**.

The final two package dictionaries contain floating-point and signed-integer parameters. The face package requests two base refinement cycles in image mode and identifies base model version2021012501.

## Graph conversion

`tools/convert_face.py` independently converts original graph operations to ONNX. No replacement face model or landmark topology is used. Plain networks store int8/int16 weight tensors and int32 biases. Graphs prefixed `B` pack int16 weights as two offset-binary12 values in three big-endian bytes, with offset2047. Float weights remain float32. Packed blobs have a trailing4byte checksum; conversion validates exact payload consumption before accepting a model.

Convolution kernels are OHWI; depthwise kernels are HWC. All fixed-point positions are recovered from the original graph. Integer outputs use floor(x+0.5), with symmetric saturation at ±2047 for int16 tensors (12 effective bits). Biases are first rounded into the input-fraction+weight-fraction accumulator scale. Graph inputs have fraction6. A signed pixel value of64 therefore represents1.0 in the ONNX input.

Shuffle operates on blocks of4channels. Its native rescaling has asymmetric branch bounds, which are explicitly represented in the converted graph rather than replaced by ordinary ONNX channel shuffle. The activation tracing test documents the recovered behavior across zero, gradient, and seeded random input.

## Verification

`tools/native_legacy_reference.cpp` is a development-only oracle for original ByteNN CPU execution. It is never used by the browser. `tests/trace_face_model.py` compares every named intermediate tensor using synthetic inputs; numerical reports can be published without personal imagery. The detector's six output tensors and the main base network's212 landmark floats match native execution exactly on the tested gradient and seeded-noise fixtures. Extra landmark output480floats also matches exactly on the tested gradient. Native float softmax/pitch/yaw heads can differ in final floating-point rounding at approximately2e-6.

The auxiliary face-extra segmentation branches are not required for BOY II's skin inference, which uses its separately extracted original skin model. The browser extra graph can be pruned to the original240-landmark output with explicit output selection.

## Assets

- `face-network/image_detect`: original image detector, min side160, three scales.
- `face-network/base_det`: original detector-to106-landmark model, input120.
- `face-network/base`: original106-landmark refinement model, input120.
- `face-extra/extra`: original240-landmark model, input160.
- `face-extra/iris`: original20-landmark iris model, input40.
- `face-network/mean`: original template data, not a learned network.

Network parity does not alone prove image preprocessing, anchor decoding, iterative alignment, or landmark-to-mesh coordinate parity. Those components require separate validation against the full face SDK.
