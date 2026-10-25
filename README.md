# repani.com

The website at https://repani.com, served by GitHub Pages from this
repo (`main`, root, custom domain in `CNAME`).

Its load-bearing job is the Go vanity import: `index.html` carries the
`go-import` / `go-source` meta tags that make `go get repani.com/...`
resolve to https://github.com/repani-ltd/repani. The rest of the site
is made of Repani's own formats: pica sources in `src/`, `repani.fact`,
`AGENTS.md` (the entry point for visiting agents) and `site.txtar`
(every source in one file); `docs/build.sh` renders the HTML with
`pica text`. Static files only; nothing runs on the host.

Releases of the `repani.com` module -- prebuilt `pica` and `fact`
binaries for linux, macOS and Windows, with checksums -- are at
https://github.com/repani-ltd/repani/releases.

How it is managed (DNS, Pages settings, verification, tagging,
releases) lives in Repani's private ops repo.
