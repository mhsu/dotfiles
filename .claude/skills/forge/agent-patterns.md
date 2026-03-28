# Agent decomposition patterns

When to split work into subagents, and how.

## The core question

Ask this about any skill or workflow: "If this fails halfway through, how bad is it?" If the answer is "pretty bad — it could corrupt state, break something, or be hard to recover from," that's a candidate for subagent isolation.

## Pattern 1: Isolation fork

**When:** The task is risky or experimental. You want Claude to try something without affecting the main session or codebase.

**How:** Use `context: fork` in the skill frontmatter. The subagent gets a copy of the context but changes are isolated.

```yaml
---
name: try-refactor
context: fork
agent: general-purpose
---
```

**Good for:** Large refactors, migrations, experimental approaches, anything destructive.

## Pattern 2: Parallel research

**When:** Multiple independent questions need answering before you can proceed. Doing them sequentially wastes time.

**How:** Use the Agent tool with `run_in_background: true` to launch multiple Explore agents at once.

**Good for:** "Read these 5 files and tell me X about each one." "Search for these 3 patterns across the codebase." Any investigation that can be split into independent queries.

**Example in a skill:**
```
Launch 3 parallel Explore agents:
- Agent 1: Find all components using hardcoded colors
- Agent 2: Find all API calls without error handling
- Agent 3: Find all components missing empty states
```

## Pattern 3: Specialist chain

**When:** A workflow has distinct phases that require different expertise or context.

**How:** Each phase is a separate subagent that receives only what it needs.

**Good for:** "Research → Plan → Execute" flows. The researcher doesn't need to know how to code. The planner doesn't need to read every file. The executor doesn't need the research context.

**Example:** A `qa-and-fix` workflow:
1. QA agent finds bugs (read-only, broad access)
2. Plan agent receives bug list, produces fix plan
3. Fix agent receives plan, makes targeted edits

## Pattern 4: Verification loop

**When:** You need to confirm work is correct before proceeding, and confirmation requires a fresh perspective.

**How:** After the main agent does work, spawn a separate verification agent with the same codebase but no knowledge of what was changed. It should independently verify the outcome.

**Good for:** "Adversarial review" — a second agent that tries to find problems the first one missed.

## Pattern 5: Long-running background work

**When:** A task takes a long time and you don't need to block on it.

**How:** `run_in_background: true` on the Agent tool call. Continue other work; the notification arrives when done.

**Good for:** Full codebase scans, test runs, build processes, anything >30 seconds.

## When NOT to use subagents

- When the task is simple and sequential — subagents add overhead
- When steps are tightly dependent (output of step 1 is input to step 2, no parallelism possible)
- When you need the main context (conversation history, user preferences) — subagents start with a clean slate
- When the task is under 3 steps — just do it inline

## Skill decomposition signals

A skill should probably be split if:
- It has more than 6 distinct steps
- It does both "research" and "execution"
- Steps 1-3 could run while steps 4-6 are being set up
- It touches more than 2 unrelated areas of the codebase
- The failure mode of step 3 corrupts the work from steps 1-2

A skill should stay unified if:
- The steps build context progressively (each step needs all prior output)
- It's under 5 minutes to run end-to-end
- Splitting it would require passing large amounts of state between agents
