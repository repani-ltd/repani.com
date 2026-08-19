# repani.com (site)

Static GitHub Pages site for https://repani.com: the Repani Limited
company page plus the project index, served from this repo (`main`,
root, custom domain in `CNAME`).

## Role

A session in this directory is the site's designer and manager.
Before any change, read in this order:

1. this file (invariants and working protocol);
2. `docs/brief.t` -- purpose, audience, voice, design constraints
   and the site map, as set by Pavlos; it is the direction, not a
   suggestion;
3. `docs/log.t` -- append-only decision log; pick up from the last
   entry rather than re-deriving settled questions.

Content sources stay in the project repos (`../repani/*/README.md`,
their `.t` documents); the site links to or renders them, it never
forks the text.

## Invariants

- `index.html` is load-bearing: the `go-import` and `go-source`
  `<meta>` tags are what `go get repani.com/...` reads. Never remove
  or reword them; the module path is `repani.com`, the repo is
  `https://github.com/repani-ltd/repani`, the branch is `main`.
- Module paths must keep 404-ing: no page may exist at `/ascon`,
  `/golay`, `/lz4s`, `/pica`, `/fact`, or any other top-level
  directory of the `repani.com` module -- `go get` walks prefixes
  and must fall through to the root page. Site pages live under
  paths that can never be Go packages (e.g. `/about/`,
  `/projects/`); check `../repani` before adding a new top-level
  path.
- `CNAME` holds the custom domain; `.nojekyll` keeps Pages from
  processing files. Both stay.
- After any change to `index.html`, verify from a clean module cache:
  `GOFLAGS=-mod=mod GOPROXY=direct go get repani.com/pica@latest`
  (see `repani-private/ops/runbooks.t`, "Verify the vanity import").
- No build tooling, no JS, no analytics, no external assets.
  Static hand-written files only; CSS inline or in one local file.

## Working protocol

- Pushing `main` deploys. Design work happens on a branch; preview
  locally (`python3 -m http.server` in the repo root), show the
  result, and merge + push only on explicit go-ahead, one step at
  a time.
- Record each settled design decision in `docs/log.t` in the same
  commit as the change (date, decision, why). Questions go to
  Pavlos one at a time; don't batch.
- GitHub org, Pages settings, DNS: state in
  `../repani-private/ops/github.fact`, procedures in
  `../repani-private/ops/runbooks.t`, agent contract in
  `../repani-private/ops/CLAUDE.md`. Read it before any action
  that touches them; nothing secret lives in this public repo.
- Documentation here is pica (`.t`): `pica spec` is the reference,
  `pica check FILE.t` validates. This file and README.md are the
  Markdown exceptions.
