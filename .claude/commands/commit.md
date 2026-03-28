# Commit changes

The user wants to commit their current changes.

Follow these steps:

1. **Check what's changed.**
   Run git status and git diff --stat to see what files were modified.
   If nothing has changed, say: "Nothing new to save — everything's
   already up to date."

2. **Detect the audience from CLAUDE.md.**
   Read the project's CLAUDE.md. Look for:
   - Age of the user (e.g. "Max is 7 years old")
   - Tone rules (e.g. "trusted teammate", "sentence case")
   Use this to shape how you confirm the commit to the user.

3. **Stage and commit.**
   Stage all changed files and commit with a clear, descriptive message
   summarizing what changed. The commit message itself should be professional
   and descriptive (it's for git history).

4. **Confirm to the user — in their language.**

   **If this is a child's project (age 7-10):**
   Say something like: "Saved! Your [thing you built] is safe now —
   even if you close the computer, it'll still be there. 💾"

   **If this is an adult project:**
   Say: "Committed — [plain English description of what was saved]."

   Never say "git", "commit", "staged", "repository", or "branch"
   to a child. For adults, "committed" is fine but always follow it
   with what was saved.
