#!/bin/bash

# User Prompt Guard
# Blocks prompts containing potentially destructive actions.

INPUT=$(cat)

PROMPT=$(echo "$INPUT" | jq -r '.prompt // empty' 2>/dev/null)

if [ -z "$PROMPT" ]; then
    exit 0
fi

LOWER_PROMPT=$(echo "$PROMPT" | tr '[:upper:]' '[:lower:]')

DESTRUCTIVE_PATTERNS=(
    "delete"
    "destroy"
    "drop database"
    "rm -rf"
    "remove all"
    "wipe"
    "format disk"
    "terraform destroy"
    "git reset --hard"
    "git clean -fd"
)

for PATTERN in "${DESTRUCTIVE_PATTERNS[@]}"; do
    if echo "$LOWER_PROMPT" | grep -Fq "$PATTERN"; then
        echo "BLOCKED: Potentially destructive request detected: $PATTERN" >&2
        exit 2
    fi
done

exit 0