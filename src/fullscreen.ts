/** Native fullscreen with an in-page fallback for browsers that cannot fullscreen a div. */
export function setupPreviewFullscreen(
	host: HTMLElement,
	button: HTMLButtonElement,
) {
	let active = false;
	let previousOverflow = "";
	let previousFocus: HTMLElement | null = null;
	const siblings = [
		...document.querySelectorAll<HTMLElement>(".header, .inspector, .footer"),
	];
	const inertBefore = new Map<HTMLElement, boolean>();
	function present(value: boolean) {
		if (value === active) return;
		active = value;
		if (value) {
			previousFocus = document.activeElement as HTMLElement | null;
			previousOverflow = document.body.style.overflow;
			document.body.style.overflow = "hidden";
			for (const sibling of siblings) {
				inertBefore.set(sibling, sibling.inert);
				sibling.inert = true;
			}
		} else {
			document.body.style.overflow = previousOverflow;
			for (const sibling of siblings)
				sibling.inert = inertBefore.get(sibling) ?? false;
			inertBefore.clear();
			previousFocus?.focus({ preventScroll: true });
		}
		host.classList.toggle("preview-fullscreen", value);
		button.textContent = value ? "Exit fullscreen" : "Fullscreen";
		button.setAttribute(
			"aria-label",
			value ? "Exit fullscreen preview" : "Fullscreen preview",
		);
		button.setAttribute("aria-pressed", String(value));
	}
	async function exit() {
		if (document.fullscreenElement === host)
			await document.exitFullscreen().catch(() => {});
		present(false);
	}
	button.addEventListener("click", async () => {
		if (active) {
			await exit();
			return;
		}
		present(true);
		try {
			await host.requestFullscreen?.({ navigationUI: "hide" });
		} catch {
			/* The fixed viewport remains usable when native fullscreen is unavailable. */
		}
	});
	document.addEventListener("fullscreenchange", () => {
		if (document.fullscreenElement === host) present(true);
		else if (active) present(false);
	});
	document.addEventListener("keydown", (event) => {
		if (!active) return;
		if (event.key === "Escape") {
			event.preventDefault();
			void exit();
		}
		if (event.key === "Tab") {
			const targets = [
				...host.querySelectorAll<HTMLElement>(
					"button:not(:disabled),a[href],input:not(:disabled),select:not(:disabled),summary,[tabindex='0']",
				),
			].filter((el) => el.getClientRects().length > 0);
			const first = targets[0],
				last = targets.at(-1);
			if (event.shiftKey && document.activeElement === first) {
				event.preventDefault();
				last?.focus();
			} else if (!event.shiftKey && document.activeElement === last) {
				event.preventDefault();
				first?.focus();
			}
		}
	});
	window.addEventListener("pagehide", () => {
		present(false);
	});
}
