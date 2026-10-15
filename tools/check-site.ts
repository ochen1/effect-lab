import { createHash } from "node:crypto";
import { lstat, readFile, readdir } from "node:fs/promises";
import { fileURLToPath } from "node:url";

const root = new URL("../", import.meta.url);
const dist = new URL("dist/", root);
const manifest = JSON.parse(
	await readFile(new URL("public/effects/boy-ii/assets.json", root), "utf8"),
) as Record<string, { sha256: string; bytes: number }>;
const lutManifest = JSON.parse(
	await readFile(new URL("public/effects/boy-ii/peach-lut.json", root), "utf8"),
) as { sha256: string; bytes: number; sourceSha256: string };
if (lutManifest.sourceSha256 !== manifest["peach.png"].sha256)
	throw new Error("Derived LUT provenance does not match original PNG");
const textures = new Set([
	"peach.png",
	"peach-lut.rgba",
	"contour.png",
	"lips.png",
	"berry.png",
	"opacity.png",
	"ganmask.png",
]);
const independentBase = new URL("public/models/independent/", root);
const faceManifest = JSON.parse(
	await readFile(new URL("face-provenance.json", independentBase), "utf8"),
) as { model: string; sha256: string; bytes: number };
const skinManifest = JSON.parse(
	await readFile(new URL("skin-manifest.json", independentBase), "utf8"),
) as {
	smoothing: { files: { name: string; bytes: number; sha256: string }[] };
	segmentation: { files: { name: string; bytes: number; sha256: string }[] };
	gpuManifest?: string;
};
const independentFiles = new Map([
	[
		faceManifest.model,
		{ sha256: faceManifest.sha256, bytes: faceManifest.bytes },
	],
	...[...skinManifest.smoothing.files, ...skinManifest.segmentation.files].map(
		(file) => [file.name, file] as const,
	),
]);
const independentMetadata = new Set([
	"face-provenance.json",
	"FACE-LICENSE.txt",
	"skin-manifest.json",
	"skin-provenance.json",
	"skin-smoothing-diagnostic.json",
	"skin-segmentation-diagnostic.json",
	"skin-segmentation-reference.f32",
	"skin-model-card.md",
	"SKIN-LICENSE.txt",
	"skin-conversion-validation.json",
]);
if (skinManifest.gpuManifest) {
	if (skinManifest.gpuManifest !== "skin-gpu-manifest.json")
		throw new Error("Unknown independent GPU manifest");
	const gpu = JSON.parse(
		await readFile(new URL(skinManifest.gpuManifest, independentBase), "utf8"),
	) as {
		candidate: { files: { name: string; bytes: number; sha256: string }[] };
		cases: { reference: { name: string; bytes: number; sha256: string } }[];
	};
	for (const file of [
		...gpu.candidate.files,
		...gpu.cases.map((c) => c.reference),
	])
		independentFiles.set(file.name, file);
	independentMetadata.add(skinManifest.gpuManifest);
}
let files = 0;
let bytes = 0;

function allowed(path: string) {
	if (/^vendor\/mediapipe\/vision_wasm[\w]*\.(js|wasm)$/.test(path))
		return true;
	if (path.startsWith("models/independent/")) {
		const name = path.slice("models/independent/".length);
		return independentFiles.has(name) || independentMetadata.has(name);
	}
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
		/^effects\/boy-ii\/(assets|alignment|makeup-geometry|makeup-tt295|peach-lut)\.json$/.test(
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
			path.startsWith("models/independent/") &&
			independentFiles.has(entry.name)
		) {
			const expected = independentFiles.get(entry.name)!;
			if (
				expected.bytes !== content.length ||
				expected.sha256 !== createHash("sha256").update(content).digest("hex")
			)
				throw new Error(`Independent model does not match provenance: ${path}`);
		}
		if (
			content.subarray(0, 4).equals(Buffer.from([0x7f, 0x45, 0x4c, 0x46])) ||
			[0xfeedfacf, 0xfeedface, 0xcafebabe].includes(
				content.length >= 4 ? content.readUInt32LE(0) : 0,
			)
		)
			throw new Error(`Native executable found in website: ${path}`);
		if (
			path.startsWith("effects/boy-ii/") &&
			(path.endsWith(".png") ||
				path.endsWith(".rgba") ||
				path.endsWith(".frag"))
		) {
			const expected =
				entry.name === "peach-lut.rgba" ? lutManifest : manifest[entry.name];
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
for (const name of [...independentFiles.keys(), ...independentMetadata])
	await lstat(new URL(`models/independent/${name}`, dist));
for (const path of [
	"index.html",
	"models/skin.onnx",
	"models/face-detect.onnx",
	"models/face-base-det.onnx",
	"models/face-base.onnx",
	"models/face-extra.onnx",
	"effects/boy-ii/makeup-tt295.json",
	"effects/boy-ii/peach-lut.rgba",
	"effects/boy-ii/peach-lut.json",
	"vendor/onnx/ort-wasm-simd-threaded.jsep.wasm",
])
	await lstat(new URL(path, dist));
console.log(
	`Website inventory checked: ${files} files, ${(bytes / 1024 / 1024).toFixed(1)} MiB. Only application assets and verified effect textures are published from ${fileURLToPath(dist)}.`,
);
