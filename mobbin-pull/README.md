# /mobbin-pull

A Claude skill for structured UI design research. Give it a feature name — it breaks it down into sub-components, pulls real screens from Mobbin for each one, and builds an annotated research board directly in Figma.

---

## What it does

1. Decomposes your feature into research lanes (e.g. "ratings & reviews" → distribution bar, written reviews, photo display, AI summary, filters...)
2. Confirms the breakdown with you before searching
3. Searches Mobbin independently for each lane — 5 screens per lane, curated not padded
4. Builds a structured Figma board: one lane per row, analysis on the left, screens on the right with labels and notes

---

## Setup

### Required MCPs
You need two connectors — both are free to connect:

| Connector | What it's for | How to connect |
|-----------|--------------|----------------|
| **Mobbin** | Pulling UI reference screens | Tools panel in Claude.ai → enable Mobbin |
| **Figma** | Building the research board | Tools panel in Claude.ai → enable Figma |

For **Claude Code**: add both to your `.mcp.json`.

Neither is strictly required to start — the skill will warn you and keep going if one is missing. But you'll want both for the full workflow.

### Installing the skill
- **Claude.ai**: first enable **Settings → Capabilities → Code Execution & File Creation**
  (skills won't trigger without it). Then **Settings → Capabilities → Skills → Upload skill**
  → select this `mobbin-pull.zip`.
- **Claude Code**: unzip and place the `mobbin-pull/` folder in `~/.claude/skills/`, then start a new session.

---

## How to use it

```
/mobbin-pull [feature name]
```

**Examples:**
```
/mobbin-pull ratings and reviews
/mobbin-pull checkout flow
/mobbin-pull empty state
/mobbin-pull onboarding
/mobbin-pull search results
/mobbin-pull product detail page
```

**What to expect:**
1. Claude asks for platform if not obvious (iOS / web / both)
2. Claude proposes a lane breakdown — you can add, drop, or rename lanes
3. You confirm → Claude searches Mobbin for each lane
4. Claude asks for your Figma file URL
5. Board is built in Figma → you get a direct link

**Note on screenshots:** Screens appear as labelled placeholders in Figma. Mobbin image URLs are session-based and can't be embedded directly. To fill them in, open the Mobbin links from the chat and drag screenshots into the placeholders manually — takes a few minutes.

---

## Works in
- ✅ Claude.ai (chat)
- ✅ Claude Code
- ❌ Cowork (Figma MCP not supported)

---

Built with [Skills Factory](https://github.com/saraeldebissy) · MIT License
