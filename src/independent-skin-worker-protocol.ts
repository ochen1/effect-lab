import type { SkinPatch } from "./compositor";
import type { Affine } from "./alignment";
import type { IndependentSkinStatus } from "./independent-skin";

export interface IndependentSkinWorkerOptions {
	backend: "auto" | "wasm" | "webgpu";
	modelBaseUrl: string;
	wasmBaseUrl: string;
}
export type IndependentSkinWorkerRequest =
	| { type: "warm"; id: number; options: IndependentSkinWorkerOptions }
	| {
			type: "process";
			id: number;
			options: IndependentSkinWorkerOptions;
			rgba: Uint8ClampedArray;
			cropToSource: Affine;
	  };
export type IndependentSkinWorkerResponse =
	| { type: "status"; id: number; status: IndependentSkinStatus }
	| { type: "ready"; id: number; status: IndependentSkinStatus }
	| {
			type: "result";
			id: number;
			patch: SkinPatch;
			status: IndependentSkinStatus;
			durationMs: number;
	  }
	| {
			type: "error";
			id: number;
			name: string;
			message: string;
			status?: IndependentSkinStatus;
	  };
