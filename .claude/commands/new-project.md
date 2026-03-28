# New project setup

The user wants to create a new project called: $ARGUMENTS

Follow these steps exactly:

1. **Check for similar projects first.**
   List all subfolders in the current directory. Read any context.md files
   in those folders. If anything looks similar to "$ARGUMENTS", show the
   user what exists and ask: "I found something similar — want to use that
   instead, or start fresh?"

2. **Confirm the folder name.**
   Tell the user the folder name you plan to create and wait for a yes
   before creating it.

3. **Create the project structure.**
   - Create the folder
   - Create a CLAUDE.md inside it (see format below)
   - Create an empty context.md inside it
   - Run git init inside it
   - Make the first commit with the message: "Project created"

4. **Tell the user it's ready.**
   Say what folder was created and what they can do next.

---

## CLAUDE.md format to create

```
# [Project name]

## What this is
[1-2 sentences describing the project]

## Who it's for
[Audience — age if a child project, role if adult]

## How to run it
[Commands to start the project — fill in once known]

## Current status
Just started.

## Folder structure
[Update as files are created]

## Key files
[Update as files are created]
```
