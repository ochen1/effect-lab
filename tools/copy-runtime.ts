import { copyFile, mkdir, readdir } from "node:fs/promises";
import { fileURLToPath } from "node:url";
import { join } from "node:path";

const root = fileURLToPath(new URL("../", import.meta.url));
const source = join(root, "node_modules/onnxruntime-web/dist");
const destination = join(root, "public/vendor/onnx");
await mkdir(destination, { recursive: true });
const names = (await readdir(source)).filter(
	(name) => name.startsWith("ort-wasm") && /\.(wasm|mjs)$/.test(name),
);
if (!names.some((name) => name.endsWith(".wasm")))
	throw new Error(
		"ONNX Runtime Web is missing its WebAssembly files. Run bun install.",
	);
await Promise.all(
	names.map((name) => copyFile(join(source, name), join(destination, name))),
);
console.log(`Copied ${names.length} matching ONNX browser runtime files.`);

const visionSource = join(root, "node_modules/@mediapipe/tasks-vision/wasm");
const visionDestination = join(root, "public/vendor/mediapipe");
await mkdir(visionDestination, { recursive: true });
const visionNames = (await readdir(visionSource)).filter((name) =>
	/^vision_wasm[\w]*\.(js|wasm)$/.test(name),
);
if (!visionNames.some((name) => name.endsWith(".wasm")))
	throw new Error("MediaPipe WebAssembly files are missing. Run bun install.");
await Promise.all(
	visionNames.map((name) =>
		copyFile(join(visionSource, name), join(visionDestination, name)),
	),
);
console.log(
	`Copied ${visionNames.length} matching MediaPipe browser runtime files.`,
);
