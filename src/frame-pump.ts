/** Runs at most one asynchronous frame operation; no pending frame queue. */
export function createFramePump(
	render: () => Promise<void>,
	onError: (error: unknown) => void,
	schedule: (callback: FrameRequestCallback) => number = requestAnimationFrame,
	cancel: (handle: number) => void = cancelAnimationFrame,
) {
	let running = false;
	let handle: number | undefined;
	let inFlight: Promise<void> | undefined;
	const next = () => {
		if (!running || handle !== undefined || inFlight) return;
		handle = schedule(() => {
			handle = undefined;
			if (!running) return;
			inFlight = Promise.resolve()
				.then(render)
				.catch((error) => {
					running = false;
					onError(error);
				})
				.finally(() => {
					inFlight = undefined;
					next();
				});
		});
	};
	return {
		start() {
			running = true;
			next();
		},
		async stop() {
			running = false;
			if (handle !== undefined) {
				cancel(handle);
				handle = undefined;
			}
			await inFlight;
		},
		get busy() {
			return Boolean(inFlight);
		},
	};
}

/** Count presented frames over elapsed time. Averaging instantaneous FPS would
 * over-report jittery delivery (alternating20/40ms is33.3FPS, not37.5FPS). */
export function createFrameRateMeter(windowMs = 500) {
	let start: number | undefined;
	let frames = 0,
		rate = 0;
	return {
		record(now: number) {
			if (start === undefined || now < start) {
				start = now;
				frames = 0;
				rate = 0;
				return rate;
			}
			frames++;
			if (now - start >= windowMs) {
				rate = (frames * 1000) / (now - start);
				start = now;
				frames = 0;
			}
			return rate;
		},
		reset() {
			start = undefined;
			frames = 0;
			rate = 0;
		},
	};
}
