"""Extract the version-3 named model container used by the recovered effect."""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import struct


def u32(data: bytes, offset: int) -> int:
    return struct.unpack_from("<I", data, offset)[0]


def unpack(data: bytes) -> dict:
    if len(data) < 40 or u32(data, 0) != len(data) or u32(data, 4) != 3:
        raise ValueError("Not a complete version-3 model container")

    def entries(block: bytes, table: int, parent: str) -> list[dict]:
        count = u32(block, table)
        cursor = table + 4 + count * 4
        if count > 65536 or cursor > len(block):
            raise ValueError("Invalid container entry table")
        result = []
        for index in range(count):
            length = u32(block, table + 4 + index * 4)
            part = block[cursor:cursor + length]
            if len(part) != length or length < 296:
                raise ValueError("Truncated model entry")
            name = part[:256].split(b"\0", 1)[0].decode("utf-8")
            if not name or "/" in name or "\\" in name or name in {".", ".."}:
                raise ValueError(f"Unsafe entry name: {name!r}")
            kind = u32(part, 256)
            item = {"name": name, "kind": kind, "length": length}
            if kind >= 32:
                item["children"] = entries(part, 288, parent + name + "/")
            else:
                size = u32(part, 292)
                if size != length - 296:
                    raise ValueError(f"Invalid payload length for {parent}{name}")
                payload = part[296:]
                item.update(type=u32(part, 288), data=payload,
                            sha256=hashlib.sha256(payload).hexdigest())
            result.append(item)
            cursor += length
        if cursor != len(block):
            raise ValueError("Unaccounted trailing bytes")
        return result

    return {"version": 3, "bytes": len(data), "entries": entries(data, 36, "")}


def extract(source: Path, destination: Path) -> dict:
    container = unpack(source.read_bytes())

    def write(items: list[dict], directory: Path) -> None:
        directory.mkdir(parents=True, exist_ok=True)
        for item in items:
            path = directory / item["name"]
            if "children" in item:
                write(item["children"], path)
            else:
                payload = item.pop("data")
                path.write_bytes(payload)

    write(container["entries"], destination)
    (destination / "manifest.json").write_text(json.dumps(container, indent=2) + "\n")
    return container


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source", type=Path)
    parser.add_argument("destination", type=Path)
    args = parser.parse_args()
    print(json.dumps(extract(args.source, args.destination), indent=2))
