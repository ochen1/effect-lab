import { createHash } from "node:crypto";
import { lstat, readFile, readdir } from "node:fs/promises";
import { fileURLToPath } from "node:url";

const root = new URL("../", import.meta.url);
const dist = new URL("dist/", root);
const manifest = JSON.parse(
	await readFile(new URL("public/effects/boy-ii/assets.json", root), "utf8"),
) as Record<string, { sha256: string; bytes: number }>;
const textures = new Set([
	"peach.png",
	"contour.png",
	"lips.png",
	"berry.png",
	"opacity.png",
	"ganmask.png",
]);
let files = 0;
let bytes = 0;

function allowed(path: string) {
	if (["index.html", "icon.svg", "manifest.webmanifest"].includes(path))
		return true;
	if (/^assets\/[^/]+\.(js|mjs|css|map|wasm)$/.test(path)) return true;
	if (/^vendor\/onnx\/ort-wasm[^/]+\.(wasm|mjs)$/.test(path)) return true;
	if (
		/^models\/(skin|face-(base|base-det|extra|detect|templates))\.(onnx|json)$/.test(
			path,
		)
	)
		return true;
	if (
		/^effects\/boy-ii\/(assets|alignment|makeup-geometry|makeup-tt295)\.json$/.test(
			path,
		)
	)
		return true;
	if (/^effects\/boy-ii\/(skin|filter)\.frag$/.test(path)) return true;
	return (
		path.startsWith("effects/boy-ii/") &&
		textures.has(path.slice("effects/boy-ii/".length))
	);
}

async function inspect(directory: URL, prefix = "") {
	for (const entry of await readdir(directory, { withFileTypes: true })) {
		const path = `${prefix}${entry.name}`;
		const location = new URL(entry.name, directory);
		if ((await lstat(location)).isSymbolicLink())
			throw new Error(`Website contains a symlink: ${path}`);
		if (entry.isDirectory()) {
			await inspect(new URL(`${entry.name}/`, directory), `${path}/`);
			continue;
		}
		if (!entry.isFile() || !allowed(path))
			throw new Error(`Unexpected published file: ${path}`);
		const content = await readFile(location);
		if (
			content.subarray(0, 4).equals(Buffer.from([0x7f, 0x45, 0x4c, 0x46])) ||
			[0xfeedfacf, 0xfeedface, 0xcafebabe].includes(
				content.length >= 4 ? content.readUInt32LE(0) : 0,
			)
		)
			throw new Error(`Native executable found in website: ${path}`);
		if (path.endsWith(".png")) {
			const expected = manifest[entry.name];
			const hash = createHash("sha256").update(content).digest("hex");
			if (
				!expected ||
				expected.sha256 !== hash ||
				expected.bytes !== content.length
			)
				throw new Error(
					`Effect texture does not match its original manifest: ${path}`,
				);
		}
		files++;
		bytes += content.length;
	}
}

await inspect(dist);
for (const path of [
	"index.html",
	"models/skin.onnx",
	"models/face-detect.onnx",
	"models/face-base-det.onnx",
	"models/face-base.onnx",
	"models/face-extra.onnx",
	"effects/boy-ii/makeup-tt295.json",
	"vendor/onnx/ort-wasm-simd-threaded.jsep.wasm",
])
	await lstat(new URL(path, dist));
console.log(
	`Website inventory checked: ${files} files, ${(bytes / 1024 / 1024).toFixed(1)} MiB. Only application assets and original effect textures are published from ${fileURLToPath(dist)}.`,
);
