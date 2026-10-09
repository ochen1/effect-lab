"""Extract Effect House's legacy face package without native libraries.

The two model-package auth strings are embedded as individual character
arguments to smash::ToChars in the face constructor. They are format keys,
not account credentials. AES applies to the entry keys and text only; weight
blobs are raw (and some networks have a separate weight compression format).
"""
from pathlib import Path
import argparse
import hashlib
import json
import struct
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes

FACE_KEY = b"DF0gc7rLo7p2cGWHgeSEMhdHQfNhfi0fHyOT6fX3OK5hpnTV"[:32]
EXTRA_KEY = b"JYasfwDBSUC5l7KIVBY2LR9xm0vFmYDSKEj6WdSNOyPL0EHL"[:32]


def decrypt(data: bytes, key: bytes) -> bytes:
    if len(data) < 20 or (len(data) - 4) % 16:
        raise ValueError("Invalid AES wrapper size")
    size, = struct.unpack_from("<I", data, len(data)-4)
    if not len(data)-20 < size <= len(data)-4:
        raise ValueError("Invalid AES wrapper plaintext size")
    return Cipher(algorithms.AES(key), modes.ECB()).decryptor().update(data[:-4])[:size]


def unpack(source: Path, destination: Path, master: bytes) -> dict:
    data = source.read_bytes()
    offset = 16
    def integer():
        nonlocal offset
        value, = struct.unpack_from("<I", data, offset)
        offset += 4
        return value
    def blob():
        nonlocal offset
        size = integer()
        result = data[offset:offset+size]
        if len(result) != size:
            raise ValueError("Truncated package")
        offset += size
        return result
    if integer() != len(data):
        raise ValueError("Package total length mismatch")
    name = blob().decode()
    count = integer()
    entries = []
    for _ in range(count):
        entry_name = blob().decode()
        if '/' in entry_name or '..' in entry_name:
            raise ValueError("Invalid entry name")
        key = decrypt(blob(), master)
        graph_checksum = integer()
        graph = decrypt(blob(), key)
        weights_checksum = integer()
        weights = blob()
        folder = destination / entry_name
        folder.mkdir(parents=True, exist_ok=True)
        (folder/'network.txt').write_bytes(graph)
        (folder/'weights.bin').write_bytes(weights)
        entries.append(dict(name=entry_name, graph_bytes=len(graph), weights_bytes=len(weights),
                            graph_checksum=graph_checksum, weights_checksum=weights_checksum,
                            graph_sha256=hashlib.sha256(graph).hexdigest(),
                            weights_sha256=hashlib.sha256(weights).hexdigest()))
    parameters = {}
    for dtype in ["<f", "<i"]:
        for _ in range(integer()):
            parameter = blob().decode()
            raw = integer()
            parameters[parameter] = struct.unpack(dtype, struct.pack("<I", raw))[0]
    if offset != len(data):
        raise ValueError(f"Unconsumed bytes: {len(data)-offset}")
    report = dict(name=name, sha256=hashlib.sha256(data).hexdigest(), entries=entries, parameters=parameters)
    (destination/'manifest.json').write_text(json.dumps(report, indent=2)+'\n')
    return report

if __name__ == '__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('source', type=Path)
    p.add_argument('destination',type=Path)
    p.add_argument('--extra',action='store_true')
    a=p.parse_args()
    print(json.dumps(unpack(a.source,a.destination,EXTRA_KEY if a.extra else FACE_KEY),indent=2))
