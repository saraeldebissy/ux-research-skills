# synthesis

Turns raw transcripts, notes, or open-ended responses into tagged, clustered themes.

## What it does

Cleans input and extracts quotes by a stated rule (Automate), clusters into themes framed as
patterns with quote counts, never verdicts (Assist), then stops explicitly before deciding what the
themes mean (Protect) — handing back raw quotes, counts, and open questions instead.

This is the skill most requests collapse into one ask ("here's my data, what should we do") — it's
built specifically to split that into its three real parts instead of answering all of it at once.

Consumes transcripts/notes from fielding. Feeds `research-report`.

## Usage

`/synthesis` with transcripts, notes, or raw feedback to cluster.

## Install

See the root [README](../README.md) — `./install.sh` for Claude Code, or upload
[`dist/synthesis.zip`](../dist/synthesis.zip) on Claude.ai.
