import { expect, test } from "bun:test";
import {
	createIndependentSkinWorkerClient,
	IndependentSkinBusyError,
	type IndependentSkinWorkerDependencies,
} from "../src/independent-skin-worker-client";
import type {
	IndependentSkinWorkerRequest,
	IndependentSkinWorkerResponse,
} from "../src/independent-skin-worker-protocol";
import type { IndependentSkinStatus } from "../src/independent-skin";
import type { SkinPatch } from "../src/compositor";
import type { Face } from "../src/face";

const canvas = { width: 32, height: 32 } as HTMLCanvasElement;
const face: Face = {
	box: { x: 0, y: 0, width: 32, height: 32 },
	points: [],
	score: 1,
};
const ready: IndependentSkinStatus = {
	state: "ready",
	backend: "wasm",
	provider: "Alibaba ModelScope / Apache-2.0",
	model: "cv_unet_skin_retouching_torch",
	whitening: false,
	localBlemishInpainting: false,
	downloadedBytes: 123,
};
const patch: SkinPatch = {
	rgba: new Float32Array(16),
	size: 2,
	cropToSource: [1, 0, 0, 1, 0, 0],
	kind: "quadratic-blend",
	maskMode: "alpha-only",
};
class FakeWorker {
	onmessage:
		| ((event: MessageEvent<IndependentSkinWorkerResponse>) => void)
		| null = null;
	onerror: ((event: ErrorEvent) => void) | null = null;
	onmessageerror: ((event: MessageEvent) => void) | null = null;
	messages: IndependentSkinWorkerRequest[] = [];
	transfers: Transferable[][] = [];
	terminated = false;
	postMessage(
		message: IndependentSkinWorkerRequest,
		transfer: Transferable[] = [],
	) {
		this.messages.push(message);
		this.transfers.push(transfer);
	}
	terminate() {
		this.terminated = true;
	}
	respond(message: IndependentSkinWorkerResponse) {
		this.onmessage?.({
			data: message,
		} as MessageEvent<IndependentSkinWorkerResponse>);
	}
}
function setup() {
	const workers: FakeWorker[] = [];
	let captures = 0;
	const pixels = new Uint8ClampedArray(512 * 512 * 4);
	const dependencies: IndependentSkinWorkerDependencies = {
		createWorker() {
			const value = new FakeWorker();
			workers.push(value);
			return value;
		},
		preparePixels: () => {
			captures++;
			return { rgba: pixels, cropToSource: [1, 0, 0, 1, 0, 0] };
		},
	};
	const client = createIndependentSkinWorkerClient({}, dependencies);
	return {
		client,
		workers,
		pixels,
		get captures() {
			return captures;
		},
	};
}

test("concurrent warm callers share a single worker job; one caller can cancel", async () => {
	const { client, workers } = setup();
	const controller = new AbortController();
	const first = client.warm(controller.signal),
		second = client.warm();
	expect(workers).toHaveLength(1);
	expect(workers[0].messages).toHaveLength(1);
	controller.abort();
	await expect(first).rejects.toHaveProperty("name", "AbortError");
	expect(client.busy).toBe(true);
	workers[0].respond({
		type: "ready",
		id: workers[0].messages[0].id,
		status: ready,
	});
	expect(await second).toEqual(ready);
	expect(await client.warm()).toEqual(ready);
	expect(workers[0].messages).toHaveLength(1);
	expect(workers[0].terminated).toBe(false);
	client.dispose();
});

test("exactly one frame is captured and transferred; busy calls do not queue", async () => {
	const state = setup();
	const promise = state.client.process(canvas, face);
	await expect(state.client.process(canvas, face)).rejects.toBeInstanceOf(
		IndependentSkinBusyError,
	);
	await Promise.resolve();
	const worker = state.workers[0],
		request = worker.messages[0];
	expect(worker.messages).toHaveLength(1);
	expect(worker.transfers[0]).toEqual([state.pixels.buffer]);
	expect(state.captures).toBe(1);
	expect(request.options.modelBaseUrl).toBe(
		"http://localhost/models/independent/",
	);
	expect(request.options.wasmBaseUrl).toBe("http://localhost/vendor/onnx/");
	worker.respond({
		type: "result",
		id: request.id,
		patch,
		status: ready,
		durationMs: 87,
	});
	expect(await promise).toBe(patch);
	expect(state.client.busy).toBe(false);
	expect(state.client.lastDurationMs).toBe(87);
	state.client.dispose();
});

test("cancelling a posted frame detaches caller, retains models, and discards its result", async () => {
	const { client, workers } = setup();
	const controller = new AbortController();
	const first = client.process(canvas, face, controller.signal);
	await Promise.resolve();
	controller.abort();
	await expect(first).rejects.toHaveProperty("name", "AbortError");
	expect(client.busy).toBe(true);
	expect(workers[0].terminated).toBe(false);
	await expect(client.process(canvas, face)).rejects.toBeInstanceOf(
		IndependentSkinBusyError,
	);
	workers[0].respond({
		type: "result",
		id: workers[0].messages[0].id,
		patch,
		status: ready,
		durationMs: 90,
	});
	expect(client.busy).toBe(false);
	const second = client.process(canvas, face);
	await Promise.resolve();
	expect(workers).toHaveLength(1);
	workers[0].respond({
		type: "result",
		id: workers[0].messages[1].id,
		patch,
		status: ready,
		durationMs: 50,
	});
	expect(await second).toBe(patch);
	client.dispose();
});

test("already-cancelled input does not capture or start a worker", async () => {
	const state = setup(),
		controller = new AbortController();
	controller.abort();
	const promise = state.client.process(canvas, face, controller.signal);
	await expect(promise).rejects.toHaveProperty("name", "AbortError");
	expect(state.captures).toBe(0);
	expect(state.workers).toHaveLength(0);
	expect(state.client.busy).toBe(false);
	state.client.dispose();
});

test("worker crash rejects pending job and later calls create a fresh worker", async () => {
	const { client, workers } = setup();
	const first = client.warm();
	workers[0].onerror?.({
		message: "worker crashed",
		preventDefault() {},
	} as ErrorEvent);
	await expect(first).rejects.toThrow("worker crashed");
	expect(workers[0].terminated).toBe(true);
	expect(client.busy).toBe(false);
	const retry = client.warm();
	expect(workers).toHaveLength(2);
	workers[1].respond({
		type: "ready",
		id: workers[1].messages[0].id,
		status: ready,
	});
	await retry;
	client.dispose();
});

test("dispose terminates worker and rejects future work", async () => {
	const state = setup();
	const promise = state.client.process(canvas, face);
	state.client.dispose();
	state.client.dispose();
	await expect(promise).rejects.toThrow("disposed");
	expect(state.workers[0].terminated).toBe(true);
	await expect(state.client.warm()).rejects.toThrow("disposed");
	expect(state.client.getStatus().state).toBe("disposed");
});

test("idle waits for a detached computation before the next strict photo job", async () => {
	const { client, workers } = setup();
	const cancelled = new AbortController();
	const first = client.process(canvas, face, cancelled.signal);
	cancelled.abort();
	await expect(first).rejects.toHaveProperty("name", "AbortError");
	let drained = false;
	const wait = client.idle().then(() => {
		drained = true;
	});
	await Promise.resolve();
	expect(drained).toBe(false);
	workers[0].respond({
		type: "result",
		id: workers[0].messages[0].id,
		patch,
		status: ready,
		durationMs: 90,
	});
	await wait;
	expect(drained).toBe(true);
	const next = client.process(canvas, face);
	workers[0].respond({
		type: "result",
		id: workers[0].messages[1].id,
		patch,
		status: ready,
		durationMs: 90,
	});
	await next;
	client.dispose();
});

test("cancelling an idle waiter leaves the owned inference alive", async () => {
	const { client, workers } = setup();
	const job = client.process(canvas, face);
	const controller = new AbortController();
	const idle = client.idle(controller.signal);
	controller.abort();
	await expect(idle).rejects.toHaveProperty("name", "AbortError");
	expect(client.busy).toBe(true);
	expect(workers[0].terminated).toBe(false);
	workers[0].respond({
		type: "result",
		id: workers[0].messages[0].id,
		patch,
		status: ready,
		durationMs: 90,
	});
	await job;
	client.dispose();
});
