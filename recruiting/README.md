# recruiting

Turns screener responses into scheduled sessions — outreach, tracking, scheduling, reminders.

## What it does

Drafts outreach templates and a candidate tracking sheet, applies a stated selection rule when
there are more qualified candidates than slots, and escalates to a Protect stop only when selection
stops being rule-based and starts being a judgment call the screener didn't capture.

Consumes `screener` output. Feeds a scheduled session into `discussion-guide` / the field work.

## Usage

`/recruiting` with screener responses and the number of slots to fill.

## Install

See the root [README](../README.md) — `./install.sh` for Claude Code, or upload
[`dist/recruiting.zip`](../dist/recruiting.zip) on Claude.ai.
