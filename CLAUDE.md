# ux-research-skills — Claude Context

A growing collection of UX research skills for Claude Code and Claude.ai.
Covers the full research lifecycle: planning, recruitment, interviews, synthesis, reporting.

Skills are named after their `/slash` trigger (the folder name, the `name:` in frontmatter,
and the trigger must all match).

## Principles

- Skills are **dual-surface** — the same `SKILL.md` runs in Claude Code and Claude.ai.
  Claude Code installs via `install.sh`; Claude.ai uploads the `.zip` in `dist/`.
- A skill may depend on MCP connectors, but it must **check for them and guide the user
  to connect** rather than failing silently.
- Skills should produce research-quality output — structured, sourced, no filler.

## Adding a new skill

1. Create a folder named after the skill / its `/slash` trigger
2. Add `SKILL.md` — full Claude instructions, self-contained
3. Add `scripts/` if shell helpers are needed
4. Run `./install.sh` to test locally in Claude Code
5. Rebuild the Claude.ai bundle: `zip -r dist/<name>.zip <name> -x "*.DS_Store"`
   (the folder MUST sit at the zip root, or Claude.ai won't find the `SKILL.md`)
6. Commit and push

## Current skills

- **research-mode** — the guardrails. Defines AI's role in research via Automate / Assist / Protect.
  Runtime model is detect → triage → intervene, with **split-the-request** behaviour (one ask spans
  buckets — do the safe parts, hand the Protect part back) and graduated friction (quiet on Automate,
  light on Assist, visible on Protect). Protect behaviour = **quotes yes, verdicts no**. Every other
  skill inherits it.
- **research-plan** — brief → objectives, method, participant criteria, timeline. Protect on method choice.
- **screener** — participant criteria → qualifying survey. Protect when criteria are judgment calls with no threshold.
- **recruiting** — screener responses → outreach, tracking, scheduling. Protect when selection becomes a qualitative read.
- **discussion-guide** — objectives → moderated interview / usability-test guide. Protect: it's a guide, not a script.
- **synthesis** — raw transcripts/notes → tagged, clustered themes. The core AAP split in one request; Protect on what it means.
- **research-report** — themes → shareable findings doc. Protect: open questions instead of recommendations.
- **insight-card** — one decided insight → shareable card. Protect if asked to pick which insight matters.

All seven feed each other in lifecycle order: plan → screener + guide → recruiting + fielding →
synthesis → report → insight-card.

- **mobbin-pull** — reference skill, outside the lifecycle. Pulls real-app UI screens from Mobbin
  into an annotated Figma research board for a given feature. Duplicated from `ux-design-skills`
  (same skill lives in both repos — update both if it changes). No AAP split; it's a research-input
  tool, not a judgment-call skill.

## Skills backlog

None currently — all planned skills for v1 are shipped. New skills get added here as they're scoped.
