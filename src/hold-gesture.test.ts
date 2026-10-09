import { expect, test } from "bun:test";
import { createHoldGesture } from "./hold-gesture";

function setup() {
	const changes: boolean[] = [];
	let timer: (() => void) | undefined;
	const hold = createHoldGesture((held) => changes.push(held), {
		schedule(callback) {
			timer = callback;
			return 1;
		},
		clear() {
			timer = undefined;
		},
	});
	return {
		hold,
		changes,
		fire() {
			timer?.();
		},
		timer() {
			return timer;
		},
	};
}
const point = { pointerId: 1, clientX: 40, clientY: 60 };

test("stationary hold is temporary and restores exactly once on release", () => {
	const { hold, changes, fire } = setup();
	hold.begin(point);
	expect(changes).toEqual([]);
	fire();
	expect(hold.active).toBe(true);
	hold.finish(2);
	expect(hold.active).toBe(true);
	hold.finish(1);
	hold.cancel();
	expect(changes).toEqual([true, false]);
	expect(hold.pointerId).toBeUndefined();
});

test("a divider drag or vertical scroll movement never activates the hold", () => {
	for (const delta of [
		{ clientX: 52, clientY: 60 },
		{ clientX: 40, clientY: 72 },
	]) {
		const { hold, changes, fire, timer } = setup();
		hold.begin(point);
		const staleTimer = timer();
		hold.move({ pointerId: 1, ...delta });
		fire();
		staleTimer?.();
		expect(changes).toEqual([]);
		expect(hold.active).toBe(false);
	}
});

test("movement, cancellation, and view changes restore an active hold", () => {
	for (const end of [
		(hold: ReturnType<typeof createHoldGesture>) =>
			hold.move({ ...point, clientX: 51 }),
		(hold: ReturnType<typeof createHoldGesture>) => hold.cancel(),
	]) {
		const { hold, changes, fire } = setup();
		hold.begin(point);
		fire();
		end(hold);
		expect(changes).toEqual([true, false]);
		expect(hold.active).toBe(false);
	}
});

test("replacing a pointer cancels its old timer and restores its prior hold", () => {
	const { hold, changes, fire, timer } = setup();
	hold.begin(point);
	const previousTimer = timer();
	fire();
	hold.begin({ ...point, pointerId: 2 });
	previousTimer?.();
	expect(changes).toEqual([true, false]);
	fire();
	hold.finish(2);
	expect(changes).toEqual([true, false, true, false]);
});
