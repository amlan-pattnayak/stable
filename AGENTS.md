# AGENTS.md

Guidance for coding agents working in or consuming this repository.

## What this repo is

`stable` is a personal agent factory. It ships two types of artifacts:

| Type | Directory | Installs to |
|---|---|---|
| **Stallions** (sub-agents) | `agents/` | `~/.claude/agents/` |
| **Skills** | `skills/` | see below |

Skill install targets vary by type:
- `ui-design` → `~/.claude/skills/ui-design/` (custom, global skill)
- all others → `~/.agents/skills/<name>/` (third-party skill manager)

## Quick reference — stallions

| Name | Invoke when | Model |
|---|---|---|
| `plan-architect` | User requests a plan for a new feature, refactor, or significant change | `opus` |
| `plan-implementer` | User has a plan and wants it executed; handles solo or agent-team orchestration | `inherit` |

## Quick reference — skills

| Name | Invoke when |
|---|---|
| `ui-design` | Building any frontend UI — web components, pages, marketing sites, dashboards |
| `shadcn` | Working with shadcn/ui components: adding, styling, debugging, composing |
| `tdd` | Writing tests or setting up a TDD workflow for a module |
| `to-issues` | Converting a conversation or plan into GitHub issues |
| `to-prd` | Synthesizing a PRD from the current conversation and publishing it |
| `triage` | Triaging, labeling, or routing incoming issues |
| `web-design-guidelines` | Reviewing UI code against Web Interface Guidelines / accessibility / best practices |

## Installing

Run `install.sh` from this directory. It handles both agent and skill destinations.

```bash
# Install one item
bash install.sh plan-architect
bash install.sh ui-design

# Install everything
bash install.sh all

# List available items without installing
bash install.sh --list
```

The script is idempotent — safe to run multiple times.

## Catalog

`catalog.json` is a machine-readable manifest of everything in this repo. Read it when
you need to enumerate available items, check types, or verify sources.

## Key paths

```
stable/
├── AGENTS.md          ← you are here
├── catalog.json       ← machine-readable manifest
├── install.sh         ← idempotent install script
├── README.md          ← human-readable overview + attribution
├── agents/
│   ├── plan-architect.md
│   └── plan-implementer.md
└── skills/
    ├── ui-design/
    ├── shadcn/
    ├── tdd/
    ├── to-issues/
    ├── to-prd/
    ├── triage/
    └── web-design-guidelines/
```
