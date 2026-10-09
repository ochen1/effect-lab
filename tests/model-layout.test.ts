import { describe, expect, test } from 'bun:test';
import { SKIN_SIZE, skinInputToPlanar, skinOutputToInterleaved } from '../src/inference';

const count = SKIN_SIZE * SKIN_SIZE;

describe('skin model native / ONNX boundary', () => {
  test('transposes every RGB pixel without flipping rows or changing range', () => {
    const input = new Float32Array(count * 3);
    for (let i = 0; i < count; i++) {
      input[i * 3] = i / count;
      input[i * 3 + 1] = -i / count;
      input[i * 3 + 2] = .375;
    }
    const actual = skinInputToPlanar(input);
    for (let channel = 0; channel < 3; channel++) {
      for (let i = 0; i < count; i++) {
        if (actual[channel * count + i] !== input[i * 3 + channel]) {
          throw new Error(`Wrong channel/position: ${channel}, ${i}`);
        }
      }
    }
    expect(actual).not.toBe(input);
  });

  test('keeps alpha normalized with RGB, and allocates independent output', () => {
    const planar = new Float32Array(count * 4);
    for (let channel = 0; channel < 4; channel++) {
      planar.fill((channel - 2) / 2, channel * count, (channel + 1) * count);
    }
    const actual = skinOutputToInterleaved(planar);
    expect(Array.from(actual.slice(0, 4))).toEqual([-1, -.5, 0, .5]);
    expect(Array.from(actual.slice(-4))).toEqual([-1, -.5, 0, .5]);
    planar.fill(0);
    expect(actual[0]).toBe(-1);
  });

  test('rejects malformed, non-finite, or incorrectly normalized input', () => {
    expect(() => skinInputToPlanar(new Float32Array(3))).toThrow('320');
    for (const value of [NaN, Infinity, -Infinity, 1.001, -1.001, 255]) {
      const input = new Float32Array(count * 3);
      input[input.length - 1] = value;
      expect(() => skinInputToPlanar(input)).toThrow('[-1, 1]');
    }
  });

  test('rejects malformed and non-finite model output', () => {
    expect(() => skinOutputToInterleaved(new Float32Array(4))).toThrow();
    const input = new Float32Array(count * 4);
    input[count * 3] = NaN;
    expect(() => skinOutputToInterleaved(input)).toThrow('non-finite');
  });
});
