#!/usr/bin/env python3
"""Reproduce the independent detector's pinned public Google model artifacts.

Only downloads official sources. Every file must match its recorded SHA-256;
an upstream URL changing never silently replaces a model or its license.
"""
from pathlib import Path
import hashlib
import json
import urllib.request

ROOT = Path(__file__).resolve().parents[1]
manifest = json.loads((ROOT / "public/models/independent/face-provenance.json").read_text())
artifacts = [{
    "path": "public/models/independent/" + manifest["model"],
    "url": manifest["sourceUrl"],
    "sha256": manifest["sha256"],
    "bytes": manifest["bytes"],
}, *manifest["references"]]

for artifact in artifacts:
    target = ROOT / artifact["path"]
    current = target.read_bytes() if target.exists() else b""
    if hashlib.sha256(current).hexdigest() == artifact["sha256"]:
        print("Verified", artifact["path"])
        continue
    with urllib.request.urlopen(artifact["url"], timeout=60) as response:
        data = response.read()
    if len(data) != artifact["bytes"] or hashlib.sha256(data).hexdigest() != artifact["sha256"]:
        raise RuntimeError("Source no longer matches pinned provenance: " + artifact["url"])
    target.parent.mkdir(parents=True, exist_ok=True)
    temporary = target.with_name(target.name + ".part")
    temporary.write_bytes(data)
    temporary.replace(target)
    print("Downloaded and verified", artifact["path"])
