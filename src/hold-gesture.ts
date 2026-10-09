interface PointerPosition {
	pointerId: number;
	clientX: number;
	clientY: number;
}
interface HoldOptions {
	delay?: number;
	movement?: number;
	schedule?: (callback: () => void, milliseconds: number) => unknown;
	clear?: (handle: unknown) => void;
}

/** A stationary hold only changes presentation; every completion restores it. */
export function createHoldGesture(
	onChange: (held: boolean) => void,
	options: HoldOptions = {},
) {
	const schedule =
		options.schedule ?? ((callback, delay) => setTimeout(callback, delay));
	const clear =
		options.clear ??
		((handle) => clearTimeout(handle as ReturnType<typeof setTimeout>));
	let state:
		| { point: PointerPosition; timer?: unknown; active: boolean }
		| undefined;
	function cancel() {
		const previous = state;
		state = undefined;
		if (!previous) return;
		if (previous.timer !== undefined) clear(previous.timer);
		if (previous.active) onChange(false);
	}
	return {
		begin(point: PointerPosition) {
			cancel();
			const current = {
				point: {
					pointerId: point.pointerId,
					clientX: point.clientX,
					clientY: point.clientY,
				},
				active: false,
				timer: undefined as unknown,
			};
			state = current;
			current.timer = schedule(() => {
				if (state !== current) return;
				current.timer = undefined;
				current.active = true;
				onChange(true);
			}, options.delay ?? 220);
		},
		move(point: PointerPosition) {
			if (state?.point.pointerId !== point.pointerId) return;
			if (
				Math.hypot(
					point.clientX - state.point.clientX,
					point.clientY - state.point.clientY,
				) > (options.movement ?? 10)
			)
				cancel();
		},
		finish(pointerId: number) {
			if (state?.point.pointerId === pointerId) cancel();
		},
		cancel,
		get pointerId() {
			return state?.point.pointerId;
		},
		get active() {
			return state?.active ?? false;
		},
	};
}
