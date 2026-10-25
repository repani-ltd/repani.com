# repani.com

The website at https://repani.com, served by GitHub Pages from this
repo (`main` at the root, the `draft` branch at `/_draft/`, custom
domain in `CNAME`).

Its load-bearing job is the Go vanity import: `index.html` carries the
`go-import` / `go-source` meta tags that make `go get repani.com/...`
resolve to https://github.com/repani-ltd/repani. The rest of the site
is made of Repani's own formats: `AGENTS.md` (the entry point for
visiting agents) and `site.txtar` (every source in one file, from
which `pica html` renders the pages before they are committed). No
build step: the served files are the committed files.

Releases of the `repani.com` module -- prebuilt `pica` and `fact`
binaries for linux, macOS and Windows, with checksums -- are at
https://github.com/repani-ltd/repani/releases.

How it is managed (DNS, Pages settings, verification, tagging,
releases) lives in Repani's private ops repo.
