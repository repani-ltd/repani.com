# repani.com

The website at https://repani.com, served by GitHub Pages from this
repo (`main`, root, custom domain in `CNAME`).

Its one job is the Go vanity import: `index.html` carries the
`go-import` / `go-source` meta tags that make `go get repani.com/...`
resolve to https://github.com/repani/repani. Everything else on the
page is decoration. Static files only; no build step.

How it is managed (DNS, Pages settings, verification) lives in
`repani-private/ops/`.
