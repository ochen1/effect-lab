# Independent face reference sources

The canonical OBJ is Google's public authored face geometry, used by synthetic
adapter tests. It is not an inferred face or a user photo. The two model cards
explicitly state Apache License 2.0 for the detector and 478-point landmark model.
The license text is at `public/models/independent/FACE-LICENSE.txt`.

`public/models/independent/face-provenance.json` records official source URLs,
file sizes and SHA-256 digests, including each model inside the task archive.
Run `python3 tools/fetch_independent_face.py` to verify or restore these files.

The runtime disables blendshape and transformation-matrix outputs. The official
task bundle is preserved byte-for-byte, including those optional components.
The adapter uses named anatomical contours, with interpolation at each eye,
brow and lip. Mouth corners, mouth centres and cupid's bow peaks are explicit
anchors. No original neural model parameters, predicted faces, or learned
alignment templates are used to construct the independent geometry.

`tests/independent-face-browser.html` compares trackers on a local image. Add
`?analysis=app` to compare using the shipped engine-specific analysis limits.
The independent engine uses 720 by 1280; original uses 360 by 640, as in the
app. The page keeps images and landmark coordinates in the tab and returns only
aggregate distances and timings. Original tracker output is a comparison
baseline, not ground truth. The committed aggregate report states the sample
and hardware limitations.
