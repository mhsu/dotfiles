# Save session

The user wants to save their current session progress.

Follow these steps:

1. **Figure out what was done this session.**
   - Run git diff HEAD to see what changed
   - Run git log --oneline -5 to see recent commits
   - Look at which files were created or modified

2. **Write or update context.md in the current project folder.**
   Use this format:

   ```
   # [Project name] — session context
   Last updated: [today's date]

   ## What was built this session
   [Plain English list of what was done]

   ## Current state
   [What works right now — what can the user actually do or see?]

   ## Files in this project
   | File | What it does |
   |------|-------------|
   [list key files]

   ## What's next
   [Top 2-3 things to work on next session]

   ## Important notes
   [Anything that would be confusing to forget — API keys needed,
   known bugs, decisions made, etc.]
   ```

3. **Commit everything.**
   Stage all changes and commit with a clear message describing what
   was done. Say: "Committed — your changes are saved."

4. **Tell the user what was saved.**
   Give a 2-3 sentence plain-English summary of what was accomplished
   this session.
