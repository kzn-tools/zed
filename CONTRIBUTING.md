# Contributing to Kaizen Zed Extension

👋 Thanks for your interest in contributing!

## 🎯 Ways to Contribute

- 🐛 Report bugs
- 💡 Suggest features
- 📝 Improve documentation
- 🔧 Fix issues
- ✨ Add new features

## 🚀 Quick Start

### Prerequisites

- Rust 1.85.0+ (edition 2021)
- `wasm32-wasip1` target installed
- Zed editor installed
- Kaizen CLI installed globally

### Setup

1. Fork and clone:

```bash
git clone git@github.com:YOUR_USERNAME/zed.git
cd zed
```

2. Add WASM target:

```bash
rustup target add wasm32-wasip1
```

3. Build:

```bash
cargo build --target wasm32-wasip1 --release
```

### Development Workflow

1. Make changes in `src/lib.rs`
2. Build WASM: `cargo build --target wasm32-wasip1 --release`
3. Test in Zed:
   - Copy `target/wasm32-wasip1/release/kaizen_zed.wasm` to `extension.wasm`
   - Install locally: `zed extensions install .`
4. Test with sample JS/TS files

### Code Quality

Run before submitting PR:

```bash
cargo fmt --all --check
cargo clippy --all-targets -- -D warnings
```

## 📋 Pull Request Process

1. Create feature branch: `git checkout -b feature/my-feature`
2. Make changes
3. Format and lint code
4. Commit with [Conventional Commits](https://www.conventionalcommits.org/):
   - `feat: add configuration option for rules`
   - `fix: resolve WASM build issue`
   - `docs: update installation guide`
5. Push and open PR
6. Wait for review (2-3 days)

## 💎 OSS Contributors Program

**Earn free Pro tier!**

Merge 3+ meaningful PRs across Kaizen projects:
- ✅ Free Pro tier access (renewable annually)
- 🏆 Recognition on contributors page
- 💬 Early feature access

[Learn more →](https://kaizen.tools/oss)

## 🏷️ Issue Labels

- `good first issue` - Perfect for beginners
- `help wanted` - We need help
- `type: bug` - Something broken
- `type: feature` - New functionality
- `type: docs` - Docs improvements
- `contributor-reward` - Eligible for Pro tier

## 📝 Code Style

- Follow Rust 2021 edition standards
- Use `cargo fmt` for formatting
- No `unwrap()` or `expect()` in production code
- Add comments for complex logic
- Keep functions small and focused

## 🔒 Security

Found a security issue? See [SECURITY.md](.github/SECURITY.md).

## 🧪 Testing

Currently: Manual testing in Zed
Future: Automated tests welcome!

**Manual test checklist:**
- [ ] Extension loads in Zed
- [ ] LSP server starts correctly
- [ ] Diagnostics appear for JS/TS files
- [ ] No console errors in Zed

## ❓ Questions?

- [GitHub Discussions](https://github.com/kzn-tools/zed/discussions)
- Email: contribute@kaizen.tools

## 📜 Code of Conduct

Read our [Code of Conduct](.github/CODE_OF_CONDUCT.md).

---

**Thank you for contributing! 🎉**
