#!/bin/bash

# Check if a commit message was provided as an argument
if [ -z "$1" ]; then
  echo "Error: Commit message is required."
  echo "Usage: ./git-auto-push.sh 'Your commit message'"
  exit 1
fi

# Git add all changes
git add .

# Git commit with the provided commit message
git commit -m "$1"

# Git push to the 'Prod' branch
git push origin Prod

echo "Changes have been pushed to the Prod branch!"
