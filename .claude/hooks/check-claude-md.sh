#!/bin/bash
f=$(cat /dev/stdin | jq -r '.tool_input.file_path // .tool_response.filePath // ""')
if echo "$f" | grep -q 'CLAUDE\.md$' && [ -f "$f" ] && [ "$(wc -l < "$f")" -gt 100 ]; then
  echo '{"systemMessage": "CLAUDE.md is over 100 lines. Move detail into skills or memory — keep it under 100."}'
fi
