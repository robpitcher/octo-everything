#!/bin/bash
# Regenerate README TOC when Copilot edits docs
# Triggered by postToolUse hook

set -e

INPUT=$(cat)
TOOL_NAME=$(echo "$INPUT" | jq -r '.toolName')
TOOL_ARGS=$(echo "$INPUT" | jq -r '.toolArgs')
RESULT_TYPE=$(echo "$INPUT" | jq -r '.toolResult.resultType')

# Only process successful edit/create operations
if [ "$RESULT_TYPE" != "success" ]; then
  exit 0
fi

# Check if tool was edit or create
if [ "$TOOL_NAME" != "edit" ] && [ "$TOOL_NAME" != "create" ]; then
  exit 0
fi

# Extract file path from tool args
FILE_PATH=$(echo "$TOOL_ARGS" | jq -r '.path // .filePath // empty')

if [ -z "$FILE_PATH" ]; then
  exit 0
fi

# Check if file is in specs/, insights/, or research/
if [[ ! "$FILE_PATH" =~ ^(specs/|insights/|research/) ]]; then
  exit 0
fi

# Check if file is markdown
if [[ ! "$FILE_PATH" =~ \.md$ ]]; then
  exit 0
fi

# Log the trigger
echo "$(date -Iseconds) | TOC regeneration triggered by edit to: $FILE_PATH" >> logs/docs-automation.log

# Generate the TOC sections
TOC_FILE="docs-toc.md"

echo "## Documentation" > "$TOC_FILE"
echo "" >> "$TOC_FILE"

# Specs section
echo "### Specifications" >> "$TOC_FILE"
for file in specs/*.md; do
  if [ -f "$file" ] && [ "$file" != "specs/demoplan/"* ]; then
    title=$(head -1 "$file" | sed 's/^# //')
    echo "- [$title]($file)" >> "$TOC_FILE"
  fi
done

echo "" >> "$TOC_FILE"

# Insights section
echo "### Insights" >> "$TOC_FILE"
for file in insights/*.md; do
  if [ -f "$file" ]; then
    title=$(head -1 "$file" | sed 's/^# //')
    echo "- [$title]($file)" >> "$TOC_FILE"
  fi
done

echo "" >> "$TOC_FILE"

# Research section
echo "### Research" >> "$TOC_FILE"
for file in research/*.md; do
  if [ -f "$file" ]; then
    title=$(head -1 "$file" | sed 's/^# //')
    echo "- [$title]($file)" >> "$TOC_FILE"
  fi
done

echo "TOC regenerated: $TOC_FILE"
