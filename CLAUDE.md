# repani.com (site)

Visiting agent? This file is the job description of the agent that
maintains this site. The public entry point for agents is
[AGENTS.md](AGENTS.md).

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
  (see the private ops runbooks, "Verify the vanity import").
- No build step: the served files are the committed files, byte
  for byte. `.github/workflows/pages.yml` only copies (main to `/`,
  the `draft` branch to `/_draft/`); it never renders or rewrites,
  and must not start to. No JS, no analytics, no external assets.
  Site links in `page.tmpl` are relative (`$up`) so a page works at
  both roots. The pages are rendered, not hand-written:
  `site.txtar` is the single source (page.tmpl, index.t.tmpl,
  legal.t.tmpl, data.fact, mark.svg; facts are stated once, in
  data.fact, and the pages reference them) and `pica html -txtar site.txtar -page NAME`
  produces `index.html` / `legal/index.html`; both the archive and
  the rendered pages are committed. Edit the archive, re-render,
  commit. Never edit the HTML by hand.

## Working protocol

- Pushing `main` deploys the live site. Work happens on the `draft`
  branch: render, commit, push `draft`, and it is live at
  https://repani.com/_draft/ within a minute or two (on the Mac a
  local `python3 -m http.server` preview also works). Pushing
  `draft` needs no approval. Merging `draft` into `main` is
  Pavlos's call, one step at a time.
- In a cloud session (Claude Code on the web, from the phone): work
  on `draft` and push it; never push `main`. The SessionStart hook (`.claude/session-start.sh`)
  clones the public repo to `../repani` and installs `pica` from
  it, so rendering and the path check work as on the Mac.
- Record each settled design decision in `docs/log.t` in the same
  commit as the change (date, decision, why). Questions go to
  Pavlos one at a time; don't batch.
- GitHub org, Pages settings, DNS: state, procedures and the agent
  contract live in the private ops repo (on the Mac, located by
  `~/repos/CLAUDE.md`). Read its CLAUDE.md before any action that
  touches them. A cloud session has no copy, so it touches none of
  them: stop and ask. Nothing secret lives in this public repo.
- Documentation here is pica (`.t`): `pica spec` is the reference,
  `pica check FILE.t` validates. This file and README.md are the
  Markdown exceptions.
