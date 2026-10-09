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
