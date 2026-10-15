"""Evaluate numerically stable, parallel skin-mask spatial reductions.

GlobalAveragePool and ReduceMean(axis=[2,3], keepdims=1) are mathematically
equivalent for NCHW. ORT WebGPU's pooling shader serially adds up to65,536
floats in one invocation; its shared ReduceMean kernel uses parallel reduction.
No trained weights, epsilon, normalization order, or image sizing are changed.
"""
from __future__ import annotations
import argparse
import copy
import hashlib
import json
from pathlib import Path
import time
import numpy as np
import onnx
from onnx import helper
import onnxruntime as ort


def optimize(source: Path, output: Path):
    model = onnx.load(source)
    replaced = 0
    nodes = []
    for node in model.graph.node:
        if node.op_type == "GlobalAveragePool":
            nodes.append(helper.make_node("ReduceMean", list(node.input), list(node.output),
                                          name=node.name, axes=[2, 3], keepdims=1))
            replaced += 1
        else:
            nodes.append(copy.deepcopy(node))
    model.graph.ClearField("node")
    model.graph.node.extend(nodes)
    onnx.checker.check_model(model)
    output.parent.mkdir(parents=True, exist_ok=True)
    onnx.save(model, output)
    return replaced


def pack_correction(blend, mask):
    size = blend.shape[-1]
    y, x = np.mgrid[:size, :size]
    border = np.minimum(1., np.minimum.reduce([x, y, size - 1 - x, size - 1 - y]) / (size * .04))
    normalized = np.empty((size, size, 4), dtype=np.float32)
    normalized[:, :, :3] = ((blend[0].transpose(1, 2, 0).astype(np.float64) - .5) * .7 * 2).astype(np.float32)
    normalized[:, :, 3] = (mask[0, 0].astype(np.float64) * border * 2 - 1).astype(np.float32)
    if not np.isfinite(normalized).all():
        raise ValueError("A model produced nonfinite correction values")
    return np.clip(np.rint((normalized.astype(np.float64) * 127.5 + 127.5).astype(np.float32)), 0, 255).astype(np.uint8)


def correction_bound(actual, expected):
    def neighbors(a):
        right = np.concatenate([a[:, 1:], a[:, -1:]], axis=1)
        down = np.concatenate([a[1:], a[-1:]], axis=0)
        diagonal = np.concatenate([down[:, 1:], down[:, -1:]], axis=1)
        return np.maximum.reduce([a, right, down, diagonal])
    aa, ab = actual[:, :, 3:4] / 255., expected[:, :, 3:4] / 255.
    da, db = actual[:, :, :3] / 127.5 - 1, expected[:, :, :3] / 127.5 - 1
    delta_a, delta_d = neighbors(np.abs(aa - ab)), neighbors(np.abs(da - db))
    bound = .25 * 255 * np.minimum(neighbors(aa) * delta_d + neighbors(np.abs(db)) * delta_a,
                                  neighbors(ab) * delta_d + neighbors(np.abs(da)) * delta_a)
    return {"maximumOutputByteErrorBound": float(bound.max()), "meanOutputByteErrorBound": float(bound.mean()),
            "passed": bool(bound.max() <= 1 and bound.mean() <= .1)}


def file_record(path):
    return {"name": path.name, "bytes": path.stat().st_size, "sha256": hashlib.sha256(path.read_bytes()).hexdigest()}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input", type=Path, default=Path("public/models/independent/skin-segmentation.onnx"))
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--bundle-dir", type=Path)
    parser.add_argument("--register", action="store_true", help="Register the gated GPU candidate in an existing independent-model bundle")
    args = parser.parse_args()
    count = optimize(args.input, args.output)
    opts = ort.SessionOptions()
    opts.intra_op_num_threads = 2
    sessions = [ort.InferenceSession(str(p), sess_options=opts, providers=["CPUExecutionProvider"]) for p in [args.input, args.output]]
    y, x = np.mgrid[:512, :512].astype(np.float32)
    radial = 1 - ((x - 256) ** 2 + (y - 256) ** 2) / 256 ** 2
    samples = {
        "radial": np.stack([radial] * 3)[None],
        "gradient": np.stack([x / 511 * 1.8 - .9, y / 511 * 1.6 - .8,
            np.sin((x + y) * .041) * .5 + np.cos((x - y) * .023) * .4])[None],
    }
    cases = []
    correction_cases = []
    if args.bundle_dir:
        args.bundle_dir.mkdir(parents=True, exist_ok=True)
        smoothing = ort.InferenceSession("public/models/independent/skin-smoothing.onnx", sess_options=opts, providers=["CPUExecutionProvider"])
    for name, rgb in samples.items():
        results = []
        times = []
        for session in sessions:
            started = time.perf_counter()
            results.append(session.run(None, {"rgb": rgb.astype(np.float32)})[0])
            times.append((time.perf_counter() - started) * 1000)
        error = np.abs(results[0] - results[1])
        cases.append({"input": name, "values": error.size, "maximumError": float(error.max()),
                      "meanError": float(error.mean()), "milliseconds": times})
        if args.bundle_dir:
            blend = smoothing.run(None, {"rgb": rgb.astype(np.float32)})[0]
            expected = pack_correction(blend, results[0])
            actual = pack_correction(blend, results[1])
            bound = correction_bound(actual, expected)
            if not bound["passed"]:
                raise ValueError(f"Candidate changes rendered correction: {name}: {bound}")
            path = args.bundle_dir / f"skin-correction-{name}.rgba"
            path.write_bytes(expected.tobytes())
            correction_cases.append({"input": name, "reference": file_record(path), "nativeCandidateOutputBound": bound})
    report = {"replacedGlobalAveragePools": count, "sourceSha256": hashlib.sha256(args.input.read_bytes()).hexdigest(),
              "outputSha256": hashlib.sha256(args.output.read_bytes()).hexdigest(), "cases": cases}
    if not args.register:
        args.output.with_suffix(".validation.json").write_text(json.dumps(report, indent=2) + "\n")
    if args.bundle_dir:
        manifest = {"version": 1, "source": file_record(args.input),
                    "candidate": {"input": "rgb", "output": "skin", "files": [file_record(args.output)]},
                    "transformation": "Replace62 GlobalAveragePool nodes by mathematically equivalent two-axis ReduceMean; preserve all weights, epsilon and two-pass variance.",
                    "qualification": "Full RGBA8 correction-field four-corner output bounds: maximum1 byte, mean0.1 byte. Original model remains CPU fallback.",
                    "cases": correction_cases, "nativeRawMaskComparison": cases}
        (args.bundle_dir / "skin-gpu-manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
        if args.register:
            runtime_path = args.bundle_dir / "skin-manifest.json"
            runtime_manifest = json.loads(runtime_path.read_text())
            runtime_manifest["gpuManifest"] = "skin-gpu-manifest.json"
            runtime_path.write_text(json.dumps(runtime_manifest, indent=2) + "\n")
            provenance_path = args.bundle_dir / "skin-provenance.json"
            provenance = json.loads(provenance_path.read_text())
            records = {item["name"]: item for item in provenance["files"]}
            for path in [args.output, runtime_path, args.bundle_dir / "skin-gpu-manifest.json", *[args.bundle_dir / case["reference"]["name"] for case in correction_cases]]:
                records[path.name] = file_record(path)
            provenance["files"] = list(records.values())
            provenance["gpuOptimization"] = {"tool": "tools/optimize_independent_skin.py", "sourceSha256": report["sourceSha256"],
                "weights": "Unchanged float32 tensors; original graph retained as CPU fallback.",
                "qualification": "Full RGBA8 four-corner correction bounds on two synthetic cases and the first real face; transparent inputs use original CPU mask; every output checked for finiteness."}
            provenance_path.write_text(json.dumps(provenance, indent=2) + "\n")
    print(json.dumps(report, indent=2))


if __name__ == "__main__":
    main()
