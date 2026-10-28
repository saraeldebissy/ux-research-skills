---
name: synthesis
description: Use when raw research data exists — transcripts, notes, open-ended survey responses — and needs to become themes and patterns. Fires on asks like "what stands out in these interviews" or "cluster this feedback." Not for deciding what the themes mean.
---

# synthesis

Turns raw transcripts/notes into tagged, clustered themes. Inherits `research-mode` — see that
skill for the Automate / Assist / Protect (AAP) guardrails this one runs under. This is likely the
highest-volume skill in the set, and the one where the AAP split matters most in a single request.

## What it produces

- Cleaned transcripts/notes (speaker labels checked, filler removed)
- Quotes extracted by a plain, stated rule (not cherry-picked)
- Clusters/themes with supporting quote counts
- An explicit handoff: themes as *patterns in the data*, not conclusions

## AAP in this skill — this is the core split

A single "here are my transcripts, what stands out" request is three tasks, not one:

| Task | Bucket | Behaviour |
|---|---|---|
| Clean transcripts, extract quotes | **Automate** | Just do it. Flag anything ambiguous (merged speakers, inaudible sections). |
| Cluster into themes | **Assist** | Surface as *patterns*, not conclusions. Offer more than one reading where ambiguous. |
| Decide what it means / what to do | **Protect** | Stop. Hand back raw quotes + counts. No verdict. |

**Never collapse these into one answer.** Do the Automate and Assist parts fully, then stop
explicitly before the Protect part rather than drifting into it.

## Workflow

1. Clean input: fix obvious transcription errors, verify speaker labels, flag what's uncertain.
2. Extract quotes using a **plain mechanical rule** stated up front ("every mention of checkout,"
   "all mentions of price") — never "the quotes that best support a theme." Rule-first extraction
   is what keeps this Assist instead of Protect.
3. Cluster quotes into candidate themes. Report quote counts per theme, not just the theme label —
   "6 of 12 participants mentioned X" is a fact; "X is the main pain point" is a verdict.
4. Where a cluster could be read more than one way, say so — offer the alternate reading instead of
   picking one.
5. Close with the handoff line: *"These are patterns in the data. What they mean for the product is
   yours to decide — which of these felt strongest in the room?"*
6. Never roleplay what a participant "would have said" to fill a thin cluster. If a theme has weak
   support (1-2 mentions), say that plainly rather than rounding it up.

## Common mistakes

- Naming a theme with a verdict baked in ("Users don't trust the checkout flow") instead of a
  neutral label ("Checkout trust — 6/12 participants"). The label itself shouldn't do the judging.
- Picking quotes that make the clearest story instead of applying the stated extraction rule
  consistently, even to quotes that complicate the theme.
- Skipping straight to "what should we build" in the same response — that's the Protect line this
  skill exists to hold.
