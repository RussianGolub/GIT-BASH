#!/bin/bash

GITIGNORE_PATH=$(find "$(git rev-parse --show-toplevel)" -type f -name ".gitignore")

if [ -n "$GITIGNORE_PATH"  ]; then
echo -e "YEAH. We have gitignore in:\n$GITIGNORE_PATH"
else
echo "No gitignore"
fi

README_PATH=$(find "$(git rev-parse --show-toplevel)" -type f \( -iname "README" -o -iname "README.*" \))

if [ -n "$README_PATH"  ]; then
echo -e "YEAH. We have README in:\n$README_PATH"
else
echo "No gitignore"
fi



if [ -n "$(git diff --cached --name-only --diff-filter=ACM | grep '\.log$')" ]; then
echo "CAUTION: you have log files in stage"
fi

if [ -n "$(git ls-files $(git rev-parse --show-toplevel) | grep '\.log$')" ]; then
echo "CAUTION: you have log files in repo"
fi

