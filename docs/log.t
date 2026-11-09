repani.com decision log
.rem Append-only. One entry per settled decision: date, decision, why. Newest
.rem last.

# 2026-08-19

.item Scaffolding: CLAUDE.md carries the role, invariants and working protocol;
docs/brief.t is the direction (Pavlos writes it, agents read it); this log is
append-only. Why: a fresh session must be able to start from three files without
re-deriving settled questions.
.item Site scope: company landing page plus project index (both, not one or the
other). Why: Pavlos, 2026-08-19.
.item Site pages live off paths that can never be Go packages; module paths stay
404. Why: go get walks path prefixes to the root page.
.item Register: restrained engineering house. Radish mark (head-only, favicon
style, not the finger-guns CEO) and palette carry over from the old brand in
~/workspace/main/proxy/static; the radish humour is a single, very light wink
per page, never the theme. System fonts only (old brand's Google Fonts are
external assets). Why: Pavlos, 2026-08-19; the new Repani reads as a quiet
engineering house and the joke lands harder against a serious surround.
.item Audience order: enterprise reader, then go-get engineer, then the
agent-run-company curious. Why: Pavlos, 2026-08-19; it fixes the fold order
(company, index, org).
.item Company statement: "protocols and specifications that agents can be
trusted to build against, such as pica and fact"; the run-by-agents clause is
the headline's second clause. Why: Pavlos set the claim, 2026-08-19; the order
keeps the enterprise reader on the offer before the unusual part.
.item Site map: one page (/) at launch; no further pages until demanded. Why:
Pavlos, 2026-08-19; nothing speculative.
.item Typography, colour, layout (designer's call): paper #FEFAE0 / ink #2B2D42,
Radish Red for links only; Georgia for all text, monospace for module paths;
single column, 38em measure; plain radish mark (no sunglasses) beside the name;
dark mode respected. The one wink is the footer line "Repani is Greek for
radish". Org section: one paragraph stating the principle, no chart. Why: brief
register and audience order, 2026-08-19.
.item Footer: "(c) 2026 Repani Limited" only; the "Greek for radish" line is
removed, so the page now carries no wink beyond the mark itself. Standard links
(privacy etc.) will join the footer when they exist. Why: Pavlos, 2026-08-19.
.item Project index: one entry per module directory (pica, fact, ascon, golay,
lz4s), each with a one-sentence description taken from the package doc and a
source link. Why: Pavlos, 2026-08-19.
.item Intro paragraph: states that specs are small, precise and do not change;
the mechanism (append-only registries, companions) is not explained on the root
page. Why: Pavlos, 2026-08-19; the enterprise reader needs the promise, not the
method.
.item Mark: "Pointed offset" -- bold even outline (3.2 on a 64 grid) in ink
#2B2D42, body an inverted teardrop ending in a point, two leaves off the crown,
three gently curved ridge strokes; flat fill (radish red #E63946, leaf green
#52B788) offset 2 units from the line. One artwork for light and dark (option
D): the ink line stays navy on dark. Same SVG in the header (inline) and
favicon.svg. Drawn from scratch in the idiom of a stock-logo reference Pavlos
supplied; not a copy. Exploration canvas:
https://claude.ai/code/artifact/45b1ccea-e74d-40bb-9fee-ab7a6d974d16 Why:
Pavlos, 2026-08-19.
.item Mark as PDF object: docs/mark/ holds the drawing as two PDF Form XObject
content streams (colour, mono) plus a test page; see docs/mark/README.t. Derived
from the header SVG by a throwaway script (SVG M/C/Q/Z to PDF m/c/h, quadratics
raised to cubics, y flipped by the matrix 1 0 0 -1 0 70). Why: Pavlos asked for
an embeddable object for pica-generated PDFs, 2026-08-19; whether and where pica
places it is open.
.item Mark in pica PDFs: a renderer flag (-mark on pica report and pica pdf),
never a document command; page one only, top-right corner of the type area, 12
mm tall, title block narrowed to keep clear. pica's pdf package gained a generic
Form XObject primitive for it. Why: Pavlos, 2026-08-19; a company imprint is
publishing policy, so it lives where the PDF is made.
.item Second page, /legal/: Privacy, Terms of use, Company on one page, linked
from the footer of every page as three anchors, in the footer's muted colour.
Privacy states only what is true of a static GitHub Pages site. Company details
(registration, office, contact) come from Pavlos before this ships. Why: Pavlos
asked for the standard footer links, 2026-08-19; one page, three anchors, rather
than three pages.
.item Org structure: owner plus two standing agent roles, Build (public
projects: specs, code, docs) and Run (site, publishing, operations, outreach).
No manager agent, no hierarchy among roles; work crossing roles goes to the
owner. Run may split internally (site, marketing, social media, ops) when the
work demands it; one agent until then. The root page's third section states the
two roles. Why: Pavlos, 2026-08-19; a new, simpler structure, not the old
hub-and-spoke.
.item MOCK (branch agentsite, not merged): the site made of its own formats.
Sources are src/index.t and src/legal.t (pica), repani.fact (FACT), AGENTS.md
(the visiting-agent contract; CLAUDE.md and llms.txt point to it); site.txtar
bundles every source in one fetch; docs/build.sh renders the HTML pages (pica
text into a monospace 64-column shell, URLs autolinked) and the bundle. The root
page restates the company as a product company: tools, method and agentic setup,
owned as source code; the bank story is one paragraph marked [pending clearance]
until Pavlos clears it. Why: Pavlos's direction 2026-08-19 -- a distinct site
that is the product, readable by humans and by their agents.
.item Shipped the site-as-its-own-formats design (the agentsite mock, merged
2026-08-19): pica sources, repani.fact, AGENTS.md, llms.txt, site.txtar,
docs/build.sh; prebuilt-binary download route and Apache-2.0 noted on the page.
The bank paragraph is held back as a .rem in src/index.t until Pavlos clears it
(it does appear in site.txtar, which carries the source; move it out of the
source if that is not acceptable). Why: Pavlos, 2026-08-19.
.item 2026-08-20. pica gained an HTML writer (Doc.HTML: one semantic article
fragment) and "pica html -txtar ARCHIVE -page NAME", which assembles a page from
an archive's page.tmpl (Go html/template), NAME.t, data.fact and raw
*.html/*.svg members. The site adopts it: site.txtar is now the single source
(page.tmpl, index.t, legal.t, data.fact, mark.svg); index.html and
legal/index.html are rendered from it; src/, repani.fact, docs/build.sh and
docs/shell.html are retired. Prose URLs became
.link lines (the writer infers nothing). Why: Pavlos, 2026-08-20;
the archive a visitor fetches reproduces the pages exactly, and no shell script
assembles HTML.
.item 2026-08-20. Facts stated once: the pages are now index.t.tmpl and
legal.t.tmpl, text/templates over data.fact (pica html executes them with
render's language and functions, missing key an error); the project table,
install lines, company name, office, contact, links, licence and roles come from
the facts. The copyright year is a fact (company.copyright_year); the site's own
remarks about pica and fact are facts (site.note_*); the rights metadata line is
dropped from the web pages (the page footer carries the notice). Why: Pavlos,
2026-08-20; one statement per fact.
.item 2026-10-25. Draft preview at /_draft/: a Pages workflow
(.github/workflows/pages.yml) copies main's committed files to / and the draft
branch's to /_draft/; robots.txt keeps the draft out of search. The leading
underscore because Go ignores such directories, so the path can never shadow a
repani package. The site links in page.tmpl became relative ($up) so a page
works at both roots; prose .link URLs stay absolute. The brief's "static files,
hand-written; no build tooling" is restated as what it protected since
2026-08-20: no build step, served bytes are committed bytes, the workflow copies
and never renders. Why: Pavlos, 2026-10-25; work on the site from the phone,
pushing draft freely and merging to main when ready.
.item 2026-10-25. The preview path is /draft/, not /_draft/: the deployed
artifact held the draft, but GitHub Pages served nothing under a path beginning
with an underscore (dot paths it serves). /draft/ could be a Go package path, so
it is reserved instead: the repani module may never have a top-level draft
directory, stated in its CLAUDE.md. Why: Pavlos, 2026-10-25, choosing /draft/
over /.draft/ for the cleaner URL.
.item 2026-11-09. MOCK (branch atzenties, not merged): the root page is the
mark, enlarged and centred, over one line in Cypriot Greek, "Δουλεύκουμε με
ατζέντηες" (site.slogan); no header, sections or footer. The go-import and
go-source tags are unchanged and /legal/ still renders, unlinked from the root.
Why: Pavlos, 2026-11-09, who chose the wording.
.item 2026-11-09. Shipped the atzenties mock to main: the root page is the mark
and the one line, and the company statement, project index and org sections
leave the page. This is new direction over the brief's site map and fold order.
/legal/ remains served but is not linked from the root. Why: Pavlos, 2026-11-09.
.item 2026-11-09. Legal notices become three pages, /legal/privacy.html,
/legal/terms.html and /legal/company.html, replacing the single /legal/ page of
2026-08-19, whose anchors never existed in the render (pica emits no heading
ids), so its footer links only reached the top of the page. The root page gains
a footer of those three links, pinned to the foot of the viewport. Why: Pavlos,
2026-11-09; the notices must be reachable from the root.
.item 2026-11-09. The full site (company statement, project index, org section)
is kept on branch full-site, at da6bc4d, the last commit before the root page
became the mark and one line. It will be worked on and released later; the
branch does not deploy. Why: Pavlos, 2026-11-09.
.item 2026-11-09. The contact address is removed from the Company page and from
data.fact: the mailbox does not exist yet. Why: Pavlos, 2026-11-09.
.item 2026-11-09. The root page's line becomes two: "Δουλεύκουν οι ατζέντηες" /
"εμείς μετρούμεν κύματα" (agents do the work, we count the waves;
site.slogan_first and site.slogan_second). No article, single μ and final -ν are
Pavlos's choices. Why: Pavlos, 2026-11-09.
.item 2026-11-09. Light mode only, for now: the dark palette is removed from
page.tmpl, reversing "dark mode respected" of 2026-08-19. Enlarged, the mark's
navy outline had too little contrast on the dark paper. Why: Pavlos, 2026-11-09.
.item 2026-11-09. The second line spells κύμματα, with the double μ of the
Cypriot pronunciation, replacing the single μ set earlier today. Why: Pavlos,
2026-11-09.
.item 2026-11-09. New mark, replacing "Pointed offset" of 2026-08-19: three flat
shapes with no outline or offset fill, a round body tilted 28 degrees to the
right that tapers into one curved tail, and two leaves separated from it by a
gap. Red #C9184A and leaf green #2D9A6B replace the warm #E63946 and #52B788 in
the mark only; the page's link colour is untouched. Same 64 x 70 grid, in
mark.svg and favicon.svg; drawn from scratch. Exploration canvas:
https://claude.ai/artifact/8b9jQQ3CJo8UgHmuAXZbij. Why: Pavlos, 2026-11-09;
outside feedback that the old mark read as a strawberry (body a cone with no
root, ridge strokes reading as seeds and as a face), and a solid shape holds at
favicon size where an outline does not. docs/mark/ still holds the old drawing.
.item 2026-11-09. The logo is the mark followed by "repani" in lowercase, set in
JuliaMono Bold, the face pica uses, chosen over DM Sans: the name then shares a
typeface with every pica document, and a rounded sans would sit too near a
similar existing radish logo. The body stands on the baseline and the tail drops
about as far as the p's descender. The word is outlines in the SVG, so no font
is loaded (JuliaMono is OFL). The root page shows the logo above the two slogan
lines; its title and its h1 (visually hidden, since the logo says it) become
"repani" (site.title). Page headers show the logo as the link home, in place of
the mark and the text "repani.com". site.txtar's mark.svg member is now
logo.svg. Why: Pavlos, 2026-11-09.
.item 2026-11-09. Brand files and icons: docs/mark/ gains logo.svg and mark.svg,
and its PDF streams and test page are redrawn from the new mark, the mono stream
now a solid fill. favicon.ico (16, 32, 48) and apple-touch-icon.png (180, on the
paper colour) join favicon.svg at the root, which is where browsers and iOS look
for them. favicon.svg gets a square viewBox. The copy embedded in pica
(cmd/pica/mark.stream, repani repo) is not touched here and still holds the old
mark. Why: Pavlos, 2026-11-09.
.item 2026-11-09. New brief, replacing that of 2026-08-19: the site's job is to
show within two minutes that Repani is real, what it does and why to believe it.
Mission above the fold, "Make the impossible boring. One engineer. A fleet of
agents."; Fleet Engineer defined on its own page; evidence over adjectives;
English only, so the Greek lines leave the root page when the site is rebuilt.
The site itself is unchanged by this entry. Why: Pavlos, 2026-11-09.
.item 2026-11-09. Site rebuilt to the new brief. The root page is one page in
this order: the two mission lines, the company statement, Fleet Engineer, the
reference, the method, public code, the company. The Greek lines leave and the
page is lang="en". The reference carries no numbers, since none is cleared. No
contact address, since the mailbox does not exist. Why: the brief of 2026-11-09.
.item 2026-11-09. /fleet-engineer/ is the definition's page, rendered from
fleet-engineer.t.tmpl to fleet-engineer/index.html; no top-level directory of
that name exists in the repani module. The definition is one fact
(site.fleet_engineer), opening with "one engineer, a fleet of agents", and both
pages reference it; the page ends with a citation line. Why: the brief asks for
a page that can be cited and for the title never to be read as infrastructure.
.item 2026-11-09. Typography: system fonts only, monospace for the headline,
section labels and module paths, a system serif for prose, because a reader
short of time should not read paragraphs in monospace. One column of 46rem,
section rules, the logo at the top of every page. --muted darkens to #5F6778
(5.4:1 on the paper). The logo, its colours, the paper and the link colour are
unchanged. Why: designer's call, within the brief.
.item 2026-11-09. Project index: twelve modules, each a source link and one
sentence from its package documentation or specification, products first, then
primitives. seal is left out: it is a design document and nothing in it is
built. Why: the brief asks for code an engineer can inspect today.
.item 2026-11-09. Facts: company.statement becomes the brief's statement, and
AGENTS.md follows it. The old statement's claim of ownership goes, and with
company.human_roles and the role facts the page data no longer implies a
headcount. Facts no page uses are removed: the install lines, the Greek lines
and the site.* bookkeeping that had gone stale. project:*.path becomes
project:*.dir, from which the module path and source link are built. Why: the
brief's Never list, and each fact must have a consumer.
.item 2026-11-09. The brief gains a Look section: a typeset term sheet or
specification rather than a landing page, JuliaMono throughout and served from
this site, overriding the system fonts chosen above. Why: Pavlos, 2026-11-09; a
distinct engineering look instead of a templated site.
.item 2026-11-09. Two typefaces, not JuliaMono throughout: JuliaMono for the
headline, labels, tables and module paths, Source Serif 4 for running prose,
both served from this site. Why: Pavlos, 2026-11-09; mono in some places, a fine
text face for reading.
.item 2026-11-09. The brief gains the thesis, "Don't add agents to the team.
Rebuild the team around the agents.", as the first and most prominent section
after the mission, supported by what happened, the factory-electricity precedent
and a table of the usual team against the rebuilt one. Why: Pavlos, 2026-11-09;
the reorganisation, not the agents alone, produced the gain.
.font sans
