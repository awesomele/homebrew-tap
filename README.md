# homebrew-tap

Homebrew tap for **mddiff** — a rendered markdown diff tool.

mddiff renders both versions of a markdown document and diffs the *result*, then
highlights changes word-for-word — aligning blocks first, so a heavily rewritten
paragraph shows as a clean whole-block replace instead of a scrambled word-salad.

- **Block-aware** — unchanged blocks pass through; light edits keep inline
  green/red word marks; rewritten/added/removed blocks render as clean whole
  units. Tables diff column-by-column and row-by-row.
- **Two views** — inline (one merged document) and row-aligned side-by-side
  (old left, new right, matching blocks lined up). Toggle in the page.
- **Diff minimap** — a right-edge ruler with a tick per change; click or drag to
  jump.
- **Git-aware** — working tree, index (`--staged`), unstaged (`--unstaged`),
  arbitrary revisions, or two files on disk.
- **Zero runtime** — a self-contained `bun`-compiled binary; nothing else to
  install.

## Install

```sh
brew install awesomele/tap/mddiff
```

See the [releases](https://github.com/awesomele/homebrew-tap/releases) for the
version history and notes.

## Usage

```sh
mddiff file.md              # HEAD vs working tree
mddiff file.md --staged     # staged changes (--cached too)
mddiff file.md --unstaged   # not-yet-staged changes
mddiff file.md REV          # REV vs working tree
mddiff old.md new.md        # two files on disk
mddiff file.md -s           # open directly in side-by-side
```

The diff opens in your browser, served by a small background daemon that exits
once you close the last tab.

## Notes

- **macOS only** for now (the binary is a self-contained `bun`-compiled
  executable for `darwin-arm64` / `darwin-x64`; it uses `open` to launch the
  browser). No runtime is required — bun and the dependencies are embedded.
- License: MIT.
