"""Repack the original PNG LUT into RGB-indexed RGBA8; no color conversion."""
import hashlib
import json
from pathlib import Path
from PIL import Image

ROOT = Path(__file__).resolve().parents[1]
ASSETS = ROOT / 'public/effects/boy-ii'
source = ASSETS / 'peach.png'
source_hash = hashlib.sha256(source.read_bytes()).hexdigest()
manifest = json.loads((ASSETS / 'assets.json').read_text())
assert source_hash == manifest['peach.png']['sha256']
with Image.open(source) as image:
    assert image.size == (512, 512)
    pixels = image.convert('RGBA')
    result = bytearray()
    for blue in range(64):
        for green in range(64):
            for red in range(64):
                result.extend(pixels.getpixel(((blue % 8) * 64 + red, (blue // 8) * 64 + green)))
assert len(result) == 64 ** 3 * 4
(ASSETS / 'peach-lut.rgba').write_bytes(result)
metadata = {
    'source': 'peach.png',
    'sourceSha256': source_hash,
    'sha256': hashlib.sha256(result).hexdigest(),
    'bytes': len(result),
    'size': [64, 64, 64],
    'format': 'RGBA8',
    'layout': '(((blue * 64) + green) * 64 + red) * 4',
    'sampling': 'B=floor(clamp(B,0,1)*63); bilinear R/G at clamp(RG,0,1)*63; no blue interpolation',
    'generator': 'tools/extract_color_lut.py',
}
(ASSETS / 'peach-lut.json').write_text(json.dumps(metadata, indent=2) + '\n')
print(json.dumps(metadata, indent=2))
