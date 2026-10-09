import { defineConfig } from "vite";
// A dedicated verification origin avoids HMR reloads while other app work continues.
export default defineConfig({
	base: "./",
	server: { host: "127.0.0.1", port: 4178, strictPort: true, hmr: false },
});
