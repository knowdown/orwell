#!/usr/bin/env bash
# Run once to create the three approval labels in the repo.
# Requires the GitHub CLI: https://cli.github.com
# Usage: bash create-labels.sh

REPO="knowdown/orwell"

gh label create "approval: pending"  --color "FBD25E" --description "Waiting for admin review"   --repo "$REPO" 2>/dev/null || \
  gh label edit  "approval: pending"  --color "FBD25E" --description "Waiting for admin review"   --repo "$REPO"

gh label create "approval: approved" --color "0075CA" --description "Request approved by admin"   --repo "$REPO" 2>/dev/null || \
  gh label edit  "approval: approved" --color "0075CA" --description "Request approved by admin"   --repo "$REPO"

gh label create "approval: rejected" --color "E4E669" --description "Request rejected by admin"   --repo "$REPO" 2>/dev/null || \
  gh label edit  "approval: rejected" --color "E4E669" --description "Request rejected by admin"   --repo "$REPO"

echo "Labels created/updated in $REPO"
