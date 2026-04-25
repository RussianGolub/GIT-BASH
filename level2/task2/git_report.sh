#!/bin/bash

echo "current branch $(git branch --show-current)"
echo "count of commits in current braanch: $(git log --oneline | wc -l)"
echo "last commit author: $(git log --pretty=%an)"
