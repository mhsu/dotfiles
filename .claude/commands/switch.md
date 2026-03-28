# Switch project

The user wants to switch to a different project: $ARGUMENTS

Follow these steps:

1. **Save the current session first.**
   Before switching, check if there are uncommitted changes (run git status).
   If there are, ask: "Want me to save your progress here before switching?"
   If yes, run the save-session workflow.

2. **Load context for the destination project.**
   - Look for the project at $ARGUMENTS relative to the current directory,
     or as an absolute path, or as a subfolder of ~/Documents/repos/
   - Read its context.md if one exists
   - Read its CLAUDE.md if one exists
   - Run git log --oneline -3 inside it if it's a git repo

3. **Brief the user on what they're walking into.**
   Say something like:
   "Switching to [project name]. Here's where things stand:
   - What it is: [1 sentence]
   - Last worked on: [date or recent commit]
   - Current status: [phase or state]
   - First thing to pick up: [top next action from context.md]"

4. **Confirm you're ready.**
   Say: "I'm loaded up on [project name]. What do you want to work on?"
