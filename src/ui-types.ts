export interface EffectSettings {
	skin: number;
	lut: number;
	highlightProtection: number;
	brightness: number;
	temperature: number;
	saturation: number;
	contrast: number;
	exposure: number;
	tint: number;
	contour: number;
	lips: number;
	berry: number;
	skinEnabled: boolean;
	colorEnabled: boolean;
	makeupEnabled: boolean;
	faceIndex: number;
}

export const DEFAULT_SETTINGS: Readonly<EffectSettings> = Object.freeze({
	skin: 1,
	lut: 0.3,
	highlightProtection: 0,
	brightness: -0.02,
	temperature: -0.01,
	saturation: 0,
	contrast: 0,
	exposure: 0,
	tint: 0,
	contour: 0.5,
	lips: 0.19,
	berry: 0.4,
	skinEnabled: true,
	colorEnabled: true,
	makeupEnabled: true,
	faceIndex: 0,
});

export type NumericSetting = Exclude<
	keyof EffectSettings,
	"skinEnabled" | "colorEnabled" | "makeupEnabled" | "faceIndex"
>;
export const SETTING_RANGES: Record<NumericSetting, readonly [number, number]> =
	{
		skin: [0, 1],
		lut: [0, 1],
		highlightProtection: [0, 1],
		brightness: [-1, 1],
		temperature: [-1, 1],
		saturation: [-1, 1],
		contrast: [-1, 1],
		exposure: [-1, 1],
		tint: [-1, 1],
		contour: [0, 1],
		lips: [0, 1],
		berry: [0, 1],
	};

/** Stored settings are untrusted: discard unknown fields and clamp finite numbers. */
export function validateSettings(input: unknown): EffectSettings {
	const result: EffectSettings = { ...DEFAULT_SETTINGS };
	if (!input || typeof input !== "object") return result;
	const source = input as Record<string, unknown>;
	for (const [key, [min, max]] of Object.entries(SETTING_RANGES)) {
		const value = source[key];
		if (typeof value === "number" && Number.isFinite(value))
			result[key as NumericSetting] = Math.max(min, Math.min(max, value));
	}
	for (const key of ["skinEnabled", "colorEnabled", "makeupEnabled"] as const) {
		if (typeof source[key] === "boolean") result[key] = source[key];
	}
	if (typeof source.faceIndex === "number" && Number.isFinite(source.faceIndex))
		result.faceIndex = Math.max(0, Math.floor(source.faceIndex));
	return result;
}
