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
The end of the software project.
.end

Then the plain statement of what the company does: Repani takes on the software
institutions have been told cannot be built or replaced, and turns it into
routine work. Agents do the work. Fleet Engineers direct them and sign for it.

The confidence is in the claim, never in the adjectives.

# Zero Handoff

Repani's name for the way of working, defined on this site. The first section
after the statement, in these words:

.pre
Zero Handoff.
Everyone is a Fleet Engineer. Nobody waits.
.end

Its meaning, in one sentence: every engineer takes their work from the first
conversation to production, and nobody waits for anybody.

A software project is a chain of handoffs. Take away the handoffs and the
project is gone, which is what the second mission line promises. The
breakthrough to get across is that many Fleet Engineers work in parallel, with
no one blocked waiting for an analyst, a backend or frontend developer, or QA.
Expertise differs; the role does not.

# The thesis

Directly after Zero Handoff, in these words:

.pre
Don't add agents to the team. Rebuild the team around the agents.
.end

Supported, directly beneath it, by:

.item What happened. Yours to write, and the heart of the page: a few short
sentences at most, inspiring, never executive speak. The gist: a live project,
in the middle of normal agile delivery, threw out the way software teams have
worked for decades. Agents added to the old team would never have done it, so
the team itself was rebuilt: everyone a Fleet Engineer, working in parallel,
where there used to be a chain of specialists waiting on each other. The whole
software was rewritten in six months, by less than half the team. The reader
should feel that another way of building has already arrived. Those facts are
the limit: add none.
.item The precedent, briefly: when factories first got electricity, most swapped
the steam engine for a motor and kept the layout, and productivity barely moved
for decades; the gains came when the floor was redesigned around the new power.
Cite Paul A. David, "The Dynamo and the Computer", American Economic Review,
1990.
.item A short table, the usual team against the rebuilt one, stating only what
is said in this brief: who does the work, who answers for it, how many human
roles, who waits for whom. Do not add detail.

The Fleet Engineer is what is left when the team has been rebuilt, and the page
should read that way. Say what changed; never how to get there.

# Fleet Engineer

Repani's term, and the site is where it is defined. A Fleet Engineer takes a
piece of work end to end with a fleet of agents, in parallel with others doing
the same, vets what the agents produce, and signs for it. Never describe the
role as one person doing everything alone. Always make clear at first use that
the fleet is a fleet of agents, so that the title is not read as server
infrastructure. The definition has its own page so that it can be cited.

# What matters most

The way of working is the subject of this site. The Fleet Engineer is the role
that carries it. The software built this way, at the bank and in the public code
alike, is the proof that it works and never the product. A reader who leaves
remembering a module and not the way of working has been failed.

# Evidence

Everything claimed is shown or can be checked.

.item The reference: a platform of global importance at a tier-1 global bank,
delivered by agents, with one human role in place of the usual split of
specialists, and every line vetted by a human. The client stays unnamed, and
nothing may identify it: no country, no business line, no product.
.item Numbers appear only once Pavlos has cleared each one. Cleared: the whole
software rewritten in six months; less than half the team. For any other number,
write the sentence without it.
.item The public code: a small section near the foot of the page, linked,
because an engineer can inspect it today. Proof, not a catalogue.
.item The method: enough to show that it exists and how it differs. Not the
prompts, the playbooks or the internal setup.

That Repani is itself operated by agents is supporting evidence, stated plainly
and never the headline.

# Voice

An engineering house with something to say. Short declarative sentences, few of
them, that make the reader sit up: aspirational, never hype, never corporate. If
a sentence could appear on a consultancy's website, rewrite it. English only.
The radish appears as the logo and nowhere else.

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
.item Two typefaces. JuliaMono, matching the logo, for the headline, section
labels, tables and module paths: Regular and Bold, the two cuts in
pica/pdf/fonts of the public module. Source Serif 4 for all running prose, so
that a reader short of time reads paragraphs in a fine text face.
.item Perfect on a phone. An executive will open this from an email.
.item No hero image, gradient, animation, card grid, testimonial, logo strip or
call-to-action button, and nothing else that makes it look like a template.

# Design constraints

.item No build step: the served files are the committed files, byte for byte.
Pages are rendered before commit (pica html), never at deploy; the deploy
workflow only copies (main to /, the draft branch to /draft/). No JavaScript,
analytics, or external assets (fonts, CDNs). A font served from this site is not
external.
.item Both fonts are subset to the characters the site uses and served from this
site as woff2. Both are under the OFL, and a subset is a modified version: where
the licence reserves a font's name (JuliaMono does, see pica/pdf/fonts; check
Source Serif's), the served file carries another family name. Each licence text
is served beside its font.
.item The logo, its colours and the paper colour are settled; use them as they
are. Light mode only, for now.

# Done means

A reader with no context can answer these from the page, in two minutes: what
does this company do; why should I believe it; what is Zero Handoff; what is a
Fleet Engineer. Each answer must be supported by something on the page.

# Never

.item Remove or reword the go-import / go-source meta tags.
.item Add a page at a module path.
.item Duplicate project documentation here; link to or render the source of
truth in the project repos.
.item Use the word consultant or consulting for anything Repani does.
.item State a headcount, a team's availability, or who holds rights in any
client work.
.item Make statements about the company's future or plans.
.item Explain how Fleet Engineers are able to work in parallel. Say that they
do.
.font sans
