"""Decode the BM container without loading any ByteDance native libraries."""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import struct


def gf_mul(a: int, b: int) -> int:
    result = 0
    while b:
        if b & 1:
            result ^= a
        a = ((a << 1) ^ (0x11B if a & 128 else 0)) & 255
        b >>= 1
    return result


def inverse_sbox() -> bytes:
    result = bytearray(256)
    for x in range(256):
        y, a, exponent = 1, x, 254
        while exponent:
            if exponent & 1:
                y = gf_mul(y, a)
            a = gf_mul(a, a)
            exponent >>= 1
        if x == 0:
            y = 0
        value = y ^ 0x63
        for n in range(1, 5):
            value ^= ((y << n) | (y >> (8 - n))) & 255
        result[value] = x
    return bytes(result)


def decode(payload: bytes) -> tuple[str, bytes, dict]:
    prefix = payload.find(b"BM", 0, 16)
    if prefix < 0:
        raise ValueError("Missing BM header")
    data = payload[prefix:]
    if len(data) < 60 or data[:3] != b"BM\0" or struct.unpack_from("<I", data, 4)[0] != len(data):
        raise ValueError("Invalid BM container size")
    version = data[3]
    sections = struct.unpack_from("<I", data, 8)[0]
    if version != 3 or sections != 6:
        raise ValueError(f"Unsupported BM version/section count: {version}/{sections}")
    ranges = [struct.unpack_from("<II", data, 12 + i * 8) for i in range(sections)]
    occupied = []
    for length, offset in ranges:
        if offset + length > len(data) or (length and offset < 60):
            raise ValueError("Section extends beyond BM file or overlaps its header")
        if length:
            if any(offset < end and offset + length > start for start, end in occupied):
                raise ValueError("BM sections overlap")
            occupied.append((offset, offset + length))
    graph_length, graph_offset = ranges[0]
    weights_length, weights_offset = ranges[1]
    key_length, key_offset = ranges[2]
    if key_length != 8:
        raise ValueError("Unexpected graph decoding key length")
    key, table = data[key_offset:key_offset + key_length], inverse_sbox()
    encoded = data[graph_offset:graph_offset + graph_length]
    decoded = bytes(table[v ^ key[i % 8]] for i, v in enumerate(encoded))
    graph = decoded.rstrip(b"\0").decode("utf-8").replace("\\n", "").strip() + "\n"
    weights = data[weights_offset:weights_offset + weights_length]
    header = graph.splitlines()[0].split() if graph else []
    if len(header) != 3 or header[0] != "1":
        raise ValueError("Invalid decoded graph header")
    try:
        magic = int(header[2])
        layer_count = int(header[1])
    except ValueError as error:
        raise ValueError("Invalid decoded graph header") from error
    if layer_count < 1 or len(graph.splitlines()) != layer_count + 2:
        raise ValueError("Decoded graph layer count mismatch")
    if len(weights) < 4 or len(weights) % 4:
        raise ValueError("Weights must contain float32 values and a trailer")
    if struct.unpack_from("<I", weights, len(weights) - 4)[0] != magic:
        raise ValueError("Graph/weights trailer mismatch")
    return graph, weights[:-4], {
        "version": version, "prefix_bytes": prefix,
        "graph_bytes": graph_length, "weight_bytes": len(weights) - 4,
        "graph_weight_marker": magic,
        "payload_sha256": hashlib.sha256(payload).hexdigest(),
        "weights_sha256": hashlib.sha256(weights[:-4]).hexdigest(),
    }


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source", type=Path)
    parser.add_argument("destination", type=Path)
    args = parser.parse_args()
    graph, weights, metadata = decode(args.source.read_bytes())
    args.destination.mkdir(parents=True, exist_ok=True)
    (args.destination / "network.txt").write_text(graph)
    (args.destination / "weights.f32").write_bytes(weights)
    (args.destination / "metadata.json").write_text(json.dumps(metadata, indent=2) + "\n")
    print(json.dumps(metadata, indent=2))
