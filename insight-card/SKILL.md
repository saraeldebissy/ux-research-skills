---
name: insight-card
description: Use when a single, already-decided research insight needs to become a shareable card — one-liner, evidence, source — for a deck, wiki, or Slack post. Not for deciding which insight matters most.
---

# insight-card

Formats one decided insight into a shareable card.

**REQUIRED BACKGROUND:** research-mode — this skill operates under its Automate / Assist / Protect guardrails.

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

1. Take one already-identified insight — not a pile of themes to choose from.
2. Write a neutral headline (observation, not interpretation) and pull quote(s)/count/source in.
3. Leave off any "so we should..." line — the card states what was found, not what to do about it.
4. Handed multiple insights with "which one should be the card"? Stop — that's a prioritization
   call upstream of this skill (Protect), send it back.

## Common mistakes

- Headline writes the explanation instead of the observation ("Navigation is broken" vs. "4/9
  participants couldn't find X in two attempts").
- Dropping source/sample size to keep the card clean — that's exactly what lets a reader judge how
  much weight to give it.
- Treating "make a few cards from this report" as purely Automate when the report hasn't already
  decided which findings matter most — selecting is a prioritization call, not a formatting one.
