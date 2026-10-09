"""Convert the extracted skin network and original weights to standard ONNX."""
from __future__ import annotations
import argparse
from pathlib import Path
import json
import numpy as np
import onnx
from onnx import TensorProto, helper, numpy_helper


def convert(graph_path: Path, weight_path: Path, destination: Path, coordinates: str = "half_pixel") -> dict:
    lines = [line.split() for line in graph_path.read_text().splitlines() if line.strip()]
    if not lines or len(lines[0]) != 3 or lines[0][0] != "1":
        raise ValueError("Invalid graph header")
    if len(lines) - 2 != int(lines[0][1]):
        raise ValueError("Layer count does not match graph header")
    raw_weights = weight_path.read_bytes()
    if len(raw_weights) % 4:
        raise ValueError("Weights are not aligned float32 values")
    weights = np.frombuffer(raw_weights, dtype="<f4")
    if not np.isfinite(weights).all():
        raise ValueError("Weights contain non-finite values")
    if coordinates not in {"half_pixel", "align_corners", "asymmetric"}:
        raise ValueError("Unsupported resize coordinate transformation")
    offset = 0
    nodes, tensors, shapes, layers = [], [], {}, []

    def constant(name, array):
        tensors.append(numpy_helper.from_array(np.asarray(array), name))
        return name

    def take(name, shape, transpose=None):
        nonlocal offset
        size = int(np.prod(shape))
        data = weights[offset:offset + size]
        if len(data) != size:
            raise ValueError(f"Truncated weights at {name}")
        offset += size
        data = data.reshape(shape)
        if transpose is not None:
            data = data.transpose(transpose).copy()
        return constant(name, data)

    def resize(name, source, destination, scale):
        n, c, h, w = shapes[source]
        shape = [n, c, round(h * scale), round(w * scale)]
        sizes = constant(name + "_sizes", np.asarray(shape, dtype=np.int64))
        nodes.append(helper.make_node("Resize", [source, "", "", sizes], [destination], name=name,
                                      mode="linear", coordinate_transformation_mode=coordinates))
        shapes[destination] = shape

    for tokens in lines[1:]:
        if len(tokens) < 2:
            raise ValueError("Malformed graph layer")
        kind, name = tokens[:2]
        start = offset
        if kind == "DataV2":
            n, h, w, c, dtype, *_ = map(int, tokens[2:])
            if dtype != 4 or min(n, h, w, c) <= 0:
                raise ValueError("Only float32 inputs are supported")
            shapes[name] = [n, c, h, w]
        elif kind in {"Convolution", "DepthwiseSeparableConvolution"}:
            out, kw, kh, sw, sh, pw, ph, bias, activation, *formats = map(int, tokens[2:-2])
            if formats != [4, 0, 4, 0, 4, 0] or bias != 1 or activation not in (0, 1):
                raise ValueError(f"Unsupported convolution configuration: {tokens}")
            source, target = tokens[-2:]
            n, channels, height, width = shapes[source]
            if min(out, kw, kh, sw, sh) <= 0 or min(pw, ph) < 0:
                raise ValueError(f"Invalid convolution dimensions: {tokens}")
            groups = channels if kind == "DepthwiseSeparableConvolution" else 1
            if kind == "DepthwiseSeparableConvolution" and out != channels:
                raise ValueError("Only depthwise multiplier 1 is supported")
            if kind == "DepthwiseSeparableConvolution":
                weight = take(name + "_W", [kh, kw, out, 1], (2, 3, 0, 1))
            else:
                weight = take(name + "_W", [out, kh, kw, channels], (0, 3, 1, 2))
            bias_name = take(name + "_B", [out])
            convolution_output = name + "_linear" if activation else target
            nodes.append(helper.make_node("Conv", [source, weight, bias_name], [convolution_output],
                                          name=name, kernel_shape=[kh, kw], strides=[sh, sw],
                                          pads=[ph, pw, ph, pw], group=groups))
            if activation:
                nodes.append(helper.make_node("Relu", [convolution_output], [target], name=name + "_relu"))
            shapes[target] = [n, out, (height + ph * 2 - kh) // sh + 1, (width + pw * 2 - kw) // sw + 1]
        elif kind == "Eltwise":
            left, right, target = tokens[2:5]
            dtype, operation, activation = map(int, tokens[5:])
            if shapes[left] != shapes[right] or dtype != 4 or operation != 0 or activation not in (0, 1):
                raise ValueError(f"Unsupported elementwise operation: {tokens}")
            result = name + "_linear" if activation else target
            nodes.append(helper.make_node("Add", [left, right], [result], name=name))
            if activation:
                nodes.append(helper.make_node("Relu", [result], [target], name=name + "_relu"))
            shapes[target] = shapes[left]
        elif kind == "Upsample":
            scale, mode, *_ = tokens[2:-2]
            if mode != "linear" or tokens[4:6] != ["0", "1"]:
                raise ValueError(f"Unsupported resize: {tokens}")
            resize(name, tokens[-2], tokens[-1], float(scale))
        elif kind == "UpSampling":
            source, target, mode = tokens[2:]
            if mode != "BILINEAR":
                raise ValueError(f"Unsupported resize: {tokens}")
            resize(name, source, target, 2)
        elif kind == "Tanh":
            source, target = tokens[2:4]
            if tokens[4:] != ["4", "0"]:
                raise ValueError(f"Unsupported Tanh configuration: {tokens}")
            nodes.append(helper.make_node("Tanh", [source], [target], name=name))
            shapes[target] = shapes[source]
        else:
            raise ValueError(f"Unknown layer {kind}")
        layers.append({"name": name, "type": kind, "weights_start": start, "weights_count": offset - start})
    if offset != len(weights):
        raise ValueError(f"Unconsumed weights: consumed {offset}, file has {len(weights)}")
    if len(lines) - 2 != int(lines[0][1]):
        raise ValueError("Layer count does not match graph header")
    graph = helper.make_graph(nodes, "BOY_II_skinunified_eh",
                              [helper.make_tensor_value_info("data", TensorProto.FLOAT, shapes["data"])],
                              [helper.make_tensor_value_info("Tanh_134", TensorProto.FLOAT, shapes["Tanh_134"])], tensors)
    model = helper.make_model(graph, producer_name="boy-ii-browser extraction", opset_imports=[helper.make_opsetid("", 18)])
    model.ir_version = 10
    onnx.checker.check_model(model)
    destination.parent.mkdir(parents=True, exist_ok=True)
    onnx.save(model, destination)
    manifest = {"input": shapes["data"], "output": shapes["Tanh_134"], "weights": offset,
                "layers": layers, "coordinates": coordinates}
    destination.with_suffix(".json").write_text(json.dumps(manifest, indent=2) + "\n")
    return manifest


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--graph", type=Path, default=Path("research/skin-network/network.txt"))
    parser.add_argument("--weights", type=Path, default=Path("research/skin-network/weights.f32"))
    parser.add_argument("--output", type=Path, default=Path("public/models/skin.onnx"))
    parser.add_argument("--coordinates", default="half_pixel", choices=["half_pixel", "align_corners", "asymmetric"])
    args = parser.parse_args()
    report = convert(args.graph, args.weights, args.output, args.coordinates)
    print(json.dumps({k: v for k, v in report.items() if k != "layers"}))
