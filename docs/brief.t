repani.com brief
.rem Direction for the repani.com site. Set by Pavlos; an agent reads it, does
.rem not write it. Changes arrive as new direction and are logged in log.t.
.by Pavlos Christoforou
.date 2026-11-09

This document is the direction for the site: what it is for, who it is for, how
it should read and look, and what it must never do. The invariants that protect
the Go vanity import live in CLAUDE.md and are not repeated here. It replaces
the brief of 2026-08-19.

# Purpose

Someone the reader trusts has mentioned Repani. In two minutes the site must
show that Repani is real, what it does, and why to believe it. It also indexes
the public projects, and the vanity import served by the root page must keep
working whatever else changes.

# Audience

In order of priority:

.item Senior technology and business leaders at large institutions, and at the
AI companies and investment firms that work with them. Short of time, sceptical,
fluent in banking and enterprise risk.
.item An engineer checking whether the work is real, who will read the code.
.item An agent, through AGENTS.md.

# The message

Above the fold, in this order and these words:

.pre
Make the impossible boring.
One engineer. A fleet of agents.
.end

Then the plain statement of what the company does: Repani takes on the software
institutions have been told cannot be built or replaced, and turns it into
routine work. Agents do the work. A Fleet Engineer directs them and signs for
it.

The confidence is in the claim, never in the adjectives.

# Fleet Engineer

Repani's term, and the site is where it is defined. A Fleet Engineer is one
person who directs a fleet of agents across a whole delivery, vets what they
produce, and signs for it. Always introduce the title together with "one
engineer, a fleet of agents", so that it is not read as server infrastructure.
The definition has its own page so that it can be cited.

# Evidence

Everything claimed is shown or can be checked.

.item The reference: a platform of global importance at a tier-1 global bank,
delivered by agents, with one human role in place of the usual split of
specialists, and every line vetted by a human. The client stays unnamed, and
nothing may identify it: no country, no business line, no product.
.item Numbers (time, team, cost) appear only once Pavlos has cleared each one.
Until then write the sentence without the number.
.item The public code: pica, fact and the other modules, linked, because an
engineer can inspect them today.
.item The method: enough to show that it exists and how it differs. Not the
prompts, the playbooks or the internal setup.

That Repani is itself operated by agents is supporting evidence, stated plainly
and never the headline.

# Voice

Restrained engineering house. Plain declarative sentences; no marketing
register. English only. The radish appears as the logo and nowhere else.

# Site map

.table 22L *L
^path | role
/ | the message, the evidence, the project index, the vanity import
/fleet-engineer/ | the definition
/legal/ | privacy, terms, company
.end

Module paths (/ascon, /golay, /lz4s, /pica, /fact, and any future top-level
directory of the repani.com module) are reserved and must 404. Another page
needs a reader who demands it. The earlier full site is on branch full-site and
may be drawn from.

A contact address appears once the mailbox exists, and not before.

# Look

A distinct engineering look: closer to a beautifully typeset term sheet or
specification than to a landing page. The plainness is the message, and it must
read as deliberate, never unfinished.

.item Numbered sections, a strong type hierarchy, exact spacing, generous
margins. Evidence in tables where a table is the honest form.
.item JuliaMono throughout, matching the logo: Regular and Bold, the two cuts in
pica/pdf/fonts of the public module.
.item Perfect on a phone. An executive will open this from an email.
.item No hero image, gradient, animation, card grid, testimonial, logo strip or
call-to-action button, and nothing else that makes it look like a template.

# Design constraints

.item No build step: the served files are the committed files, byte for byte.
Pages are rendered before commit (pica html), never at deploy; the deploy
workflow only copies (main to /, the draft branch to /draft/). No JavaScript,
analytics, or external assets (fonts, CDNs). A font served from this site is not
external.
.item The font is subset to the characters the site uses and served as woff2.
JuliaMono is a Reserved Font Name under its licence (OFL, in pica/pdf/fonts) and
a subset is a modified version, so the served files carry another family name,
and the licence text is served beside them.
.item The logo, its colours and the paper colour are settled; use them as they
are. Light mode only, for now.

# Done means

A reader with no context can answer these from the page, in two minutes: what
does this company do; why should I believe it; what is a Fleet Engineer. Each
answer must be supported by something on the page.

# Never

.item Remove or reword the go-import / go-source meta tags.
.item Add a page at a module path.
.item Duplicate project documentation here; link to or render the source of
truth in the project repos.
.item Use the word consultant or consulting for anything Repani does.
.item State a headcount, a team's availability, or who holds rights in any
client work.
.item Make statements about the company's future or plans.
.font sans
