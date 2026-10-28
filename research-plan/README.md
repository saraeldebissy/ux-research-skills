# research-plan

Turns a brief into a structured research plan — objectives, method, participant criteria, timeline.

## What it does

Takes whatever's given (a one-liner, a Slack message, a full brief) and produces a plan doc. Drafts
objectives and a timeline automatically, but stops on **method choice** — survey vs. interviews vs.
usability test is a Protect call, not something this skill decides for you.

Output feeds `screener` (participant criteria) and `discussion-guide` (objectives).

## Usage

`/research-plan` with a brief, an ask, or a research question.

## Install

See the root [README](../README.md) — `./install.sh` for Claude Code, or upload
[`dist/research-plan.zip`](../dist/research-plan.zip) on Claude.ai.
