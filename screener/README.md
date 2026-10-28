# screener

Turns participant criteria into a screener survey — qualifying questions, answer options, and
disqualify logic.

## What it does

Drafts neutral-worded screening questions from criteria, with qualify/disqualify logic and answer
order scrambled so participants can't pattern-match to "the right answer." Stops and asks rather
than guessing when a criterion is a judgment call with no clear threshold (e.g. "power user").

Consumes `research-plan`'s participant criteria. Feeds `recruiting`.

## Usage

`/screener` with a set of participant criteria, or point it at a research plan.

## Install

See the root [README](../README.md) — `./install.sh` for Claude Code, or upload
[`dist/screener.zip`](../dist/screener.zip) on Claude.ai.
