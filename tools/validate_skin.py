"""Validate the portable skin network using deterministic, photo-free inputs.

Without --native this checks ONNX execution only and reports native_verified=false.
Supply the separately built native oracle to measure conversion accuracy. Neither
mode reads personal images. Optional browser fixtures are a synthetic gradient.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile
import time

import numpy as np
import onnx
import onnxruntime as ort

SIZE = 320


def cases():
    for name, color in [('black', (-1, -1, -1)), ('gray', (0, 0, 0)),
                        ('white', (1, 1, 1)), ('red', (1, -1, -1)),
                        ('green', (-1, 1, -1)), ('blue', (-1, -1, 1))]:
        yield name, np.broadcast_to(np.asarray(color, np.float32), (SIZE, SIZE, 3)).copy()
    y, x = np.mgrid[:SIZE, :SIZE].astype(np.float32) / (SIZE - 1)
    yield 'gradient', np.stack([x * 2 - 1, y * 2 - 1, (x + y) - 1], axis=-1)
    checker = ((np.indices((SIZE, SIZE)).sum(axis=0) % 2) * 2 - 1).astype(np.float32)
    yield 'checker', np.repeat(checker[..., None], 3, axis=-1)
    yield 'noise', np.random.default_rng(20261009).uniform(-1, 1, (SIZE, SIZE, 3)).astype(np.float32)
    # Smooth, non-photographic shapes cover natural-image frequencies and tones.
    oval = np.exp(-(((x - .5) / .22) ** 2 + ((y - .5) / .34) ** 2))
    bands = np.sin(14 * x) * np.cos(11 * y) * .04
    yield 'smooth_shapes', np.stack([oval * 1.3 - .65 + bands,
                                     oval * .9 - .55 + bands,
                                     oval * .65 - .45 + bands], axis=-1).astype(np.float32)


def error_metrics(actual, expected):
    difference = np.abs(actual.astype(np.float64) - expected.astype(np.float64))
    return {'mae': float(difference.mean()), 'max_abs': float(difference.max()),
            'p99_abs': float(np.quantile(difference, .99)),
            'rmse': float(np.sqrt(np.mean(difference ** 2)))}


def validate(args):
    model = onnx.load(args.model)
    onnx.checker.check_model(model, full_check=True)
    options = ort.SessionOptions()
    options.intra_op_num_threads = 1
    session = ort.InferenceSession(str(args.model), options, providers=['CPUExecutionProvider'])
    input_meta, = session.get_inputs()
    output_meta, = session.get_outputs()
    if input_meta.name != 'data' or input_meta.shape != [1, 3, SIZE, SIZE]:
        raise ValueError(f'Unexpected input contract: {input_meta.name} {input_meta.shape}')
    if output_meta.name != 'Tanh_134' or output_meta.shape != [1, 4, SIZE, SIZE]:
        raise ValueError(f'Unexpected output contract: {output_meta.name} {output_meta.shape}')
    report = {'model_sha256': hashlib.sha256(args.model.read_bytes()).hexdigest(),
              'onnxruntime_version': ort.__version__, 'native_verified': bool(args.native),
              'fixtures_are_synthetic': True, 'layout': 'input/output NHWC float32 [-1,1]',
              'thresholds': {'mae': args.mae, 'max_abs': args.max_abs}, 'cases': []}
    if args.native:
        report['native_model_sha256'] = hashlib.sha256(args.native_model.read_bytes()).hexdigest()
    environment = os.environ.copy()
    if args.native_library_dir:
        environment['DYLD_LIBRARY_PATH'] = str(args.native_library_dir)
    with tempfile.TemporaryDirectory(prefix='effect-lab-synthetic-') as temp:
        temp = Path(temp)
        for name, pixels in cases():
            start = time.perf_counter()
            result, = session.run(None, {'data': pixels.transpose(2, 0, 1)[None].copy()})
            elapsed = time.perf_counter() - start
            result = result[0].transpose(1, 2, 0).copy()
            if result.shape != (SIZE, SIZE, 4) or not np.isfinite(result).all():
                raise ValueError(f'{name}: invalid output shape or non-finite output')
            if result.min() < -1.000001 or result.max() > 1.000001:
                raise ValueError(f'{name}: output outside Tanh range')
            item = {'name': name, 'onnx_seconds': elapsed, 'min': float(result.min()),
                    'max': float(result.max()), 'passed': True}
            if args.native:
                input_path, output_path = temp / 'input.f32', temp / 'output.f32'
                pixels.astype('<f4').tofile(input_path)
                subprocess.run([str(args.native.resolve()), str(args.native_model.resolve()),
                                str(input_path), str(output_path)], env=environment,
                               check=True, capture_output=True, timeout=120)
                expected = np.fromfile(output_path, dtype='<f4')
                if expected.size != SIZE * SIZE * 4 or not np.isfinite(expected).all():
                    raise ValueError(f'{name}: invalid native output')
                expected = expected.reshape(SIZE, SIZE, 4)
                item.update(error_metrics(result, expected))
                item['passed'] = item['mae'] <= args.mae and item['max_abs'] <= args.max_abs
            if args.fixtures and name == 'gradient':
                args.fixtures.mkdir(parents=True, exist_ok=True)
                pixels.astype('<f4').tofile(args.fixtures / 'skin-gradient-input.f32')
                result.astype('<f4').tofile(args.fixtures / 'skin-gradient-output.f32')
                (args.fixtures / 'skin-gradient.json').write_text(json.dumps({
                    'synthetic': True, 'description': 'RGB planar gradients; no photo source',
                    'model_sha256': report['model_sha256'],
                    'input_shape': [1, SIZE, SIZE, 3], 'output_shape': [1, SIZE, SIZE, 4],
                    'dtype': 'little-endian float32', 'layout': 'NHWC',
                }, indent=2) + '\n')
            report['cases'].append(item)
            print(json.dumps(item))
    report['passed'] = all(item['passed'] for item in report['cases'])
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(report, indent=2) + '\n')
    return report['passed']


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--model', type=Path, default=Path('public/models/skin.onnx'))
    parser.add_argument('--native', type=Path, help='Compiled tools/native_reference.cpp executable')
    parser.add_argument('--native-model', type=Path, default=Path('research/skin-network/model.bm'))
    parser.add_argument('--native-library-dir', type=Path)
    parser.add_argument('--report', type=Path, default=Path('research/skin-validation.json'))
    parser.add_argument('--fixtures', type=Path, help='Write synthetic browser validation tensors')
    parser.add_argument('--mae', type=float, default=1e-5)
    parser.add_argument('--max-abs', type=float, default=2e-4)
    raise SystemExit(0 if validate(parser.parse_args()) else 1)
