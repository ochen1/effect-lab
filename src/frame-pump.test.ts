import { expect, test } from "bun:test";
import { createFramePump } from "./frame-pump";

test("frame pump never queues a second frame while inference is pending", async () => {
	const callbacks: FrameRequestCallback[] = [];
	let release!: () => void;
	let count = 0;
	const pump = createFramePump(
		async () => {
			count++;
			await new Promise<void>((resolve) => {
				release = resolve;
			});
		},
		() => {},
		(callback) => {
			callbacks.push(callback);
			return callbacks.length;
		},
		() => {},
	);
	pump.start();
	pump.start();
	expect(callbacks.length).toBe(1);
	callbacks.shift()!(0);
	await Promise.resolve();
	pump.start();
	expect(count).toBe(1);
	expect(callbacks.length).toBe(0);
	const stopped = pump.stop();
	release();
	await stopped;
	expect(callbacks.length).toBe(0);
	expect(pump.busy).toBe(false);
});

test("frame errors stop scheduling and are reported once", async () => {
	const callbacks: FrameRequestCallback[] = [];
	const errors: unknown[] = [];
	const failure = new Error("GPU unavailable");
	const pump = createFramePump(
		async () => {
			throw failure;
		},
		(error) => errors.push(error),
		(callback) => {
			callbacks.push(callback);
			return callbacks.length;
		},
		() => {},
	);
	pump.start();
	callbacks.shift()!(0);
	await pump.stop();
	expect(errors).toEqual([failure]);
	expect(callbacks.length).toBe(0);
});

test("a first frame aborted in the background can restart after draining", async () => {
	const callbacks: FrameRequestCallback[] = [];
	let rejectFirst!: (error: Error) => void;
	let rendered = 0;
	const pump = createFramePump(
		async () => {
			if (++rendered === 1)
				await new Promise<void>((_, reject) => {
					rejectFirst = reject;
				});
		},
		() => {},
		(callback) => {
			callbacks.push(callback);
			return callbacks.length;
		},
		() => {},
	);
	pump.start();
	callbacks.shift()!(0);
	await Promise.resolve();
	const drained = pump.stop();
	rejectFirst(new DOMException("Hidden tab", "AbortError"));
	await drained;
	pump.start();
	expect(callbacks.length).toBe(1);
	callbacks.shift()!(1);
	await pump.stop();
	expect(rendered).toBe(2);
	expect(pump.busy).toBe(false);
});

test("FPS meter measures elapsed throughput rather than inflated instantaneous rates", async () => {
	const { createFrameRateMeter } = await import("./frame-pump");
	const meter = createFrameRateMeter(600);
	meter.record(0);
	let now = 0,
		rate = 0;
	for (let i = 0; i < 20; i++) {
		now += i % 2 === 0 ? 20 : 40;
		rate = meter.record(now);
	}
	expect(rate).toBeCloseTo(1000 / 30, 8);
	meter.reset();
	expect(meter.record(1000)).toBe(0);
	meter.record(1300);
	expect(meter.record(1600)).toBeCloseTo(1000 / 300, 8);
});
