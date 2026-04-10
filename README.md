# homebrew-s2s

Homebrew tap for [spec-to-ship](https://github.com/guschiriboga/spec-to-ship) (`s2s`).

## Install

```bash
brew tap guschiriboga/s2s
brew install s2s
```

## Upgrade

```bash
brew upgrade s2s
```

## What is s2s?

`s2s` is a governed AI-assisted software delivery orchestrator. It classifies every AI request, plans the minimum set of stages needed, runs each stage through a governed workflow, and keeps a persistent record of what was done and why.

Works with Claude Code and Codex. Zero AI tokens spent on orchestration overhead — all routing, state management, and quality checks run in the binary.

See the [spec-to-ship repository](https://github.com/guschiriboga/spec-to-ship) for full documentation.

## Troubleshooting

**`brew install` fails with checksum mismatch or 404**
The SHA256 checksums in `Formula/s2s.rb` are placeholders until the first release pipeline completes. If you see a checksum or download error, the formula has not yet been updated for this release. Check [releases](https://github.com/guschiriboga/spec-to-ship/releases) for the latest published version, or install via npm in the meantime:

```bash
npm install -g spec-to-ship
```

## Maintainer notes

After publishing a new spec-to-ship release, update `Formula/s2s.rb` with the new version and SHA256 checksums. See the [Homebrew distribution guide](https://github.com/guschiriboga/spec-to-ship/blob/main/docs/homebrew-distribution_en.md) for the full release-to-formula checklist.
