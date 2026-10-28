---
name: research-plan
description: Use when a UX research study needs to be scoped — a brief, a stakeholder ask, or "should we research this?" — before anything is recruited, scripted, or run. Produces a structured research plan (objectives, method, timeline, participant criteria).
---

# research-plan

Turns a brief into a structured research plan.

**REQUIRED BACKGROUND:** research-mode — this skill operates under its Automate / Assist / Protect guardrails.

## What it produces

A plan with:
- **Objectives** — what decision this research informs
- **Method** — how it'll be answered (interviews, usability test, survey, diary study, etc.)
- **Participant criteria** — who needs to be in it, and why
- **Timeline** — recruit → field → synthesis → report, with rough durations
- **Open questions** — anything the brief didn't resolve

Upstream input for `screener` (criteria) and `discussion-guide` (objectives).

## AAP in this skill

- **Automate** — timeline scaffolding, section formatting, turning a messy brief into a structured doc shell.
- **Assist** — drafting objectives and candidate questions from the brief. Surface as a draft, not final — the researcher edits before it's used downstream.
- **Protect** — **method choice**. Don't pick survey vs. interview vs. usability test for the researcher. Lay out what each answers and costs, and hand the choice back. If the brief already states a method, use it — don't second-guess it.

## Workflow

1. Take whatever's given — a one-liner, a Slack message, a full brief. Incomplete input is normal.
2. Draft objectives: what decision does this inform? If unclear, ask one question rather than
   guess — a plan built on the wrong objective is worse than no plan.
3. Lay out method options against the objective (see table). Multiple fit → present the tradeoff
   and stop — Protect, even if the brief implies urgency.
4. Draft participant criteria from the objective — Assist, flagged as a draft to tighten.
5. Scaffold a timeline — Automate.
6. Compile into the plan doc, flagging open questions rather than filling gaps with assumptions.

## Method quick reference

| Method | Answers | Cost |
|---|---|---|
| Moderated interviews | Why, how, what people think/feel | High effort, low N, deep |
| Usability test | Can people do X, where do they get stuck | Medium effort, task-specific |
| Survey | How many, how often, at what rate | Low depth per response, needs volume |
| Diary study | How behavior unfolds over time/context | High effort, longitudinal |
| Unmoderated test | Can people do X, at volume, cheaply | Medium effort, no live probing |

Not the full list — unlisted methods get judged the same way: what does it answer, what does it cost.

## Common mistakes

- Writing objectives that restate the brief instead of naming the decision it informs
  ("understand checkout" isn't an objective — "decide whether to redesign checkout step 3" is).
- Specifying participant criteria before the method is chosen — criteria depend on method.
