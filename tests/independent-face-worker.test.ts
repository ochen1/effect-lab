import { expect, test } from "bun:test";
import {
	createIndependentFaceWorkerClient,
	type FaceRequest,
} from "../src/independent-face-worker-client";
function setup() {
	const sent: FaceRequest[] = [];
	const transport = {
		postMessage: (m: FaceRequest) => {
			sent.push(m);
		},
		terminate() {
			this.terminated = true;
		},
		terminated: false,
		onmessage: null as any,
		onerror: null as any,
		onmessageerror: null as any,
	};
	const runtime = createIndependentFaceWorkerClient({}, () => transport);
	const reply = (error?: string) => {
		const last = sent.at(-1)!;
		transport.onmessage({ data: { id: last.id, faces: [], error } });
	};
	const image = {
		width: 2,
		height: 2,
		data: new Uint8ClampedArray(16).fill(127),
	} as ImageData;
	return { runtime, sent, transport, reply, image };
}
const tick = async () => {
	for (let i = 0; i < 12; i++) await Promise.resolve();
};
test("face worker keeps caller pixels and serializes real completion after cancellation", async () => {
	const h = setup();
	const loading = h.runtime.load();
	await tick();
	h.reply();
	await loading;
	const abort = new AbortController();
	const cancelled = h.runtime.detect(h.image, abort.signal, 50);
	await tick();
	expect(h.sent.at(-1)?.type).toBe("detect");
	const message = h.sent.at(-1)!;
	if (message.type !== "detect") throw Error("missing detection");
	expect(message.rgba).not.toBe(h.image.data);
	expect([...message.rgba]).toEqual([...h.image.data]);
	abort.abort();
	await expect(cancelled).rejects.toThrow("Cancelled");
	const next = h.runtime.detect(h.image, undefined, 100);
	await tick();
	expect(h.sent.length).toBe(2);
	h.reply();
	await tick();
	expect(h.sent.length).toBe(3);
	h.reply();
	await next;
	await h.runtime.dispose();
	expect(h.transport.terminated).toBe(true);
});
test("worker errors reject pending inference and a subsequent call reloads", async () => {
	const h = setup();
	const first = h.runtime.load();
	await tick();
	h.transport.onerror({ message: "worker crashed" });
	await expect(first).rejects.toThrow("crashed");
	const retry = h.runtime.load();
	await tick();
	expect(h.sent.at(-1)?.type).toBe("load");
	h.reply();
	await retry;
	const pending = h.runtime.detect(h.image);
	await tick();
	const rejected = pending.catch((error) => error);
	await h.runtime.dispose();
	expect((await rejected).message).toContain("disposed");
	await expect(h.runtime.detect(h.image)).rejects.toThrow("disposed");
});
test("pre-cancelled calls and invalid timestamps never send a frame", async () => {
	const h = setup();
	const abort = new AbortController();
	abort.abort();
	await expect(h.runtime.detect(h.image, abort.signal)).rejects.toThrow();
	await expect(h.runtime.detect(h.image, undefined, NaN)).rejects.toThrow(
		"finite",
	);
	expect(h.sent).toHaveLength(0);
	await h.runtime.dispose();
});
