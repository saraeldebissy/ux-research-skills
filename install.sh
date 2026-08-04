#!/bin/bash

# ux-research-skills install script
# Copies skills to ~/.claude/skills/ so Claude Code can find them

SKILLS_DIR="$HOME/.claude/skills"
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo ""
echo "  ux-research-skills installer"
echo "  ─────────────────────────────────"
echo ""

mkdir -p "$SKILLS_DIR"

for skill_dir in "$SOURCE_DIR"/*/; do
  # Skip folders that aren't real skills (no SKILL.md)
  [[ -f "$skill_dir/SKILL.md" ]] || continue

  skill_name=$(basename "$skill_dir")
  target="$SKILLS_DIR/$skill_name"

  if [ -d "$target" ]; then
    echo "  ↻  $skill_name (updating)"
    rm -rf "$target"
  else
    echo "  +  $skill_name (installing)"
  fi

  cp -r "$skill_dir" "$target"
done

echo ""
echo "  ✓ Done. Skills available in Claude Code."
echo ""
echo "  Installed:"
for skill_dir in "$SOURCE_DIR"/*/; do
  [[ -f "$skill_dir/SKILL.md" ]] || continue
  echo "    /$( basename "$skill_dir")"
done
echo ""
echo "  Each skill handles its own auth on first run."
echo ""
