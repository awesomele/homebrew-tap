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

### [mddiff](docs/mddiff/) — High-Fidelity Markdown Review and Diff for the AI Era

<!-- Add a new tool as its own `### [<tool>](docs/<tool>/) — <one-liner>` section
     here, with a page + screenshots under docs/<tool>/. -->

## How this tap is organized

- `Formula/<tool>.rb` — the install recipe Homebrew reads for each tool.
- `docs/<tool>/` — that tool's page and screenshots.
- [Releases](https://github.com/awesomele/homebrew-tap/releases) — each tool ships
  as a self-contained binary attached to a GitHub release here; `brew upgrade`
  picks up new versions, and each release carries that version's notes.

## License

mddiff is distributed as a free-to-use proprietary developer tool. See `docs/mddiff/README.md` for details.

Third-party open-source dependencies remain governed by their respective licenses.
