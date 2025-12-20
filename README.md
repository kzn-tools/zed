# Kaizen for Zed

Ultra-fast JavaScript/TypeScript static analyzer extension for [Zed](https://zed.dev).

## Prerequisites

This extension requires **kaizen-lsp** to be installed and available in your PATH.

Install from the main Kaizen repository:

```bash
# From the kaizen repo
./scripts/install-local.sh
```

Verify installation:

```bash
kaizen-lsp --version
```

## Installation

### From Zed Extensions (Recommended)

1. Open Zed
2. Open the Extensions panel (`cmd+shift+x` / `ctrl+shift+x`)
3. Search for "Kaizen"
4. Click Install

### Manual Installation

Clone this repository into your Zed extensions directory:

```bash
git clone https://github.com/kzn-tools/zed ~/.config/zed/extensions/kaizen
```

## Configuration

The extension works out of the box with default settings. Configure Kaizen via your project's `kaizen.toml` or `.kaizenrc` file.

### Zed Settings

Add to your Zed settings (`~/.config/zed/settings.json`):

```json
{
  "lsp": {
    "kaizen": {
      "initialization_options": {}
    }
  }
}
```

## Supported Languages

- JavaScript (.js, .jsx, .mjs, .cjs)
- TypeScript (.ts, .tsx, .mts, .cts)

## Troubleshooting

### "kaizen-lsp not found in PATH"

The language server binary is not installed or not in your PATH.

**Solution:**
1. Install kaizen-lsp: `./scripts/install-local.sh`
2. Ensure the installation directory is in your PATH
3. Restart Zed

### Extension not loading

1. Check Zed logs: `cmd+shift+p` → "zed: open log"
2. Verify the extension is listed in Extensions panel
3. Try reinstalling the extension

### LSP not starting

1. Check if kaizen-lsp works standalone: `kaizen-lsp --help`
2. Open a JavaScript/TypeScript file to trigger LSP activation
3. Check Zed's LSP status in the status bar

## Development

Build the extension locally:

```bash
cargo build --target wasm32-wasip1 --release
```

## License

MIT
