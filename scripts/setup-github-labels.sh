#!/bin/bash
# Setup GitHub labels for the repository
# Usage: ./scripts/setup-github-labels.sh

set -e

echo "Creating GitHub labels..."

# Type labels
gh label create "type: bug" --color "D73A4A" --description "Something is broken" --force
gh label create "type: feature" --color "1D76DB" --description "New functionality" --force
gh label create "type: docs" --color "0075CA" --description "Documentation improvements" --force
gh label create "type: infra" --color "F9D0C4" --description "Infrastructure/CI changes" --force

# Priority labels
gh label create "priority: high" --color "D93F0B" --description "High priority" --force
gh label create "priority: medium" --color "FBCA04" --description "Medium priority" --force
gh label create "priority: low" --color "0E8A16" --description "Low priority" --force

# Status labels
gh label create "status: needs triage" --color "EDEDED" --description "Needs triage" --force
gh label create "status: in progress" --color "1D76DB" --description "Work in progress" --force
gh label create "status: needs review" --color "FBCA04" --description "Needs review" --force

# Difficulty labels
gh label create "good first issue" --color "7057FF" --description "Good for newcomers" --force
gh label create "help wanted" --color "008672" --description "Extra attention needed" --force
gh label create "difficulty: easy" --color "C2E0C6" --description "Easy difficulty" --force
gh label create "difficulty: medium" --color "BFD4F2" --description "Medium difficulty" --force

# Special labels
gh label create "contributor-reward" --color "FFD700" --description "Eligible for Pro tier reward" --force
gh label create "wontfix" --color "FFFFFF" --description "Will not be worked on" --force
gh label create "duplicate" --color "CFD3D7" --description "Duplicate issue" --force

echo "Labels created successfully!"
