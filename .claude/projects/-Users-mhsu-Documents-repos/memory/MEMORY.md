# Memory for /Users/mhsu/Documents/repos

## User Workflow Preferences

### New Project Rules
- ALWAYS create a new subfolder for every new project — never dump files in the root of max/ or matthew/
- Before creating a new folder/project, ALWAYS list existing subfolders and check for similar projects
- Ask the user if they want to reuse an existing project or create a new one
- Confirm the new folder name with the user before creating it
- IMPORTANT: Only look inside the CURRENT child's folder for similar projects — do NOT look at sibling folders
  - e.g. when inside max/, only check max/ subfolders — never look at matthew/, aiagent/, etc.
  - e.g. when inside matthew/, only check matthew/ subfolders

### Git Rules
- Max's folder has git initialized — auto-commit when something meaningful is finished
- Don't ask, just commit automatically at natural checkpoints (finished a feature, fixed a bug, end of session)
- Use clear, descriptive commit messages

### Session End Rules
- At the end of every session, save a `context.md` file inside the project folder
- This file should capture: what was built, what files exist, what's left to do, and any important notes
- This prevents starting from scratch next time

### Users
- **Max** — 7 years old. Use simple words, short sentences, fun emojis, LEGO analogies. Always celebrate wins!
- **Matthew** — 10 years old. Slightly more mature tone, can use real coding terms with brief explanations.
- CLAUDE.md files exist in both max/ and matthew/ folders with full instructions.

### Plan-Review-Execute-Confirm Cycle
Always follow for both users:
1. PLAN — explain what you're going to do
2. REVIEW — ask for a yes/no before doing it
3. EXECUTE — one small step at a time
4. CONFIRM — show what happened and check together

## aiagent Customer Research
- [project_aiagent_customer_research.md](project_aiagent_customer_research.md) — TC discovery calls (Kayla & Dominika): top pain points, privacy requirements, tool stack, pricing signals, distribution, and validated Phase 2 features

## Known Projects
See session context files in each folder for details.
- max/           — Max's projects (7 yr old)
- matthew/       — Matthew's projects (10 yr old)
- aiagent/       — AI-powered app for real estate transaction coordinators (TCs). Reduces TC busy work via AI automation. NOT a generic "AI agent" project — the AI is the core product, built specifically to help TCs manage paperwork, deadlines, and communication across transactions.
- playground2/   — Playground/experiments
- sports-app/    — Sports app
- test-vocab-quiz/ — Vocabulary quiz (test/older version)
- text-to-image-app/ — Text to image app
