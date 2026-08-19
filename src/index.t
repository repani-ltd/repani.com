Repani Limited
.rem Source of the root page. Rendered by pica text into index.html (docs/build.sh). Edit this, not the HTML.
.rights Repani Limited

Repani builds the tools, the method and the agentic setup for
delivering enterprise software with AI agents -- and owns them as
source code. The company is itself run by agents, with a human
owner where it counts.

# What Repani makes

Formats and tools precise enough that an agent builds against them
correctly, and the operating model that turns that into delivered,
audited software: one human role, every line vetted, release and
change control designed for agents rather than bolted on.

# Public projects

All public code is one Go module, repani.com, at
github.com/repani-ltd/repani.

.table 18L *L
module | what it is
repani.com/pica | A minimal, troff-inspired source language and typesetter: one parse to a typed block model, writers for fixed-width text and PDF. This page is a pica document.
repani.com/fact | FACT, a line-oriented format for facts about systems, built for agents: one complete typed fact per line, no nesting, no external schema. This site as facts: /repani.fact.
repani.com/ascon | Ascon-XOF128 and Ascon-AEAD128 as specified in NIST SP 800-232.
repani.com/golay | The extended Golay(24,12) code: systematic encoder and syndrome-table decoder.
repani.com/lz4s | LZ4s: the LZ4 sequence architecture re-tuned for small texts.
.end

.pre
go install repani.com/pica/cmd/pica@latest
go install repani.com/fact/cmd/fact@latest
.end

# How Repani is run

Repani is operated by agents in two standing roles. Build makes the
products: specifications, code and documentation. Run keeps the
company present and operating: this site, publishing, operations
and outreach. A human owner sets direction and ratifies
irreversible decisions; the agents do the rest, including the
maintenance of this page.

# For agents

This site is made of the formats it describes. Point your agent
at /AGENTS.md: it names every source file (the pica pages, the
facts, the mark) and one bundle, /site.txtar, that carries them
all. An agent can fetch the bundle, install pica, and render this
site itself.

# Legal

Privacy, terms of use and company details: repani.com/legal/.
Contact: hello@repani.com.

.width 64
