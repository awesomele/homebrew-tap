# mddiff — high-fidelity rendered Markdown diff

**Boost Markdown review productivity in the AI age.**

## Demo

See mddiff on a real document — a two-version operations handbook diffed end to end, with inline edits, list and table changes, code blocks, rewritten paragraphs, and added/removed sections side by side:

👉 **[View the live rendered diff](https://awesomele.github.io/homebrew-tap/mddiff/polaris-handbook.diff.html)**

## Why mddiff

Coding agents now generate and modify more Markdown: plans, specs, skills, rules, READMEs, changelogs, and implementation notes.

That makes human review more important, not less. Reviewers need a clear view of what changed, without spending their time and attention decoding Markdown syntax noise or chasing unstable rendered previews.

mddiff boosts Markdown review productivity through clearer diffs, broader Markdown coverage, workflow-native access, and Git-aware comparison support.

## Highlights

- **Clear, human-friendly review** — review the rendered document change instead of decoding Markdown syntax or noisy word diffs.  
- **High-fidelity Markdown coverage** — keeps complex changes clear across inline edits, links, paragraphs, lists, tables, code blocks, rewritten sections, and larger structural changes. 👉 **[See here](https://awesomele.github.io/homebrew-tap/mddiff/change-matrix.html)**
- **File comparison and Git awareness** — compare selected Markdown files directly and Git-backed changes across working tree edits, staged changes, unstaged changes, revisions, and commit pairs.
- **Two review modes** — inline diff for document-flow review, and row-aligned side-by-side diff for structured comparison.
- **Auto-refresh** — edits re-render on browser reload (`Cmd+R`) 
- **CLI + VS Code** — use the same rendered diff from the editor, terminal, scripts, or coding-agent workflows.

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
