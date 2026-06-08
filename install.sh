#!/usr/bin/env bash
# install.sh — install stallions and skills from stable into the local Claude Code environment
# Usage:
#   bash install.sh <name>     install a specific agent or skill by name
#   bash install.sh all        install everything
#   bash install.sh --list     list available items without installing

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

AGENTS_SRC="$SCRIPT_DIR/agents"
SKILLS_SRC="$SCRIPT_DIR/skills"

CLAUDE_AGENTS_DIR="$HOME/.claude/agents"
CLAUDE_SKILLS_DIR="$HOME/.claude/skills"
AGENTS_SKILLS_DIR="$HOME/.agents/skills"

# ── catalog ────────────────────────────────────────────────────────────────────
# name | type | src_path | dest_dir | source
declare -a CATALOG=(
  "plan-architect|agent|$AGENTS_SRC/plan-architect.md|$CLAUDE_AGENTS_DIR|custom"
  "plan-implementer|agent|$AGENTS_SRC/plan-implementer.md|$CLAUDE_AGENTS_DIR|custom"
  "ui-design|skill|$SKILLS_SRC/ui-design|$CLAUDE_SKILLS_DIR|custom"
  "shadcn|skill|$SKILLS_SRC/shadcn|$AGENTS_SKILLS_DIR|github:shadcn/ui"
  "tdd|skill|$SKILLS_SRC/tdd|$AGENTS_SKILLS_DIR|github:mattpocock/skills"
  "to-issues|skill|$SKILLS_SRC/to-issues|$AGENTS_SKILLS_DIR|github:mattpocock/skills"
  "to-prd|skill|$SKILLS_SRC/to-prd|$AGENTS_SKILLS_DIR|github:mattpocock/skills"
  "triage|skill|$SKILLS_SRC/triage|$AGENTS_SKILLS_DIR|github:mattpocock/skills"
  "web-design-guidelines|skill|$SKILLS_SRC/web-design-guidelines|$AGENTS_SKILLS_DIR|github:vercel-labs/agent-skills"
)

# ── helpers ────────────────────────────────────────────────────────────────────
list_items() {
  echo "Available items:"
  for entry in "${CATALOG[@]}"; do
    IFS='|' read -r name type _ _ source <<< "$entry"
    printf "  %-28s %-7s  %s\n" "$name" "[$type]" "$source"
  done
}

install_item() {
  local name="$1"
  for entry in "${CATALOG[@]}"; do
    IFS='|' read -r n type src dest _ <<< "$entry"
    if [[ "$n" != "$name" ]]; then continue; fi

    mkdir -p "$dest"

    if [[ "$type" == "agent" ]]; then
      cp "$src" "$dest/"
      echo "  ✓ $name  →  $dest/$(basename "$src")"
    else
      # skill: src is a directory
      cp -r "$src" "$dest/"
      echo "  ✓ $name  →  $dest/$name"
    fi
    return 0
  done

  echo "  ✗ unknown item: $name" >&2
  return 1
}

install_all() {
  echo "Installing all stallions and skills..."
  for entry in "${CATALOG[@]}"; do
    IFS='|' read -r name _ _ _ _ <<< "$entry"
    install_item "$name"
  done
  echo "Done."
}

# ── main ───────────────────────────────────────────────────────────────────────
if [[ $# -eq 0 ]]; then
  echo "Usage:"
  echo "  bash install.sh <name>   install one item"
  echo "  bash install.sh all      install everything"
  echo "  bash install.sh --list   list available items"
  exit 1
fi

case "$1" in
  --list)  list_items ;;
  all)     install_all ;;
  *)       install_item "$1" ;;
esac
