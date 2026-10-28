---
name: research-report
description: Use when synthesized themes already exist and need to become a shareable findings document for stakeholders. Not for clustering raw data (use synthesis first) and not for deciding what to build next.
---

# research-report

Turns synthesis output into a shareable findings document.

**REQUIRED BACKGROUND:** research-mode — this skill operates under its Automate / Assist / Protect guardrails.

## What it produces

- A structured report: context/objective, method, key themes (with quote evidence), and an open
  questions section in place of recommendations
- Formatting appropriate to the audience (exec summary vs. detailed appendix)

## AAP in this skill

- **Automate** — document structure, pulling confirmed quotes/counts in from synthesis, formatting
  for the target format (deck, doc, one-pager). Just assemble it.
- **Assist** — drafting a narrative arc that connects themes in a readable order. This shapes how
  the reading *feels*, so flag it as a structural choice, not an evidentiary one — reordering
  themes doesn't change what's true, but it changes what reads as most important.
- **Protect** — **the "so what do we do" section.** A report that ends in a recommendation is
  making the product call for the reader. Instead, close with what the evidence does and doesn't
  cover, and open questions for the team to resolve. Same "quotes yes, verdicts no" rule as
  synthesis — a report inherits it, it doesn't get to relax it because it's more polished.

## Workflow

1. Take synthesis output (themes + quote counts) — don't re-cluster raw data here; if raw
   transcripts show up instead of themes, send back to `synthesis` first.
2. Structure: context → method → themes (each with supporting quotes/counts) → open questions.
3. For each theme, state what the evidence shows and its limits ("6/12 mentioned this, all in the
   checkout-abandoners segment — no data from completers").
4. Do not add a "recommendations" section. If stakeholders expect one, the open-questions section
   is the replacement — frame it as what the team needs to decide, not a fill-in-the-blank verdict.
5. If the findings include anything sensitive (user distress, something that reflects badly on a
   person or team), flag that it needs human judgment on how it's communicated — framing a
   sensitive finding is itself a Protect task, not just formatting it.

## Common mistakes

- Smuggling a recommendation into the "key takeaway" framing of a theme ("users want X" instead of
  "6/12 participants described wanting X; whether to act on it is open").
- Treating the narrative arc (Assist) as license to also decide the implication (Protect) — a good
  story order doesn't make the verdict safe to include.
- Reporting themes with no quote counts — a theme without "how many, in what context" isn't
  checkable, and readers will quietly treat it as weightier than it is.
