# repani.com

The website of Repani Limited, at https://repani.com. Its subject is
a way of working, Zero Handoff: every engineer takes their work from
the first conversation to production, and nobody waits for anybody.
The software built this way is the evidence for it; the public code
is at https://github.com/repani-ltd/repani.

The site is served by GitHub Pages from this repo (`main` at the
root, the `draft` branch at `/draft/`, custom domain in `CNAME`).
`AGENTS.md` is the entry point for visiting agents. `site.txtar`
holds every source in one file, from which `pica html` renders the
pages before they are committed. No build step: the served files are
the committed files.

The root page also serves the Go vanity import: `index.html` carries
the `go-import` / `go-source` meta tags that make
`go get repani.com/...` resolve to the module's repository.

How it is managed (DNS, Pages settings, verification, tagging,
releases) lives in Repani's private ops repo.
