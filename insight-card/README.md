# insight-card

Formats a single, already-decided research insight into a shareable card.

## What it does

Packages one insight into a headline + evidence + source card. Keeps the headline neutral
(observation, not explanation) and leaves off any recommendation. If asked to choose *which*
insight out of several deserves a card, it hands that prioritization call back rather than ranking
importance itself.

Consumes a single insight from `research-report` or `synthesis`. Standalone, reusable output.

## Usage

`/insight-card` with one insight, its evidence, and source.

## Install

See the root [README](../README.md) — `./install.sh` for Claude Code, or upload
[`dist/insight-card.zip`](../dist/insight-card.zip) on Claude.ai.
