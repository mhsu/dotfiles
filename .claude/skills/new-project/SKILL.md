---
name: new-project
description: Start a new project with Matthew. Runs a thorough discovery interview to understand the person, the problem, and what to build — then sets up the project structure. Use when starting any new project from scratch.
---

You're starting a new project. Before writing a single line of code, run a thorough interview. Better to ask 15 questions and build the right thing than ask 5 and build the wrong one.

## Interview rules

- One or two questions at a time — never a list of questions, never a form
- Let the answers guide follow-up questions
- Dig deeper on anything that seems important
- Keep it conversational, not clinical

## Topics to cover (spread across the conversation)

**About the person:**
- Who are they and what do they do day to day?
- What's their comfort level with technology?
- Have they built something before? What went well or poorly?

**About the problem:**
- What problem are they trying to solve, in their own words?
- Why does this problem matter to them personally?
- How is it being solved today, and what's wrong with that?
- Why now?

**About the product:**
- Who is this for — just them, a team, customers, the public?
- Walk through how someone actually uses it day to day
- What does success look like at 30 days? 90 days?
- What absolutely must be in v1? What's nice-to-have?
- What would make it a failure, even if it technically worked?
- Are there apps or tools they admire and want to take inspiration from?
- Is there a timeline or deadline?

**About the business:**
- Is this meant to make money? If so, how?
- Who are the first 10 people who will use it, and how will they be reached?
- What's their unfair advantage?

**About look and feel:**
- How should it feel to use? (Fast and simple? Rich and detailed? Playful? Professional?)
- Any colors, styles, or brands to align with or avoid?
- Any existing materials (logos, screenshots, brand guides)?

**About distribution (if public-facing):**
- Is this for discovery or for a specific invited group?
- Who are the first 10 users and how will they be reached?
- What numbers will tell us if it's working?

**About how to work together:**
- How do they want to give feedback?
- Are they trying to learn through this, or do they just want it done?
- Anything that would make this process stressful to avoid?

## After the interview

1. **Check for existing projects** — before creating anything, list the subfolders in the current directory and ask if any existing project should be reused

2. **Confirm the folder name** — propose a name and ask for confirmation before creating it

3. **Create the project folder** — never dump files in the root

4. **Create `CLAUDE.md`** in the project root with:
   - User profile (who they are, how they communicate, hard constraints)
   - Communication rules (recommendations first, jargon translated, tradeoffs in experience terms)
   - Decision-making authority (full technical authority, document in TECHNICAL.md)
   - When to involve them (only decisions that affect what they'll see)
   - Engineering standards (testing, security, error messages, version control)
   - Quality assurance (test before showing, fix don't explain, revert bad directions)
   - The build cycle (Plan → Review → Execute → Confirm — never skip a step)
   - Saving progress (commit after every meaningful change, maintain context.md and TODOS.md)
   - Voice and tone (trusted teammate, direct and warm, sentence case, no em dashes)
   - Distribution strategy (if public-facing: set up analytics before launch, suggest first 10 users)
   - Project-specific details (everything from the interview)

5. **Create `context.md`** — current state, what's been decided, what's next

6. **Create `TODOS.md`** — environment setup, known requirements, deferred items

7. **Propose the first concrete step** — what to build first and why, with a recommendation: "I'd start with X because it means Y for you — want me to proceed?"

## Remember

- Always use sentence case in all copy, buttons, labels
- No em dashes anywhere
- Direct, warm, confident tone — not corporate, not a hype machine
- Celebrate milestones in terms they care about, not technical terms
