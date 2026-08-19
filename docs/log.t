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
