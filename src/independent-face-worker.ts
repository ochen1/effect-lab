import { createIndependentFaceRuntime } from "./independent-face";
import type { FaceRequest } from "./independent-face-worker-client";
let runtime: ReturnType<typeof createIndependentFaceRuntime> | undefined;
let queue = Promise.resolve();
self.onmessage = (event: MessageEvent<FaceRequest>) => {
	const message = event.data;
	queue = queue.then(async () => {
		try {
			if (message.type === "load") {
				runtime ??= createIndependentFaceRuntime({
					...message.options,
					moduleWasm: true,
				});
				await runtime.load();
				self.postMessage({ id: message.id, faces: [] });
			} else {
				if (!runtime) throw new Error("Face worker is not initialized");
				const image = new ImageData(
					message.rgba,
					message.width,
					message.height,
				);
				const faces = await runtime.detect(image, undefined, message.timestamp);
				self.postMessage({ id: message.id, faces });
			}
		} catch (error) {
			self.postMessage({
				id: message.id,
				error: error instanceof Error ? error.message : String(error),
			});
		}
	});
};
