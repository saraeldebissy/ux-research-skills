---
name: recruiting
description: Use when screener responses exist and need to turn into scheduled sessions — outreach messages, candidate tracking, scheduling, and reminders. Not for designing the screener itself.
---

# recruiting

Manages outreach and scheduling against screener responses. Inherits `research-mode` — see that
skill for the Automate / Assist / Protect (AAP) guardrails this one runs under.

## What it produces

- Outreach / invite message templates
- A candidate tracking sheet (qualified, contacted, scheduled, no-show, completed)
- Scheduling logic and reminder templates
- A no-show / backup-candidate plan

## AAP in this skill

- **Automate** — outreach templates, tracking sheet structure, reminder scheduling, calendar logic.
  This is almost entirely admin. Just do it well.
- **Assist** — ranking candidates when there are more qualified respondents than slots (e.g.
  prioritizing for a spread of segments). Surface the ranking logic used, don't silently pick.
- **Protect** — the moment a selection call becomes a judgment call rather than a rule
  ("does this person *really* count as a power user," "do they seem engaged enough to be useful"),
  stop. That's reading a person, not applying a screener rule — hand it back with the borderline
  cases named.

## Workflow

1. Take screener responses (qualified candidates) and the number of slots needed.
2. If qualified count ≤ slots: draft outreach to everyone, Automate.
3. If qualified count > slots: apply a stated rule first (first-qualified, segment quota, random
   draw within segment) — Assist, name the rule used. Only escalate to Protect if the request is to
   hand-pick based on something the screener didn't capture.
4. Generate outreach messages with scheduling link/logic and a clear deadline to respond.
5. Track status per candidate; flag no-shows against a backup list automatically.
6. Draft reminder messages (24hr, 1hr before) — Automate.

## Common mistakes

- Treating "pick the best candidates" as a ranking task when it's actually asking for a
  qualitative read not captured by the screener — that's Protect, not Assist.
- Silently over-recruiting without flagging it — if you pad the invite list beyond slots to buffer
  for no-shows, say so, since it affects how "first come" tracking reads.
- No stated deadline on outreach — always include one, or scheduling drags indefinitely.
