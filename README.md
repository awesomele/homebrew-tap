# homebrew-tap

Homebrew tap for **mddiff** — a rendered markdown diff tool.

mddiff renders both versions of a markdown document and diffs the *result*:
block-aware highlighting (a rewritten paragraph shows as a clean whole-block
replace instead of a word-salad), with inline and row-aligned side-by-side
views, opened in your browser. Git-aware (`--staged`, `--unstaged`, revisions).

## Install

```sh
brew tap awesomele/tap
brew install mddiff
```

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
