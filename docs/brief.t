repani.com brief
.rem Direction for the repani.com site. Set by Pavlos; an agent reads it, does not write it. Changes arrive as new direction and are logged in log.t.
.by Pavlos Christoforou
.date 2026-08-19

This document is the direction for the site: what it is for, who
it is for, how it should read and look, and what it must never do.
The invariants that protect the Go vanity import live in CLAUDE.md
and are not repeated here.

# Purpose

Two jobs, one site: the company page for Repani Limited, and the
index of its public projects. The vanity import is served by the
root page and is the one thing that must keep working whatever
else changes.

# Audience

TO BE SET.

# Voice

Restrained engineering house. Plain declarative sentences; no
marketing register. The radish (the name means radish in Greek)
appears as a small mark and at most one very light wink per page;
it is never the theme. Set 2026-08-19.

# Site map

.table 14L *L
path | role
/ | landing: company, vanity import, project index
.end

Module paths (/ascon, /golay, /lz4s, /pica, /fact, and any future
top-level directory of the repani.com module) are reserved and
must 404. Further pages: TO BE SET.

# Design constraints

.item Static files, hand-written; no build tooling, JavaScript,
analytics, or external assets (fonts, CDNs).
.item Typography, colour, layout: TO BE SET.

# Never

.item Remove or reword the go-import / go-source meta tags.
.item Add a page at a module path.
.item Duplicate project documentation here; link to or render the
source of truth in the project repos.
