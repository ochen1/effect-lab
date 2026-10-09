/** Dev-only full-tensor check. Drive through the user's Aside browser REPL:
 * await tab.evaluate(async () => {
 *   const { validateBrowserSkin } = await import('/tests/model-browser.ts');
 *   return validateBrowserSkin('wasm');
 * });
 * Fixtures were generated from mathematical gradients, never photos.
 */
import { createSkinRuntime, type SkinBackend } from '../src/inference';

export async function validateBrowserSkin(backend: SkinBackend = 'wasm') {
  // Use complete literal asset paths: Vite strips a trailing slash from a
  // directory-only new URL(), which would make the next URL resolve beside it.
  const load = async (url: URL, values: number) => {
    const response = await fetch(url);
    if (!response.ok) throw new Error(`Missing synthetic fixture: ${url.pathname}`);
    const data = await response.arrayBuffer();
    if (data.byteLength !== values * 4) {
      throw new Error(`Invalid fixture ${url.pathname}: expected ${values * 4} bytes, received ${data.byteLength}.`);
    }
    return new Float32Array(data);
  };
  const [input, expected] = await Promise.all([
    load(new URL('./fixtures/skin-gradient-input.f32', import.meta.url), 320 * 320 * 3),
    load(new URL('./fixtures/skin-gradient-output.f32', import.meta.url), 320 * 320 * 4),
  ]);
  const runtime = createSkinRuntime({ backend });
  try {
    const started = performance.now();
    await runtime.warm();
    const warmMilliseconds = performance.now() - started;
    const runStarted = performance.now();
    const actual = await runtime.run(input);
    const inferenceMilliseconds = performance.now() - runStarted;
    if (actual.length !== expected.length) throw new Error('Output length mismatch.');
    let sum = 0;
    let max = 0;
    for (let i = 0; i < actual.length; i++) {
      const error = Math.abs(actual[i] - expected[i]);
      sum += error;
      max = Math.max(max, error);
    }
    const mae = sum / actual.length;
    const passed = mae < 1e-5 && max < 2e-4;
    return { backend, runtime: runtime.getStatus(), values: actual.length,
      mae, maxAbsoluteError: max, passed, warmMilliseconds, inferenceMilliseconds,
      thresholds: { mae: 1e-5, maxAbsoluteError: 2e-4 }, synthetic: true };
  } finally {
    await runtime.dispose();
  }
}
