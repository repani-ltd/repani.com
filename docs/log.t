repani.com decision log
.rem Append-only. One entry per settled decision: date, decision, why. Newest last.

# 2026-08-19

.item Scaffolding: CLAUDE.md carries the role, invariants and
working protocol; docs/brief.t is the direction (Pavlos writes it,
agents read it); this log is append-only. Why: a fresh session
must be able to start from three files without re-deriving
settled questions.
.item Site scope: company landing page plus project index (both,
not one or the other). Why: Pavlos, 2026-08-19.
.item Site pages live off paths that can never be Go packages;
module paths stay 404. Why: go get walks path prefixes to the
root page.
.item Register: restrained engineering house. Radish mark (head-only,
favicon style, not the finger-guns CEO) and palette carry over from
the old brand in ~/workspace/main/proxy/static; the radish humour is
a single, very light wink per page, never the theme. System fonts
only (old brand's Google Fonts are external assets). Why: Pavlos,
2026-08-19; the new Repani reads as a quiet engineering house and
the joke lands harder against a serious surround.
.item Audience order: enterprise reader, then go-get engineer, then
the agent-run-company curious. Why: Pavlos, 2026-08-19; it fixes
the fold order (company, index, org).
.item Company statement: "protocols and specifications that agents
can be trusted to build against, such as pica and fact"; the
run-by-agents clause is the headline's second clause. Why: Pavlos
set the claim, 2026-08-19; the order keeps the enterprise reader on
the offer before the unusual part.
.item Site map: one page (/) at launch; no further pages until
demanded. Why: Pavlos, 2026-08-19; nothing speculative.
.item Typography, colour, layout (designer's call): paper #FEFAE0 /
ink #2B2D42, Radish Red for links only; Georgia for all text,
monospace for module paths; single column, 38em measure; plain
radish mark (no sunglasses) beside the name; dark mode respected.
The one wink is the footer line "Repani is Greek for radish".
Org section: one paragraph stating the principle, no chart. Why:
brief register and audience order, 2026-08-19.
.item Footer: "(c) 2026 Repani Limited" only; the "Greek for radish"
line is removed, so the page now carries no wink beyond the mark
itself. Standard links (privacy etc.) will join the footer when
they exist. Why: Pavlos, 2026-08-19.
.item Project index: one entry per module directory (pica, fact,
ascon, golay, lz4s), each with a one-sentence description taken
from the package doc and a source link. Why: Pavlos, 2026-08-19.
.item Intro paragraph: states that specs are small, precise and do
not change; the mechanism (append-only registries, companions) is
not explained on the root page. Why: Pavlos, 2026-08-19; the
enterprise reader needs the promise, not the method.
.item Mark: "Pointed offset" -- bold even outline (3.2 on a 64
grid) in ink #2B2D42, body an inverted teardrop ending in a point,
two leaves off the crown, three gently curved ridge strokes; flat
fill (radish red #E63946, leaf green #52B788) offset 2 units from
the line. One artwork for light and dark (option D): the ink line
stays navy on dark. Same SVG in the header (inline) and favicon.svg.
Drawn from scratch in the idiom of a stock-logo reference Pavlos
supplied; not a copy. Exploration canvas:
https://claude.ai/code/artifact/45b1ccea-e74d-40bb-9fee-ab7a6d974d16
Why: Pavlos, 2026-08-19.
.item Mark as PDF object: docs/mark/ holds the drawing as two PDF
Form XObject content streams (colour, mono) plus a test page; see
docs/mark/README.t. Derived from the header SVG by a throwaway
script (SVG M/C/Q/Z to PDF m/c/h, quadratics raised to cubics,
y flipped by the matrix 1 0 0 -1 0 70). Why: Pavlos asked for an
embeddable object for pica-generated PDFs, 2026-08-19; whether and
where pica places it is open.
.item Mark in pica PDFs: a renderer flag (-mark on pica report and
pica pdf), never a document command; page one only, top-right
corner of the type area, 12 mm tall, title block narrowed to keep
clear. pica's pdf package gained a generic Form XObject primitive
for it. Why: Pavlos, 2026-08-19; a company imprint is publishing
policy, so it lives where the PDF is made.
.item Second page, /legal/: Privacy, Terms of use, Company on one
page, linked from the footer of every page as three anchors, in
the footer's muted colour. Privacy states only what is true of a
static GitHub Pages site. Company details (registration, office,
contact) come from Pavlos before this ships. Why: Pavlos asked for
the standard footer links, 2026-08-19; one page, three anchors,
rather than three pages.
.item Org structure: owner plus two standing agent roles, Build
(public projects: specs, code, docs) and Run (site, publishing,
operations, outreach). No manager agent, no hierarchy among roles;
work crossing roles goes to the owner. Run may split internally
(site, marketing, social media, ops) when the work demands it; one
agent until then. The root page's third section states the two
roles. Why: Pavlos, 2026-08-19; a new, simpler structure, not the
old hub-and-spoke.
.item MOCK (branch agentsite, not merged): the site made of its own
formats. Sources are src/index.t and src/legal.t (pica), repani.fact
(FACT), AGENTS.md (the visiting-agent contract; CLAUDE.md and
llms.txt point to it); site.txtar bundles every source in one
fetch; docs/build.sh renders the HTML pages (pica text into a
monospace 64-column shell, URLs autolinked) and the bundle. The
root page restates the company as a product company: tools,
method and agentic setup, owned as source code; the bank story is
one paragraph marked [pending clearance] until Pavlos clears it.
Why: Pavlos's direction 2026-08-19 -- a distinct site that is the
product, readable by humans and by their agents.
.item Shipped the site-as-its-own-formats design (the agentsite
mock, merged 2026-08-19): pica sources, repani.fact, AGENTS.md,
llms.txt, site.txtar, docs/build.sh; prebuilt-binary download
route and Apache-2.0 noted on the page. The bank paragraph is held
back as a .rem in src/index.t until Pavlos clears it (it does
appear in site.txtar, which carries the source; move it out of the
source if that is not acceptable). Why: Pavlos, 2026-08-19.
