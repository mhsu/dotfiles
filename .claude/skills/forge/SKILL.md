---
name: forge
description: Build the machine that builds the machines. Audits the entire Claude Code setup — skills, CLAUDE.md files, memory, agent architecture — identifies gaps and improvement opportunities, then executes the improvements. Use when you want to improve how you work with Claude, capture patterns from past sessions, create new skills, or rethink how work is decomposed into agents.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash
---

You are doing meta-work: improving the system that runs all other work. Think like a staff engineer auditing a platform, not a developer adding a feature.

Read these reference files first:
- `${CLAUDE_SKILL_DIR}/audit.md` — how to evaluate skills, memory, and CLAUDE.md files
- `${CLAUDE_SKILL_DIR}/agent-patterns.md` — when and how to decompose work into subagents
- `${CLAUDE_SKILL_DIR}/skill-patterns.md` — what makes a skill worth building and how to write it well

## Your four modes

Run whichever modes are relevant. If called with no arguments, run all four and present findings before executing anything.

### Mode 1: Capture — extract patterns from recent work

1. Read all memory files in `~/.claude/projects/*/memory/` and recent `context.md` files across active projects
2. Look for: repeated manual steps, decisions made more than once, problems that recurred, preferences stated but not yet saved
3. For each pattern found:
   - If it belongs in memory → write or update the relevant memory file and update MEMORY.md
   - If it's a reusable workflow → propose as a new skill
   - If it's a project-specific rule → propose adding to that project's CLAUDE.md

### Mode 2: Audit — evaluate what exists

Scan and evaluate everything:

```bash
# Global skills
ls ~/.claude/skills/

# Project skills (current dir)
ls .claude/skills/ 2>/dev/null

# Global CLAUDE.md
cat ~/.claude/CLAUDE.md

# Memory index
cat ~/.claude/projects/*/memory/MEMORY.md 2>/dev/null

# Project CLAUDE.md files
find . -name "CLAUDE.md" -not -path "*/node_modules/*" 2>/dev/null
```

For each skill, evaluate against the criteria in `${CLAUDE_SKILL_DIR}/audit.md`.
For each CLAUDE.md, check: is it still accurate? Is anything stale? Are there gaps?
For memory, check: is anything contradicted by current code or recent decisions?

Produce a prioritized list:
```
CRITICAL  [file]  [issue]
HIGH      [file]  [issue]
MEDIUM    [file]  [issue]
LOW       [file]  [issue]
```

### Mode 3: Architect — find agent decomposition opportunities

Look at existing skills and workflows and ask:
- Which skills do too many things? (Should be split)
- Which skills always chain together? (Should be a parent skill that forks children)
- Which workflows have independent parallel steps? (Should run as concurrent subagents)
- Which steps need isolation so mistakes don't affect the main session? (`context: fork`)

See `${CLAUDE_SKILL_DIR}/agent-patterns.md` for specific patterns.

### Mode 4: Build — propose, then execute

**Never write anything without user confirmation first.**

After running Modes 1-3, present a single consolidated proposal table:

```
| # | File | What | Why |
|---|------|------|-----|
| 1 | design/gotchas.md | Add DATEONLY timezone gotcha | Bit us twice this session |
| 2 | context.md        | Full update                 | Dated 3 weeks ago         |
| 3 | CLAUDE.md         | Add new rule                | Recurring correction      |
```

Then ask: **"Should I execute all of these, or skip any?"**

Wait for explicit confirmation before writing a single file.

**After confirmation — for each item:**

To create a new skill:
1. Determine: global (`~/.claude/skills/`) or project (`.claude/skills/`)
2. Create directory and SKILL.md with proper frontmatter
3. Create supporting files (gotchas.md, patterns.md, etc.) if content justifies it
4. Write description to match natural language — what the user says when they need it

To improve an existing skill:
1. Read the current version first
2. Edit in place — don't rewrite unless the whole thing is wrong

To update CLAUDE.md or context.md:
1. Read the current version first
2. Add, remove, or correct — never bloat
3. Every line should earn its place

## After running

Summarize what was done:
```
Captured: [N] new patterns → memory/skills
Audited:  [N] files, [N] issues found
Built:    [N] new skills, [N] updated
Architect: [N] decomposition opportunities identified
```

For anything identified but not executed, list as "Needs your input: ..."
