---
name: screener
description: Use when participant criteria already exist (from a research-plan or a stated target audience) and need to become a screener survey — questions, answer options, and qualify/disqualify logic — before recruiting starts.
---

# screener

Turns participant criteria into a screener survey. Inherits `research-mode` — see that skill for
the Automate / Assist / Protect (AAP) guardrails this one runs under.

## What it produces

A screener with:
- Qualifying questions mapped to each criterion
- Answer options, with the qualifying option(s) marked
- Disqualify logic (which answers end the survey early)
- A "sneaky" ordering note — put the disqualifying answer options in a believable spread, not
  obviously flagged, so people don't pattern-match to "the right answer"

## AAP in this skill

- **Automate** — survey structure, branching/skip logic, formatting. Just produce it.
- **Assist** — question wording. The risk here is leading questions ("Do you struggle with
  checkout?" primes a yes). Draft neutral wording, flag any question that's hard to de-bias.
- **Protect** — if the input criteria are themselves ambiguous or judgment-based ("find power
  users" with no definition of power user), don't invent a threshold. Hand it back to clarify
  against the research-plan rather than guessing a number.

## Workflow

1. Take participant criteria (from `research-plan` or stated directly).
2. For each criterion, draft one screening question — closed-ended, neutral wording, no leading language.
3. Mark which answer(s) qualify vs. disqualify.
4. Scramble the visual order of options so the qualifying answer isn't first or last by default.
5. Add standard screener hygiene: an attention-check or two for longer screeners, estimated completion time.
6. Flag any criterion you couldn't turn into an objective question — e.g. "enthusiastic about the
   product" isn't screenable without a proxy behavior; ask what behavior stands in for it.

## Common mistakes

- Leading wording ("Have you had trouble with X?") — rewrite as neutral ("How often do you do X?").
- Putting the qualifying answer in an obviously privileged position (always first, always the
  longest option) — participants pattern-match to it.
- Screening on self-reported expertise alone ("Are you an expert at X?") without a behavioral
  backup question — people over-report expertise.
