"""Fetch pinned Apache-2.0 Alibaba skin models and export their browser graphs.

Conversion-only requirements: torch, onnx, onnxruntime, numpy.
The source checkpoints/cache stay outside the repository. No user media is read.
"""
from __future__ import annotations

import argparse
import copy
import hashlib
import importlib.util
import json
from pathlib import Path
import shutil
import sys
import time
import urllib.parse
import urllib.request

import numpy as np
import onnx
from onnx import helper, numpy_helper, TensorProto
import onnxruntime as ort
import torch


MODEL_ID = "damo/cv_unet_skin_retouching_torch"
REVISION = "30ddc0087d8dbfc4e7605dfd93f043c087858d0b"
CODE_REVISION = "958c3f7da68b700cc671134e267c356a2444398b"
SOURCE_HASHES = {
    "pytorch_model.pt": "760d0c0b95c4e0a692165677fe2b82dbdf8fbbd4a3780ca966599c627b082993",
    "model.onnx": "d5b2a94201849f24ab4c38f2c56d52b1df6a2e6dd178f0f94e25f21997e5a16a",
    "README.md": "77780bbc14517556f0bda6512be8cc2d02a92ce6ef25f0440b7c3fd31aa2685c",
    "ms_wrapper.py": "592c9941594c285f23ff25a9d0d5535e5a433d3e42c334301b41d147a5b25c12",
}
SIZE = 512


def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def download(url: str, target: Path, expected: str | None = None) -> None:
    if not target.exists():
        target.parent.mkdir(parents=True, exist_ok=True)
        temporary = target.with_suffix(target.suffix + ".partial")
        urllib.request.urlretrieve(url, temporary)
        temporary.replace(target)
    if expected and sha(target) != expected:
        raise ValueError(f"Source hash mismatch: {target.name}")


def model_url(name: str) -> str:
    return f"https://modelscope.cn/api/v1/models/{MODEL_ID}/repo?" + urllib.parse.urlencode(
        {"Revision": REVISION, "FilePath": name}
    )


def load_generator(cache: Path):
    upstream = cache / "upstream"
    code = f"https://raw.githubusercontent.com/modelscope/modelscope/{CODE_REVISION}/"
    for name in ["unet_deploy.py", "weights_init.py"]:
        download(code + "modelscope/models/cv/skin_retouching/" + name, upstream / name)
    (upstream / "__init__.py").touch()
    spec = importlib.util.spec_from_file_location("independent_skin_source", upstream / "__init__.py", submodule_search_locations=[str(upstream)])
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    spec.loader.exec_module(module)
    from independent_skin_source.unet_deploy import UNet

    generator = UNet(3, 3, init_weights=False)
    generator.load_state_dict(torch.load(cache / "pytorch_model.pt", map_location="cpu", weights_only=True)["generator"])
    return generator.eval()


def diagnostic(size: int = SIZE) -> np.ndarray:
    yy, xx = np.mgrid[:size, :size].astype(np.float32)
    return np.stack([
        xx / (size - 1) * 1.8 - .9,
        yy / (size - 1) * 1.6 - .8,
        np.sin((xx + yy) * .041) * .5 + np.cos((xx - yy) * .023) * .4,
    ])[None].astype(np.float32)


def export_smoothing(cache: Path, destination: Path) -> dict:
    download(model_url("pytorch_model.pt"), cache / "pytorch_model.pt", SOURCE_HASHES["pytorch_model.pt"])
    generator = load_generator(cache)
    input_array = diagnostic()
    sample = torch.from_numpy(input_array)
    path = destination / "skin-smoothing.onnx"
    with torch.no_grad():
        started = time.perf_counter()
        expected = generator(sample).numpy()
        reference_ms = (time.perf_counter() - started) * 1000
        torch.onnx.export(generator, sample, str(path), input_names=["rgb"], output_names=["blend"],
                          opset_version=18, dynamo=False, external_data=False)
    model = onnx.load(path)
    model.ir_version = 10
    onnx.checker.check_model(model)
    onnx.save(model, path)
    options = ort.SessionOptions()
    options.intra_op_num_threads = 2
    session = ort.InferenceSession(str(path), sess_options=options, providers=["CPUExecutionProvider"])
    started = time.perf_counter()
    actual = session.run(None, {"rgb": input_array})[0]
    milliseconds = (time.perf_counter() - started) * 1000
    error = np.abs(expected - actual)
    report = {
        "input": [1, 3, SIZE, SIZE], "output": [1, 3, SIZE, SIZE],
        "inputRange": [-1, 1], "outputRange": [0, 1],
        "diagnostic": "synthetic-rgb-gradient-v1", "values": int(error.size),
        "meanAbsoluteError": float(error.mean()), "maximumAbsoluteError": float(error.max()),
        "pytorchMilliseconds": reference_ms, "onnxCpuMilliseconds": milliseconds,
    }
    if report["maximumAbsoluteError"] > 2e-4 or report["meanAbsoluteError"] > 1e-5:
        raise ValueError(f"Smoothing conversion failed numeric parity: {report}")
    # Small deterministic reference for a browser execution-provider smoke check.
    indices = np.linspace(0, expected.size - 1, 192, dtype=int)
    (destination / "skin-smoothing-diagnostic.json").write_text(json.dumps({
        "version": 1, "input": "synthetic-rgb-gradient-v1", "size": SIZE,
        "indices": indices.tolist(), "expected": expected.flatten()[indices].tolist(),
        "absoluteTolerance": .002,
    }, indent=2) + "\n")
    return report


def export_segmentation(cache: Path, destination: Path) -> dict:
    source = cache / "model.onnx"
    verified = cache / "segmentation-verified.onnx"
    if verified.exists() and sha(verified) == SOURCE_HASHES["model.onnx"]:
        source = verified
    else:
        download(model_url("model.onnx"), source, SOURCE_HASHES["model.onnx"])
    original = onnx.load(source)
    branch = next(a.g for n in original.graph.node if n.name == "cond_1_If__227"
                  for a in n.attribute if a.name == "then_branch")
    # The supplied graph first locates a whole body, then runs a coarse256 and
    # refine448 skin network within that ROI. We already have a face ROI, so keep
    # both skin networks unchanged and remove only global localization/cropping.
    inputs = ["Transpose__599:0", "Transpose__1671:0"]
    final = "cond_1/truediv:0"  # (Tanh + 1)/2, before upstream probability-squared mask
    producers = {o: n for n in branch.node for o in n.output}
    needed = set()
    def visit(name):
        if name in inputs or name in needed:
            return
        needed.add(name)
        if name in producers:
            for incoming in producers[name].input:
                visit(incoming)
    visit(final)
    nodes = [copy.deepcopy(n) for n in branch.node if any(o in needed for o in n.output)]
    all_weights = {i.name: i for i in [*original.graph.initializer, *branch.initializer]}
    weights = [copy.deepcopy(i) for i in all_weights.values() if i.name in needed]
    reference_graph = helper.make_graph(nodes, "Alibaba_skin_coarse_refine_original",
        [helper.make_tensor_value_info(name, TensorProto.FLOAT, [1, 3, 448, 448]) for name in inputs],
        [helper.make_tensor_value_info(final, TensorProto.FLOAT, [1, 1, 448, 448])], weights)
    reference = helper.make_model(reference_graph, opset_imports=[helper.make_opsetid("", 15)])
    reference.ir_version = 10
    onnx.checker.check_model(reference)

    sizes = numpy_helper.from_array(np.array([1, 3, 448, 448], dtype=np.int64), "skin_input_size")
    output_sizes = numpy_helper.from_array(np.array([1, 1, SIZE, SIZE], dtype=np.int64), "skin_output_size")
    resize_in = helper.make_node("Resize", ["rgb", "", "", sizes.name], ["skin_rgb_448"],
                                mode="linear", coordinate_transformation_mode="align_corners")
    production_nodes = [resize_in]
    for original_node in nodes:
        node = copy.deepcopy(original_node)
        for i, name in enumerate(node.input):
            if name in inputs:
                node.input[i] = "skin_rgb_448"
        production_nodes.append(node)
    # Match upstream mask=(.5+.5*tanh)^2 while keeping float probabilities.
    production_nodes += [helper.make_node("Mul", [final, final], ["skin_probability_squared"]),
        helper.make_node("Resize", ["skin_probability_squared", "", "", output_sizes.name], ["skin"],
                         mode="linear", coordinate_transformation_mode="align_corners")]
    graph = helper.make_graph(production_nodes, "Alibaba_skin_coarse_refine_face_roi",
        [helper.make_tensor_value_info("rgb", TensorProto.FLOAT, [1, 3, SIZE, SIZE])],
        [helper.make_tensor_value_info("skin", TensorProto.FLOAT, [1, 1, SIZE, SIZE])], weights + [sizes, output_sizes])
    model = helper.make_model(graph, producer_name="Effect Lab independent skin conversion",
                              opset_imports=[helper.make_opsetid("", 15)])
    model.ir_version = 10
    onnx.checker.check_model(model)
    path = destination / "skin-segmentation.onnx"
    onnx.save(model, path)
    options = ort.SessionOptions()
    options.intra_op_num_threads = 2
    reference_session = ort.InferenceSession(reference.SerializeToString(), sess_options=options, providers=["CPUExecutionProvider"])
    session = ort.InferenceSession(str(path), sess_options=options, providers=["CPUExecutionProvider"])
    yy, xx = np.mgrid[:SIZE, :SIZE].astype(np.float32)
    radial = 1 - ((xx - SIZE / 2) ** 2 + (yy - SIZE / 2) ** 2) / (SIZE / 2) ** 2
    source = np.stack([radial] * 3)[None].astype(np.float32)
    small = torch.nn.functional.interpolate(torch.from_numpy(source), (448, 448), mode="bilinear", align_corners=True).numpy()
    reference_output = reference_session.run(None, {name: small for name in inputs})[0]
    expected = torch.nn.functional.interpolate(torch.from_numpy(reference_output ** 2), (SIZE, SIZE), mode="bilinear", align_corners=True).numpy()
    started = time.perf_counter()
    actual = session.run(None, {"rgb": source})[0]
    milliseconds = (time.perf_counter() - started) * 1000
    difference = np.abs(actual - expected)
    report = {
        "input": [1, 3, SIZE, SIZE], "output": [1, 1, SIZE, SIZE],
        "inputRange": [-1, 1], "outputRange": [0, 1],
        "sourceNetwork": "original coarse256 + refine448 (unchanged weights)",
        "localization": "caller-provided face ROI replaces upstream whole-body detector",
        "reference": "original ONNX subgraph with two448 inputs + upstream squared mask",
        "diagnostic": "synthetic-radial-v1", "values": int(difference.size),
        "meanAbsoluteError": float(difference.mean()), "maximumAbsoluteError": float(difference.max()),
        "onnxCpuMilliseconds": milliseconds,
    }
    if report["maximumAbsoluteError"] > 2e-4 or report["meanAbsoluteError"] > 1e-5:
        raise ValueError(f"Segmentation extraction failed numeric parity: {report}")
    indices = np.linspace(0, expected.size - 1, 192, dtype=int)
    reference_path = destination / "skin-segmentation-reference.f32"
    reference_path.write_bytes(expected.astype("<f4").tobytes())
    (destination / "skin-segmentation-diagnostic.json").write_text(json.dumps({
        "version": 1, "input": "synthetic-radial-v1", "size": SIZE,
        "indices": indices.tolist(), "expected": expected.flatten()[indices].tolist(),
        "absoluteTolerance": .002,
        "reference": {"name": reference_path.name, "bytes": reference_path.stat().st_size, "sha256": sha(reference_path)},
    }, indent=2) + "\n")
    return report


def asset(path: Path) -> dict:
    return {"name": path.name, "bytes": path.stat().st_size, "sha256": sha(path)}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cache", type=Path, required=True)
    parser.add_argument("--output", type=Path, default=Path("public/models/independent"))
    parser.add_argument("--smoothing-only", action="store_true")
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    torch.set_num_threads(2)
    reports = {"smoothing": export_smoothing(args.cache, args.output)}
    print(json.dumps(reports, indent=2), flush=True)
    if not args.smoothing_only:
        reports["segmentation"] = export_segmentation(args.cache, args.output)
        print(json.dumps(reports["segmentation"], indent=2), flush=True)
    (args.output / "skin-conversion-validation.json").write_text(json.dumps(reports, indent=2) + "\n")
    for name in ["README.md", "ms_wrapper.py"]:
        download(model_url(name), args.cache / name, SOURCE_HASHES[name])
    download(f"https://raw.githubusercontent.com/modelscope/modelscope/{CODE_REVISION}/LICENSE", args.cache / "upstream/LICENSE")
    shutil.copyfile(args.cache / "upstream/LICENSE", args.output / "SKIN-LICENSE.txt")
    shutil.copyfile(args.cache / "README.md", args.output / "skin-model-card.md")
    if not args.smoothing_only:
        manifest = {"version": 1,
            "smoothing": {"input": "rgb", "output": "blend", "files": [asset(args.output / "skin-smoothing.onnx")]},
            "segmentation": {"input": "rgb", "output": "skin", "files": [asset(args.output / "skin-segmentation.onnx")]}}
        (args.output / "skin-manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
    files = ["skin-smoothing.onnx", "skin-smoothing-diagnostic.json", "skin-conversion-validation.json", "skin-model-card.md", "SKIN-LICENSE.txt"]
    if not args.smoothing_only:
        files += ["skin-segmentation.onnx", "skin-segmentation-diagnostic.json", "skin-segmentation-reference.f32", "skin-manifest.json"]
    provenance = {"version": 1, "license": "Apache-2.0", "copyright": "Alibaba, Inc. and its affiliates.",
        "modelId": MODEL_ID, "modelRevision": REVISION, "modelScopeCodeRevision": CODE_REVISION,
        "sourceFiles": [{"name": name, "url": model_url(name), "sha256": expected} for name, expected in SOURCE_HASHES.items()],
        "conversion": "tools/convert_independent_skin.py",
        "modifications": ["Export original UNet to ONNX float32 with fixed512 RGB NCHW input.",
            "Use original coarse256/refine448 skin segmentation networks on the caller face ROI; remove upstream body localization.",
            "Preserve upstream squared skin mask as floating probability; resize to512.",
            "Use upstream torch wrapper blend degree0.7 with no whitening and no optional local inpainting."],
        "files": [asset(args.output / name) for name in files]}
    (args.output / "skin-provenance.json").write_text(json.dumps(provenance, indent=2) + "\n")


if __name__ == "__main__":
    main()
