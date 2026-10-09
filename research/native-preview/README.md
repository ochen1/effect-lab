# Earlier local native preview experiment

These are the source files from the earlier macOS experiment that loaded the unchanged BOY II package into the original Effect House engine. The experiment helped distinguish the package's appearance from editor preview scaling and test direct full-frame input. The browser application does not import these files or require that engine.

The preserved code is documentary, version-specific research. The symbols and C++ object layouts refer to the original application build used during extraction. Reproduction requires a separately installed compatible Effect House application, its existing local preview process, macOS developer tools, and your own local input. The sanitized sources have not been rerun against the native application.

| File | Purpose |
| --- | --- |
| `load_original.mm` | Poll a local request file, ask the running engine to reload the original package or empty control, and refresh 20 frames. The full-frame commands send caller-supplied RGBA bytes directly through `EffectClient::putInputFrame`. |
| `native_bridge.cc` | A Node N-API bridge to the original `EffectWrapper.node` client initializer. |
| `mcp.py` | Call an explicitly supplied tool on the application's local MCP endpoint and save image responses in a local temporary directory. |
| `prepare_image.swift` | Correct image orientation and create an optional size-limited PNG or JPEG for local experiments. Pass the desired maximum dimension as the third argument; its historical default is 960 pixels. |
| `original-file-hashes.json` | SHA-256 values for the 430 original package files, indexed by package-relative path. |

Machine-specific paths were replaced with environment variables. The full-frame width and height are now required inputs. The request/reload logic, native symbols, 20-frame refresh, RGBA byte-count check, MCP wire format, and image preparation behavior are preserved. There are no photographs, generated previews, raw image buffers, native binaries, or photo verification records in this directory.

## Local configuration

Set these variables in the environment of the native preview process before loading the hook:

| Variable | Value |
| --- | --- |
| `EFFECT_HOUSE_FRAMEWORKS` | The installed application's `Contents/Frameworks` directory; used by the Node bridge. |
| `EFFECT_LAB_ORIGINAL_PACKAGE` | Absolute path to the original unpacked effect package. |
| `EFFECT_LAB_CLEAR_PACKAGE` | Absolute path to a separately prepared empty control package. Required for clear commands. |
| `EFFECT_LAB_FRAME_RGBA` | Absolute path to a private tightly packed RGBA8 frame; required for full-frame commands. |
| `EFFECT_LAB_FRAME_WIDTH`, `EFFECT_LAB_FRAME_HEIGHT` | Positive dimensions of that frame. The file must contain exactly width × height × 4 bytes. |
| `EFFECT_LAB_NATIVE_REQUEST` | Optional request-file path; defaults to `/tmp/effect-lab-native-request`. |
| `EFFECT_LAB_NATIVE_STATUS` | Optional status-file path; defaults to `/tmp/effect-lab-native-status`. |
| `EFFECT_HOUSE_MCP_PORT_FILE` | Optional MCP port JSON path. The default is the current user's standard `EffectHouse/Instances/Instance1/MCP/mcp_port.json` under macOS Application Support. |
| `EFFECT_LAB_PREVIEW_OUTPUT_DIR` | Optional preview output directory. The default is `effect-lab-native-preview` in the operating system's temporary directory. |

Keep private inputs and generated files outside the repository. A full-frame RGBA buffer must already be upright and match the supplied dimensions; the Swift helper writes encoded images, so it does not itself produce this raw buffer.

## Building the source artifacts

Example commands from the repository root, with build products outside the checkout:

```sh
export EFFECT_LAB_NATIVE_BUILD="$(mktemp -d)"
clang++ -std=c++17 -fblocks -dynamiclib -framework Foundation \
  research/native-preview/load_original.mm \
  -o "$EFFECT_LAB_NATIVE_BUILD/load_original.dylib"

# Set NODE_INCLUDE to your matching Node installation's include/node directory.
clang++ -std=c++17 -bundle -undefined dynamic_lookup -DNODE_GYP_MODULE_NAME=native_bridge -I "$NODE_INCLUDE" \
  research/native-preview/native_bridge.cc \
  -o "$EFFECT_LAB_NATIVE_BUILD/native_bridge.node"
```

The dylib must be loaded into the compatible preview process that owns `EditorEffectIPC` and `EffectClient`; running it as a standalone program cannot create that process or initialize the engine. Application launch and dylib loading depend on the locally installed version and its signing configuration. The Node bridge similarly requires the matching application's native dependencies and ABI.

Once the hook is loaded and the preview engine is initialized, write a single line to the configured request file:

- The exact `EFFECT_LAB_ORIGINAL_PACKAGE` path reloads the original package and refreshes the current preview input.
- `CLEAR` loads the configured empty control package.
- `FULL_ORIGINAL` loads the original package and sends the configured full-frame RGBA input.
- `FULL_CLEAR` loads the empty control and sends the same full-frame input.

The hook removes accepted requests and writes a dispatch status. That status confirms dispatch; image inspection is needed to verify a rendered result.

The local MCP helper takes a tool name and JSON arguments supplied by the caller:

```sh
python3 research/native-preview/mcp.py TOOL_NAME '{"argument":"value"}'
```

It discovers the local port from the configured port file, sends `tools/call` over HTTP, accepts JSON or server-sent JSON, and saves image responses outside the checkout. It does not discover tool schemas or launch Effect House.

## Checking the original package

The hashes cover authored package content, including its original textures. They do not describe user input or rendered output. To check an unpacked package:

```sh
python3 - <<'PY'
import hashlib, json, os
from pathlib import Path
root = Path(os.environ['EFFECT_LAB_ORIGINAL_PACKAGE'])
hashes = json.loads(Path('research/native-preview/original-file-hashes.json').read_text())
for name, expected in hashes.items():
    actual = hashlib.sha256((root / name).read_bytes()).hexdigest()
    if actual != expected:
        raise SystemExit(f'Package file differs: {name}')
print(f'All {len(hashes)} original package files match.')
PY
```
