# ux-research-skills

Reusable UX research skills for **Claude Code** and **Claude.ai**.

Each skill is a self-contained folder with a `SKILL.md`. The same skill works in both
Claude Code (CLI) and Claude.ai (web / desktop / mobile) — the only difference is how you install it.

Skills cover the full research flow: planning, recruitment, interviews, synthesis, reporting, and more.

---

## Skills

> Skills are added on the go — check back for updates.

---

## Install

### Option A — Claude Code (CLI)

```bash
git clone https://github.com/saraeldebissy/ux-research-skills
cd ux-research-skills
chmod +x install.sh && ./install.sh
```

Skills are copied to `~/.claude/skills/`, available in every project. Re-run `./install.sh`
whenever you pull updates, then start a new Claude Code session to pick them up.

### Option B — Claude.ai (web / desktop / mobile)

1. Turn on the prerequisite first: **Settings → Capabilities → enable Code Execution & File Creation.**
2. Download a bundle from `dist/` → open it on GitHub and click **Download**.
3. **Settings → Capabilities → Skills → Upload skill** → select the `.zip`.
4. Done — type the skill's trigger in any chat.

> On personal / Pro / Max plans, each teammate uploads the `.zip` to their own account.
> When a new version ships, re-download and re-upload.

---

## Requirements

- **Claude Code path:** [Claude Code](https://docs.anthropic.com/en/docs/claude-code) + any MCPs the skill depends on
- **Claude.ai path:** Code Execution + File Creation enabled, plus any connectors the skill needs

---

## Repo layout

```
ux-research-skills/
├── <skill-name>/         # one folder per skill
│   ├── SKILL.md
│   └── README.md
├── dist/
│   └── <name>.zip        # ready-to-upload bundles for Claude.ai
├── install.sh            # copies every skill folder into ~/.claude/skills/
├── CLAUDE.md             # repo context + conventions
└── README.md
```
