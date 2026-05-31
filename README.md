# awesomele's Homebrew tap

A [Homebrew](https://brew.sh) tap for the command-line tools published by
**awesomele**. Install any of them with one command:

```sh
brew install awesomele/tap/<tool>
```

…or tap once and install by short name:

```sh
brew tap awesomele/tap
brew install <tool>
```

## Tools

### [mddiff](docs/mddiff/) — rendered markdown diff

Renders both versions of a markdown document and diffs the *result*, then shows it
inline or row-aligned side-by-side in your browser. Block-aware, so a rewritten
paragraph reads as a clean whole-block replace instead of scrambled word-salad.
**macOS only.**

```sh
brew install awesomele/tap/mddiff
```

[**Screenshots & usage →**](docs/mddiff/)

<!-- Add a new tool as its own `### [<tool>](docs/<tool>/) — <one-liner>` section
     here, with a page + screenshots under docs/<tool>/. -->

## How this tap is organized

- `Formula/<tool>.rb` — the install recipe Homebrew reads for each tool.
- `docs/<tool>/` — that tool's page and screenshots.
- [Releases](https://github.com/awesomele/homebrew-tap/releases) — each tool ships
  as a self-contained binary attached to a GitHub release here; `brew upgrade`
  picks up new versions, and each release carries that version's notes.

## License

MIT (per tool; see each tool's page).
