#!/bin/bash

# PostToolUse Logger
# Logs successful Terraform commands.

INPUT=$(cat)

TOOL_NAME=$(echo "$INPUT" | jq -r '.tool_name // empty' 2>/dev/null)
COMMAND=$(echo "$INPUT" | jq -r '.tool_input.command // empty' 2>/dev/null)

# Only log Bash commands
if [ "$TOOL_NAME" != "Bash" ]; then
    exit 0
fi

# Log Terraform commands
if echo "$COMMAND" | grep -Eq 'terraform (validate|plan|apply|destroy)'; then
    LOG_FILE="${CLAUDE_PROJECT_DIR}/.claude/deploy.log"

    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $COMMAND" >> "$LOG_FILE"
fi

exit 0