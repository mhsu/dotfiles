# What makes a skill worth building

## The three tests

Before building a skill, it should pass all three:

1. **Would Claude get this wrong without it?** If the skill only contains things Claude already knows well, it adds context overhead with no benefit.

2. **Does this happen more than once?** One-off tasks should just be done. Skills are for repeat workflows.

3. **Can it be described in one sentence?** If you can't write a clear description of when to trigger it, it's too vague to be useful.

## High-value skill types (ranked by ROI)

**1. Gotcha repositories** — The fastest-ROI skills. Just a list of specific mistakes Claude makes on your codebase. No workflow, no scripts — just "here's what Claude gets wrong and what to do instead." Example: a list of footguns in your billing library.

**2. Workflow scripts** — Skills that include scripts Claude can run or compose. Give Claude code to call rather than asking it to reconstruct boilerplate from memory. Example: a data fetching library with helper functions Claude can import.

**3. Verification drivers** — Skills that test whether Claude's output is correct. Include scripts that assert actual state, not just "check if it looks right." Example: a signup flow driver that asserts database state at each step.

**4. Scaffolding templates** — Skills that generate boilerplate with your specific conventions. More valuable when your conventions can't be inferred from the code alone. Example: new-migration with your specific patterns and required fields.

**5. Reference manuals** — Skills that document internal libraries, CLIs, or APIs Claude doesn't have training data on. Include code snippets for every common operation.

## Skill structure that works

```
skill-name/
  SKILL.md          — trigger description + core instructions + checklist
  gotchas.md        — the highest-signal file. Build this up over time.
  patterns.md       — what to do (positive patterns)
  references/       — API docs, examples, snippets
  scripts/          — shell scripts or code Claude can run/compose
  assets/           — templates, starting files, config examples
  config.json       — populated by Claude when user runs setup
```

Not every skill needs all of these. Start with SKILL.md and gotchas.md. Add the rest when you hit a real need.

## Writing the description field

The description is scanned by Claude to decide whether to auto-trigger. Write it to match the user's natural language, not a summary of the skill's internals.

**Bad:** "Manages the design system"
**Good:** "Use when building any new component, page, or layout. Enforces the design tokens, copy standards, and visual principles for this app."

**Bad:** "Starts the development servers"
**Good:** "Use when starting work on this project. Kills old processes, starts frontend and backend, confirms both are healthy."

The description should answer: "When would someone reach for this?"

## The gotchas section

Every skill should have one. It's the highest-ROI content because it's built from real failures, not predictions.

Structure:
```markdown
## Gotchas

**[Category]** — [What goes wrong]
[What to do instead, with example if helpful]
```

Build it incrementally: every time Claude makes the same mistake twice on this skill's domain, add it. Don't try to anticipate all gotchas upfront — you'll mostly predict the wrong ones.

## Progressive disclosure via the file system

For complex skills, don't put everything in SKILL.md. Point to other files:

```markdown
Before proceeding, read:
- `${CLAUDE_SKILL_DIR}/gotchas.md` — common mistakes on this codebase
- `${CLAUDE_SKILL_DIR}/references/api.md` — full API signatures
```

Claude will read them at the right time. This keeps SKILL.md focused while making detail available when needed.

## Config pattern for skills that need setup

```markdown
## Setup

Check if `${CLAUDE_SKILL_DIR}/config.json` exists. If not, ask:
- "Which Slack channel should standups go to?"
- "What's your team name in Linear?"

Write answers to config.json. On future runs, read config.json instead of asking.
```

## When to use `context: fork`

Use it when the skill:
- Makes large changes to the codebase
- Is experimental or exploratory
- Could leave things in a broken state if interrupted
- Should not affect the main session's context

## When to NOT build a skill

- The task is genuinely one-off
- The instructions would just be "do what makes sense" (too vague to help)
- The skill would duplicate something already in CLAUDE.md
- The workflow changes too frequently to maintain
