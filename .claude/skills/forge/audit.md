# Audit criteria

## What makes a skill worth keeping

A skill earns its place if it passes these tests:

**Trigger clarity** — Can you tell in one sentence exactly when to use it? If the description is vague ("helps with development"), it will either never trigger or trigger when it shouldn't.

**Non-obvious content** — Does it contain information Claude doesn't already know? A skill that just says "write clean code" is worthless. A skill with specific gotchas, token values, or workflow steps that Claude would get wrong without them is valuable.

**Repeatability** — Is this workflow done more than once? Skills that run once and never again should be documentation, not skills.

**Freshness** — Is the content still accurate? Stale skills are worse than no skills — they confidently give wrong instructions.

## Skill quality checklist

For each skill, score these:

| Criterion | Score (1-3) | Notes |
|-----------|-------------|-------|
| Description triggers correctly | | |
| Has a gotchas section | | |
| Content is non-obvious | | |
| Supporting files used well | | |
| Not too long (focused) | | |
| Not stale | | |

Total 15+ = good. 10-14 = needs work. Under 10 = rewrite or delete.

## Common skill problems

**Too generic** — "Help me with React" skills. Fix: scope to one specific workflow or decision.

**No gotchas** — The skill tells Claude what to do but not what to avoid. Gotchas are the highest-signal content in any skill. Fix: add a `gotchas.md` file built from real failure patterns.

**Instructions that railroad** — Over-specified steps that don't adapt to context. Fix: give Claude the knowledge and constraints, not a rigid script.

**Missing setup step** — Skill requires context (which Slack channel? which branch?) but doesn't ask for it. Fix: add a config.json pattern or an explicit "ask first" step.

**Description written for humans, not the model** — The description field is scanned by Claude to decide whether to trigger. It should match the natural language a user would use when they need the skill, not a summary of what the skill does.

Bad: "This skill manages the design system for Transaction Sidekick"
Good: "Use when building any new UI component, page, or layout. Enforces design tokens, copy standards, and visual principles."

## CLAUDE.md quality checklist

For each CLAUDE.md file:

- [ ] Is every rule still accurate and relevant?
- [ ] Are there recurring corrections not yet captured as rules?
- [ ] Is anything duplicated between CLAUDE.md and a skill? (Skills should hold the detail; CLAUDE.md should hold the meta-rules)
- [ ] Is the file under ~200 lines? Longer = less likely to be read
- [ ] Are there rules that apply globally but are only in a project file? (Should move to ~/.claude/CLAUDE.md)

## Memory quality checklist

For each memory file:

- [ ] Is this still true? (Check against recent code and decisions)
- [ ] Is it specific enough to be actionable?
- [ ] Is anything here now obvious from reading the code? (Delete it — memory is for non-derivable facts)
- [ ] Is the `description` field specific enough to trigger recall? ("User prefers X" is fine; "some notes about the user" will never trigger)
