import { expect, test } from "bun:test";
import {
	createIndependentFaceRuntime,
	type IndependentFaceBackend,
} from "../src/independent-face";

const source = { width: 320, height: 240 } as HTMLCanvasElement;
const empty = {
	faceLandmarks: [],
	faceBlendshapes: [],
	facialTransformationMatrixes: [],
};
function backend() {
	const events: string[] = [];
	const timestamps: number[] = [];
	const value: IndependentFaceBackend = {
		detect() {
			events.push("image");
			return empty;
		},
		detectForVideo(_, timestamp) {
			timestamps.push(timestamp);
			events.push("video");
			return empty;
		},
		async setOptions({ runningMode }) {
			events.push(runningMode);
		},
		close() {
			events.push("close");
		},
	};
	return { value, events, timestamps };
}

test("independent runtime caches one model, serializes modes and keeps video time monotonic", async () => {
	const mock = backend();
	let loads = 0;
	const runtime = createIndependentFaceRuntime({}, async (options) => {
		loads++;
		expect(options.modelBaseUrl).toContain("/models/independent/");
		return mock.value;
	});
	await Promise.all([runtime.load(), runtime.load()]);
	await Promise.all([
		runtime.detect(source),
		runtime.detect(source, undefined, 50),
		runtime.detect(source, undefined, 5),
		runtime.detect(source),
	]);
	expect(loads).toBe(1);
	expect(mock.timestamps).toEqual([50, 51]);
	expect(mock.events).toEqual([
		"image",
		"VIDEO",
		"video",
		"video",
		"IMAGE",
		"image",
	]);
	await runtime.dispose();
	await runtime.dispose();
	expect(mock.events.filter((x) => x === "close")).toHaveLength(1);
	await expect(runtime.detect(source)).rejects.toThrow("disposed");
});

test("failed model loading can be retried and cancellation never invokes detection", async () => {
	const mock = backend();
	let loads = 0;
	const runtime = createIndependentFaceRuntime({}, async () => {
		if (++loads === 1) throw new Error("download failed");
		return mock.value;
	});
	await expect(runtime.load()).rejects.toThrow("download failed");
	await runtime.load();
	const controller = new AbortController();
	controller.abort();
	await expect(runtime.detect(source, controller.signal)).rejects.toThrow();
	expect(mock.events).toHaveLength(0);
	await runtime.detect(source);
	expect(mock.events).toEqual(["image"]);
	await runtime.dispose();
});

test("disposing during model creation closes the late backend exactly once", async () => {
	const mock = backend();
	let resolve!: (value: IndependentFaceBackend) => void;
	const runtime = createIndependentFaceRuntime(
		{},
		async () =>
			new Promise((done) => {
				resolve = done;
			}),
	);
	const loading = runtime.load();
	const disposed = runtime.dispose();
	resolve(mock.value);
	await expect(loading).rejects.toThrow("disposed");
	await disposed;
	expect(mock.events).toEqual(["close"]);
});

test("invalid video timestamps and face limits are rejected", async () => {
	expect(() => createIndependentFaceRuntime({ maxFaces: 0 })).toThrow();
	const mock = backend();
	const runtime = createIndependentFaceRuntime({}, async () => mock.value);
	await expect(runtime.detect(source, undefined, NaN)).rejects.toThrow(
		"finite",
	);
	expect(mock.events).toHaveLength(0);
	await runtime.dispose();
});
