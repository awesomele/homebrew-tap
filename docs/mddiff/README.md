# mddiff

*A rendered markdown diff tool. Part of [awesomele's Homebrew tap](../../).*

mddiff renders both versions of a markdown document and diffs the *result*, then highlights changes word-for-word — aligning blocks first, so a heavily rewritten paragraph shows as a clean whole-block replace instead of a scrambled word-salad.

👉 **[View the live change matrix](https://awesomele.github.io/homebrew-tap/mddiff/change-matrix.html)** — rendered in your browser. (Browsing this repo shows only the page *source*, which GitHub doesn't render.)

> **macOS only** (Apple Silicon and Intel). No Windows or Linux build yet.

- **Block-aware** — light edits keep inline green/red word marks; rewritten/added/removed blocks render as clean whole units. Tables diff column-by-column and row-by-row.
- **Two views** — inline (one merged document) and row-aligned side-by-side. Toggle in the page.
- **Diff minimap** — a right-edge ruler with a bar per change; click or drag to jump.
- **Git-aware** — working tree, index (`--staged`), unstaged (`--unstaged`), revisions, or two files on disk.
- **Zero runtime** — a self-contained `bun`-compiled binary; nothing else to install.

## How every change renders — the change matrix

mddiff takes the finest readable rendering for each kind of change, across paragraphs, headings, blockquotes, code blocks, lists, tables of contents, and tables. Every case is a **real rendered diff** and a **CI test** (defined in `spec/matrix.js`).

**[See every case rendered, side by side, live](https://awesomele.github.io/homebrew-tap/mddiff/change-matrix.html)** — 48 cases across 12 sections, with a coverage grid at the top.

## Install

```sh
brew install awesomele/tap/mddiff
```

See the [releases](https://github.com/awesomele/homebrew-tap/releases) for the version history and notes.

## Usage

```sh
mddiff file.md              # HEAD vs working tree
mddiff file.md --staged     # staged changes (--cached too)
mddiff file.md --unstaged   # not-yet-staged changes
mddiff file.md REV          # REV vs working tree
mddiff old.md new.md        # two files on disk
mddiff file.md -s           # open directly in side-by-side
```

The diff opens in your browser, served by a small background daemon that exits once you close the last tab.

## Refreshing the diff

Edit the files and refresh — mddiff diffs the **current** versions, never a stale snapshot:

- **In the browser:** press `Cmd+R`. The reload re-reads both files from disk and re-renders.
- **In the [VS Code extension](https://github.com/awesomele/homebrew-tap/releases):** **save** the file. The diff re-renders automatically for working-tree, unstaged, and revision comparisons (a staged comparison is git-only, so re-run the action to refresh it).

## Notes

- **macOS only** for now (a self-contained `bun`-compiled binary for `darwin-arm64` / `darwin-x64`; it uses `open` to launch the browser). No runtime required.
- License: MIT.
