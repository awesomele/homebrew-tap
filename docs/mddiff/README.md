# mddiff

*The finest readable diff rendering for markdown files.*

## Highlights

- **Clean visual and exhaustive coverage** 👉 **[See here](https://awesomele.github.io/homebrew-tap/mddiff/change-matrix.html)**
- **Two views** — inline and row-aligned side-by-side. Toggle in the page.
- **Auto-refresh** — edits re-render on browser reload (`Cmd+R`) or on save in VS Code.
- **Diff minimap** — a right-edge ruler with a bar per change; click or drag to jump.
- **Git-aware** — working tree, index (`--staged`), unstaged (`--unstaged`), revisions, or two files on disk.
- **Zero runtime** — a self-contained `bun`-compiled binary; nothing else to install.
- **CLI + VS Code** — available as a Homebrew CLI and a VS Code extension.

## Install

```sh
brew install awesomele/tap/mddiff
```

See the [releases](https://github.com/awesomele/homebrew-tap/releases) for the version history and notes.

## Usage

```text
mddiff — rendered markdown diff with green/red marks

  mddiff file.md              HEAD vs working tree   (all changes since last commit)
  mddiff file.md --staged     HEAD vs index          (staged changes; --cached works too)
  mddiff file.md --unstaged   index vs working tree  (changes not yet staged)
  mddiff file.md REV          REV  vs working tree   (e.g. HEAD~1)
  mddiff file.md REV1 REV2    REV1 vs REV2
  mddiff old.md new.md        two files on disk

  --inline                      open in inline view (default: side-by-side)
  -s, --split, --side-by-side   open in side-by-side view (the default)
  -v, --version                 print the version
  -h, --help                    show this help

The opened page also has an Inline / Side-by-side toggle.
```

## Notes

- **macOS only** for now.
- License: MIT.
