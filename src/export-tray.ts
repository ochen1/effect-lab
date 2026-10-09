export interface ExportArtifact {
	file: File;
	kind: "original" | "edited" | "settings";
	release?: () => Promise<void>;
}

/** Files remain available across media/mode changes; disk-backed files stay on disk. */
export function createExportTray(
	container: HTMLElement,
	onError: (message: string) => void,
	onOpen: (file: File, savedSettings?: unknown) => Promise<void>,
	isInUse: (file: File) => boolean = () => false,
) {
	const entries = new Set<{
		urls: string[];
		artifacts: ExportArtifact[];
		node: HTMLElement;
	}>();
	const list = container.querySelector<HTMLElement>(".saved-file-list")!;
	function discard(entry: {
		urls: string[];
		artifacts: ExportArtifact[];
		node: HTMLElement;
	}) {
		entry.urls.forEach((url) => URL.revokeObjectURL(url));
		entry.artifacts.forEach((item) => {
			void item.release?.().catch(() => {});
		});
		entry.node.remove();
		entries.delete(entry);
		container.hidden = entries.size === 0;
	}
	return {
		add(artifacts: ExportArtifact[], title = "Ready to download") {
			const node = document.createElement("article");
			node.className = "saved-file-group";
			const heading = document.createElement("h3");
			heading.textContent = title;
			node.append(heading);
			const urls: string[] = [];
			for (const item of artifacts) {
				const url = URL.createObjectURL(item.file);
				urls.push(url);
				const row = document.createElement("div");
				row.className = "saved-file-row";
				const label = document.createElement("span");
				label.className = "saved-file-name";
				label.textContent = `${item.kind[0].toUpperCase()}${item.kind.slice(1)} · ${item.file.name}`;
				const link = document.createElement("a");
				link.className = "button button-small";
				link.href = url;
				link.download = item.file.name;
				link.textContent = `Download ${item.kind}`;
				row.append(label, link);
				if (navigator.canShare?.({ files: [item.file] })) {
					const share = document.createElement("button");
					share.className = "button button-small";
					share.textContent = `Share ${item.kind}`;
					share.onclick = async () => {
						try {
							await navigator.share({ files: [item.file] });
						} catch (error) {
							if (
								!(error instanceof DOMException && error.name === "AbortError")
							)
								onError(String(error));
						}
					};
					row.append(share);
				}
				if (
					item.kind === "original" &&
					/^(image|video)\//.test(item.file.type)
				) {
					const open = document.createElement("button");
					open.className = "button button-small";
					open.textContent = "Edit original";
					open.onclick = async () => {
						try {
							const sidecar = artifacts.find(
								(value) => value.kind === "settings",
							);
							const metadata = sidecar
								? JSON.parse(await sidecar.file.text())
								: undefined;
							await onOpen(
								item.file,
								metadata?.settings ?? metadata?.initialSettings,
							);
						} catch (error) {
							onError(String(error));
						}
					};
					row.append(open);
				}
				node.append(row);
			}
			const entry = { urls, artifacts, node };
			entries.add(entry);
			const remove = document.createElement("button");
			remove.className = "text-button";
			remove.textContent = "Discard these temporary files";
			remove.onclick = () => {
				if (artifacts.some((item) => item.release && isInUse(item.file))) {
					onError(
						"Open a different source before discarding the original you are editing.",
					);
					return;
				}
				discard(entry);
			};
			node.append(remove);
			list.prepend(node);
			container.hidden = false;
			if (container instanceof HTMLDetailsElement)
				container.open = !container.closest(".preview-fullscreen");
			return urls;
		},
		clear() {
			for (const entry of [...entries]) discard(entry);
		},
	};
}
