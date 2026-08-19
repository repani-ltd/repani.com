# repani.com (site)

Static GitHub Pages site for https://repani.com. Rules:

- `index.html` is load-bearing: the `go-import` and `go-source`
  `<meta>` tags are what `go get repani.com/...` reads. Never remove
  or reword them; the module path is `repani.com`, the repo is
  `https://github.com/repani-ltd/repani`, the branch is `main`.
- Longer paths must keep 404-ing (no `prim/`, `pica/`, `fact/`
  pages here): `go get` walks prefixes and must fall through to the
  root page.
- `CNAME` holds the custom domain; `.nojekyll` keeps Pages from
  processing files. Both stay.
- After any change to `index.html`, verify from a clean module cache:
  `GOFLAGS=-mod=mod GOPROXY=direct go get repani.com/pica@latest`
  (see `repani-private/ops/runbooks.t`, "Verify the vanity import").
- No build tooling, no JS, no analytics. Static files only.
