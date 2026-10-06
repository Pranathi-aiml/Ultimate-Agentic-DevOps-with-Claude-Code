#!/bin/bash

# Pre-Tool Guard
# Blocks dangerous infrastructure commands before Claude executes them.

INPUT=$(cat)

TOOL_NAME=$(echo "$INPUT" | jq -r '.tool_name // empty' 2>/dev/null)
COMMAND=$(echo "$INPUT" | jq -r '.tool_input.command // empty' 2>/dev/null)

# Only inspect Bash commands
if [ "$TOOL_NAME" != "Bash" ]; then
    exit 0
fi

LOWER_COMMAND=$(echo "$COMMAND" | tr '[:upper:]' '[:lower:]')

DANGEROUS_PATTERNS=(
    "terraform destroy"
    "terraform apply -auto-approve"
    "rm -rf"
    "kubectl delete"
    "docker system prune"
    "git reset --hard"
    "git clean -fd"
)

for PATTERN in "${DANGEROUS_PATTERNS[@]}"; do
    if echo "$LOWER_COMMAND" | grep -Fq "$PATTERN"; then
        echo "BLOCKED: Dangerous infrastructure command detected: $PATTERN" >&2
        exit 2
    fi
done

exit 0