---
name: insight-card
description: Use when a single, already-decided research insight needs to become a shareable card — one-liner, evidence, source — for a deck, wiki, or Slack post. Not for deciding which insight matters most.
---

# insight-card

Formats one decided insight into a shareable card. Inherits `research-mode` — see that skill for
the Automate / Assist / Protect (AAP) guardrails this one runs under.

## What it produces

A single card with:
- A plain-language headline (the insight, stated neutrally)
- Supporting evidence (quote + count, same "quotes yes" material as synthesis/report)
- Source (which study, when, sample size)
- No call-to-action or recommendation baked in

## AAP in this skill

By the time this skill runs, the hard call (which insight, what it means) was already made upstream
in `synthesis` or `research-report` — so most of this is packaging.

- **Automate** — layout, formatting, pulling the quote/count/source fields in. Just do it.
- **Assist** — wording the headline so it's readable at a glance without becoming a verdict in
  disguise ("Users hesitate at the price step" is a finding; "Pricing is confusing" sneaks in an
  explanation that may not be supported).
- **Protect** — if asked to pick *which* insight deserves a card out of several candidates, that's
  not this skill's job — hand it back ("which of these felt strongest to the team?") rather than
  ranking importance yourself.

## Workflow

1. Take one already-identified insight (not a pile of themes to choose from).
2. Write a neutral headline — observation, not interpretation.
3. Pull the supporting quote(s)/count and source metadata.
4. Leave off any "so we should..." line — the card states what was found, not what to do about it.
5. If handed multiple insights and asked "which one should be the card," stop — that's a
   prioritization call upstream of this skill (Protect), send it back.

## Common mistakes

- Headline writes the explanation instead of the observation ("Navigation is broken" vs. "4/9
  participants couldn't find X in two attempts").
- Dropping the source/sample size to keep the card clean — this is exactly the context that lets a
  reader judge how much weight to give it; never drop it.
- Treating "make a few cards from this report" as purely Automate — selecting which findings become
  cards is a prioritization call, not a formatting one, unless the report has already decided.
