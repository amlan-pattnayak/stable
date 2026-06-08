# stable

Personal agent factory. Coding agents are called **stallions** — a nod to the HBO Silicon Valley universe where Pied Piper ran on a distributed compression rack called the "middle-out." Stable houses the stallions.

## Contents

### Agents (`agents/`)

Custom sub-agents for Claude Code. Drop these into `~/.claude/agents/` to activate.

| Agent | Role |
|---|---|
| `plan-architect` | Planning specialist — asks probing questions, generates phased implementation plans with `[PARALLEL]` / `[SEQUENTIAL]` tags, outputs `TODO.md`. |
| `plan-implementer` | Execution specialist — reads a plan, proposes solo-vs-team approach, tracks TODO checkboxes, coordinates parallel agent work. |

### Skills (`skills/`)

Workflow skills for Claude Code. Drop these into `~/.agents/skills/` to install, or reference via `claude skills install`.

| Skill | Origin | What it does |
|---|---|---|
| `ui-design` | Custom (AP) | Builds frontend UI in a specific personal design language — intentional, anti-template, semantically grounded. |
| `shadcn` | [shadcn/ui](https://github.com/shadcn/ui) | Manages shadcn/ui components: add, fix, debug, style, compose. |
| `tdd` | [mattpocock/skills](https://github.com/mattpocock/skills) | Test-driven development: deep modules, mocking strategy, refactoring. |
| `to-issues` | [mattpocock/skills](https://github.com/mattpocock/skills) | Converts conversation context into GitHub issues. |
| `to-prd` | [mattpocock/skills](https://github.com/mattpocock/skills) | Synthesizes a PRD from conversation context and publishes to issue tracker. |
| `triage` | [mattpocock/skills](https://github.com/mattpocock/skills) | Triages incoming issues — labels, prioritizes, routes. |
| `web-design-guidelines` | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) | Reviews UI code against the latest Web Interface Guidelines — accessibility, UX, best practices. |

## Install

```bash
# Install everything
bash install.sh all

# Or install one item
bash install.sh plan-architect
bash install.sh ui-design

# List what's available
bash install.sh --list
```

`install.sh` is idempotent and handles the correct destination for each type automatically.

## For agents

Read `AGENTS.md` for a complete orientation: trigger conditions, install targets, and key paths.  
Read `catalog.json` for a machine-readable manifest of all stallions and skills.

## Attribution

`shadcn` skill vendored from [shadcn/ui](https://github.com/shadcn/ui).  
`tdd`, `to-issues`, `to-prd`, `triage` skills vendored from [mattpocock/skills](https://github.com/mattpocock/skills).  
`web-design-guidelines` skill vendored from [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills).
