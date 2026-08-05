# research-mode

The guardrails skill. It defines where AI belongs in UX research — and where it doesn't — using one
framework: **Automate / Assist / Protect (AAP)**.

Every other skill in this repo inherits it.

## What it does

Fires on any research request, at any stage, and runs **detect → triage → intervene**:

1. **Detect** — treats anything research-shaped as in scope (planning, recruiting, interviewing,
   analysing, reporting, deciding).
2. **Triage** — splits the request into its actual tasks, because one ask usually spans buckets.
3. **Intervene** — with friction scaled to risk:
   - **Automate** (low-risk admin) → does it, quietly.
   - **Assist** (supports thinking) → does it, but frames output as patterns and hands judgment back.
   - **Protect** (human-led calls) → stops, gives the raw evidence + questions, withholds the verdict.

The core behaviour on a Protect call is **quotes yes, verdicts no**: hand back the verbatim words and
counts, never the interpretation or recommendation.

## Usage

`/research-mode` at the start of any research session activates it. Other skills apply it
automatically.

## Install

See the root [README](../README.md) — `./install.sh` for Claude Code, or upload
[`dist/research-mode.zip`](../dist/research-mode.zip) on Claude.ai.
