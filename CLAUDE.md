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

> None yet — skills are added on the go.

## Skills backlog

- research-plan — scaffold a research plan from a brief
- discussion-guide — generate a moderated interview guide
- synthesis — tag and cluster raw notes into themes
- research-report — turn themes into a shareable findings doc
- screener — write a participant screener survey
- insight-card — format a single insight into a shareable card
