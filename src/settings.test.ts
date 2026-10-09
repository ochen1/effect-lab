import { describe, expect, it } from "bun:test";
import { DEFAULT_SETTINGS, validateSettings } from "./ui-types";

describe("saved settings boundary", () => {
	it("restores original BOY II defaults for missing or invalid storage", () => {
		expect(validateSettings(null)).toEqual(DEFAULT_SETTINGS);
		expect(validateSettings("broken")).toEqual(DEFAULT_SETTINGS);
		expect(
			validateSettings({
				skin: "1",
				brightness: Number.NaN,
				makeupEnabled: "false",
			}),
		).toEqual(DEFAULT_SETTINGS);
	});
	it("limits hand-edited stored values and ignores unrelated fields", () => {
		const settings = validateSettings({
			skin: 12,
			lut: -1,
			brightness: -10,
			tint: 1.5,
			faceIndex: -4,
			skinEnabled: false,
			unexpected: "value",
		});
		expect(settings.skin).toBe(1);
		expect(settings.lut).toBe(0);
		expect(settings.brightness).toBe(-1);
		expect(settings.tint).toBe(1);
		expect(settings.faceIndex).toBe(0);
		expect(settings.skinEnabled).toBe(false);
		expect(settings).not.toHaveProperty("unexpected");
	});
	it("returns independent mutable settings without changing defaults", () => {
		const settings = validateSettings({ faceIndex: 3.7, lips: 0.25 });
		settings.lut = 0.8;
		expect(settings.faceIndex).toBe(3);
		expect(settings.lips).toBe(0.25);
		expect(DEFAULT_SETTINGS.lut).toBe(0.3);
	});
});
