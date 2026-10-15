import { createIndependentSkinRuntime } from "./independent-skin";
import type {
	IndependentSkinWorkerRequest,
	IndependentSkinWorkerResponse,
} from "./independent-skin-worker-protocol";

// Avoid declaring DOM worker/window globals twice in this app's shared TS project.
const scope = globalThis as unknown as {
	onmessage:
		| ((event: MessageEvent<IndependentSkinWorkerRequest>) => void)
		| null;
	postMessage(
		message: IndependentSkinWorkerResponse,
		transfer?: Transferable[],
	): void;
};
let runtime: ReturnType<typeof createIndependentSkinRuntime> | undefined;
let activeId: number | undefined;
let configuration: string | undefined;

scope.onmessage = (event) => {
	const request = event.data;
	if (activeId !== undefined) {
		scope.postMessage({
			type: "error",
			id: request.id,
			name: "IndependentSkinBusyError",
			message: "Independent skin worker already has a frame in flight.",
		});
		return;
	}
	activeId = request.id;
	void (async () => {
		try {
			const signature = JSON.stringify(request.options);
			if (configuration !== undefined && configuration !== signature)
				throw new Error(
					"Independent skin worker configuration cannot change during its lifetime.",
				);
			configuration = signature;
			runtime ??= createIndependentSkinRuntime({
				...request.options,
				onStatus: (status) =>
					scope.postMessage({
						type: "status",
						id: activeId ?? request.id,
						status,
					}),
			});
			if (request.type === "warm") {
				const status = await runtime.warm();
				scope.postMessage({ type: "ready", id: request.id, status });
			} else {
				const start = performance.now();
				const patch = await runtime.processPixels(
					request.rgba,
					request.cropToSource,
				);
				scope.postMessage(
					{
						type: "result",
						id: request.id,
						patch,
						status: runtime.getStatus(),
						durationMs: performance.now() - start,
					},
					[patch.rgba.buffer as ArrayBuffer],
				);
			}
		} catch (error) {
			scope.postMessage({
				type: "error",
				id: request.id,
				name: error instanceof Error ? error.name : "Error",
				message: error instanceof Error ? error.message : String(error),
				status: runtime?.getStatus(),
			});
		} finally {
			activeId = undefined;
		}
	})();
};
