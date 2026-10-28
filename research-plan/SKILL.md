---
name: research-plan
description: Use when a UX research study needs to be scoped — a brief, a stakeholder ask, or "should we research this?" — before anything is recruited, scripted, or run. Produces a structured research plan (objectives, method, timeline, participant criteria).
---

# research-plan

Turns a brief into a structured research plan. Inherits `research-mode` — see that skill for the
Automate / Assist / Protect (AAP) guardrails this one runs under.

## What it produces

A plan with:
- **Objectives** — what decision this research informs
- **Method** — how it'll be answered (interviews, usability test, survey, diary study, etc.)
- **Participant criteria** — who needs to be in it, and why
- **Timeline** — recruit → field → synthesis → report, with rough durations
- **Open questions** — anything the brief didn't resolve

This plan is the upstream input for `screener` (participant criteria) and `discussion-guide`
(objectives).

## AAP in this skill

- **Automate** — timeline scaffolding, section formatting, turning a messy brief into a structured doc shell.
- **Assist** — drafting objectives and candidate questions from the brief. Surface as a draft, not final — the researcher edits before it's used downstream.
- **Protect** — **method choice**. Don't pick survey vs. interview vs. usability test vs. "don't research this yet" for the researcher. Lay out what each method answers and what it costs (time, sample size, depth), and hand the choice back. If the brief already states a method, use it — don't second-guess a decision that was already made.

## Workflow

1. Take whatever's given — a one-line ask, a Slack message, a stakeholder brief. Don't wait for a complete brief; incomplete input is normal for this stage.
2. Draft objectives: what decision is this research meant to inform? If the brief doesn't say, ask one question rather than guessing — a plan built on a wrong objective is worse than no plan.
3. Lay out method options against the objective (see table). If multiple fit, present the tradeoff and stop — Protect.
4. Draft participant criteria from the objective ("who would actually have this experience") — Assist, flagged as a draft for the researcher to tighten.
5. Scaffold a timeline — Automate, just produce it.
6. Compile into the plan doc. Flag open questions explicitly rather than silently filling gaps with assumptions.

## Method quick reference

| Method | Answers | Cost |
|---|---|---|
| Moderated interviews | Why, how, what people think/feel | High effort, low N, deep |
| Usability test | Can people do X, where do they get stuck | Medium effort, task-specific |
| Survey | How many, how often, at what rate | Low depth per response, needs volume for signal |
| Diary study | How behavior unfolds over time/context | High effort, longitudinal |
| Unmoderated test | Can people do X, at volume, cheaply | Medium effort, no live probing |

This table is a starting reference, not the full list — unlisted methods get judged the same way:
what does it answer, what does it cost.

## Common mistakes

- Picking the method yourself because the brief implies urgency — urgency is a reason to surface
  the tradeoff faster, not a reason to skip the Protect step.
- Writing objectives that restate the brief instead of naming the decision it informs ("understand
  checkout" isn't an objective — "decide whether to redesign checkout step 3" is).
- Over-specifying participant criteria before the method is chosen — criteria depend on method.
