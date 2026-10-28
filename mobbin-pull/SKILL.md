---
name: mobbin-pull
description: Pull curated UI references from Mobbin for any feature, decompose it into sub-component lanes, and push a structured annotated research board to Figma. Trigger on "/mobbin-pull [feature]", "pull Mobbin examples", "I'm designing [feature]", "how do apps handle [X]", "UI patterns for [X]", "design research for [feature]", or any time a designer wants real-world reference before designing. Always use this skill — never answer from memory or skip Mobbin.
---

# /mobbin-pull

Decompose a feature into research lanes → confirm with user → search Mobbin per lane → build a structured annotated board directly in Figma.

---

## Invocation

```
/mobbin-pull [feature name]
```

Examples:
- `/mobbin-pull ratings and reviews`
- `/mobbin-pull checkout flow`
- `/mobbin-pull empty state`
- `/mobbin-pull onboarding`

---

## Step 0 — MCP Availability Check

Check for both MCPs at invocation. Neither blocks execution — inform once and continue.

**Mobbin MCP** — Check if `Mobbin:search_screens` is available.

If unavailable, use `suggest_connectors` to offer the Mobbin connection directly in chat. Then say:
> "⚠️ Mobbin isn't connected yet — I won't be able to pull real screens. You can connect it above, or:
> - **Claude.ai**: enable the Mobbin connector in your tools panel
> - **Claude Code**: add the Mobbin MCP to your `.mcp.json`
>
> I'll keep going with the decomposition — once you're connected, just confirm and I'll start searching."

Then continue — proceed through decomposition and confirm with the user. Don't stop.

**Figma MCP** — Do not check yet. Only check when the user is ready to push to Figma (Step 4). No need to surface it earlier.

---

## Step 1 — Clarify Platform (if needed)

If platform isn't specified, ask once:

> "Are you designing for **iOS**, **web**, or both?"

For common consumer/ecomm features, default to iOS. Don't over-ask.

---

## Step 2 — Decompose into Lanes

Break the feature into its sub-components. Each lane = one distinct UI element or pattern area.

**Simple features** (e.g. "empty state", "quantity stepper") — 2–3 lanes, proceed directly without asking.

**Complex features** (e.g. "ratings and reviews", "checkout", "onboarding") — decompose into 4–8 lanes covering every meaningful sub-component.

**Example decomposition for Ratings & Reviews:**
- Rating Score + Recommend Rate
- Rating Distribution Bar
- Written Review Display
- Review Photos / Media
- AI / Auto Summary
- Filter & Sort UI
- Sub-ratings (Fit, Quality, etc.)
- Review Submission Flow (if requested)

Present the breakdown and ask:
> "Here's how I'm breaking this down:
> 1. [Lane name]
> 2. [Lane name]
> ...
> Anything to add, drop, or rename before I start searching?"

Wait for confirmation. This is the only gate before execution.

---

## Step 3 — Search Mobbin per Lane

Once confirmed, search each lane independently. Never batch lanes into one search.

**Per lane:**
- Run minimum 2 searches: the lane term + a synonym or adjacent pattern
- Target 5 screens per lane. Keep up to 7 if additional screens are notably different. Accept fewer than 5 if Mobbin genuinely doesn't have relevant results — don't pad with weak screens.
- Always examine actual images — never describe from metadata alone

**Tool selection:**
- `Mobbin:search_screens` — default for individual UI elements and screens
- `Mobbin:search_flows` — for multi-step sequences (submission flows, checkout steps)
- `Mobbin:search_sections` — for web UI sections

If a search returns weak results, try one more with different terms. If still weak, note it in the lane analysis and move on.

---

## Step 4 — Check Figma MCP

Before building, verify `Figma:use_figma` is available.

**If unavailable**, use `suggest_connectors` to offer the Figma connection directly in chat. Then say:
> "⚠️ Figma isn't connected yet — I have all the research ready but can't build the board. You can connect it above, or:
> - **Claude.ai**: enable the Figma connector in your tools panel
> - **Claude Code**: add the Figma MCP to your `.mcp.json`
>
> Once connected, paste your Figma file URL and I'll build the board from here."

**If available**, ask for the Figma file URL if not already provided, then proceed.

---

## Step 5 — Build the Figma Board

Extract the `fileKey` from the Figma URL and use `Figma:use_figma` to build the board.

### Board Structure

Create a master frame named **"[Feature Name] — Design Research"** on the current page. Lanes stack vertically with 80px gap between them.

---

### Lane Block Layout

Each lane follows this exact structure:

```
┌──────────────────────────────────────────────────────────────────────────────┐
│ LANE TITLE  (e.g. "Rating Distribution Bar")                                 │
├─────────────────────────┬────────────────────────────────────────────────────┤
│                         │  Brand A       Brand B       Brand C       ...     │
│  Analysis paragraph     │  ┌──────────┐  ┌──────────┐  ┌──────────┐        │
│                         │  │          │  │          │  │          │        │
│  Opinionated, readable. │  │  375px   │  │  375px   │  │  375px   │  ...  │
│  Covers what differs    │  │  screen  │  │  screen  │  │  screen  │        │
│  across the screens,    │  │          │  │          │  │          │        │
│  what works, what       │  └──────────┘  └──────────┘  └──────────┘        │
│  doesn't, and what      │  Pattern name  Pattern name  Pattern name          │
│  to take away.          │  Short note    Short note    Short note            │
│                         │                                                    │
└─────────────────────────┴────────────────────────────────────────────────────┘
```

**Left column — Analysis**
- Width: 340px, background `#FFFFFF`, corner radius 8px, padding 24px
- Lane title: 18px, weight 700, `#111111`
- Analysis paragraph: 13px, weight 400, `#333333`, line height 1.6
- Write 3–6 sentences. Cover: how apps differ, what the dominant pattern is, what works, what's weak, one concrete takeaway. Senior designer notes — opinionated and useful, not descriptive.

**Right column — Screens**
- Screens in a horizontal row, left-aligned, 24px gap between screens
- Per screen:
  - **Brand name** — above, 12px, weight 600, `#111111`
  - **Screen frame** — 375px wide, height proportional (~812px for full screens, shorter for partials). Placeholder rectangle `#E8E8E8` fill, corner radius 6px, with app name labeled inside.
  - **Pattern name** — below, 12px, weight 600, `#444444`. Specific variant (e.g. "Histogram — tap to filter", "Collapsed by default")
  - **Short note** — below pattern name, 11px, weight 400, `#777777`, max 2 lines. One specific observation.

---

### Board Header

- **Title:** Feature name, 32px, weight 700, `#111111`
- **Meta line:** Platform · Date · "/mobbin-pull" — 13px, `#999999`
- 60px gap between header and first lane

---

### Visual Styling

- Board background: `#F2F2EF` (warm off-white)
- Lane block background: `#F9F9F7`, corner radius 12px, no stroke, padding 32px
- Left analysis column: `#FFFFFF`, corner radius 8px
- Screen placeholders: `#E8E8E8` fill, corner radius 6px
- Lane title sits above the two-column split, full width, 16px margin below

---

### After Building

Share the Figma link and set expectations clearly:

> "Board is ready → [Figma link]
> [X] lanes · [Y] screens total
>
> Screens appear as labelled placeholders — Mobbin image URLs are session-based and can't be embedded directly into Figma. To fill them in: open the Mobbin links from our conversation and drag the screenshots into the placeholders manually. Should take a few minutes."

---

## Tone

Opinionated throughout. Each analysis paragraph should help the designer make a decision — not just describe what they can already see. Short sentences. Specific over general.

---

## Notes

- Search each lane independently — broad searches produce weak mixed results
- If a lane has fewer than 3 relevant screens after two searches, write the analysis based on what exists and note the limited sample
- Never skip the decomposition confirmation — it's the only user input between invocation and Figma output
- This skill runs in Claude.ai and Claude Code. Figma export requires Figma MCP connected in whichever environment is active. Cowork does not support Figma MCP.
