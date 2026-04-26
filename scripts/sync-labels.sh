#!/usr/bin/env bash
# sync-labels.sh — Sync a standard label set to a GitHub repo using the gh CLI.
#
# Usage:    ./scripts/sync-labels.sh <owner/repo>
# Example:  ./scripts/sync-labels.sh germanfrelo/website
#
# Creates missing labels and updates existing ones (name, color, description).
# Does not delete labels that are not in the set — avoids breaking existing issues.
# Dependencies: gh (GitHub CLI), jq

set -euo pipefail

REPO="${1:?Usage: $0 <owner/repo>}"

# Standard label definitions: "name" "color (hex, no #)" "description"
declare -a LABEL_NAMES=( "bug"           "documentation"                 "enhancement"   "good first issue" "help wanted"   "chore"         "refactor"      "invalid"       "question"      "wontfix" )
declare -a LABEL_COLORS=( "d73a4a"       "0075ca"                        "a2eeef"        "7057ff"           "008672"        "ededed"        "fbca04"        "e4e669"        "d876e3"        "ffffff" )
declare -a LABEL_DESCS=(  "Something isn't working" "Improvements or additions to documentation" "New feature or request" "Good for newcomers" "Extra attention is needed" "Maintenance or housekeeping" "Code improvement, no behavior change" "This doesn't seem right" "Further information is requested" "This will not be worked on" )

existing_names=$(gh api "/repos/${REPO}/labels" --paginate --jq '.[].name')

echo "Syncing labels → ${REPO}"
for i in "${!LABEL_NAMES[@]}"; do
    name="${LABEL_NAMES[$i]}"
    color="${LABEL_COLORS[$i]}"
    desc="${LABEL_DESCS[$i]}"
    encoded="${name// /%20}"
    if echo "$existing_names" | grep -qFx "$name"; then
        gh api -X PATCH "/repos/${REPO}/labels/${encoded}" \
            -f color="$color" -f description="$desc" --silent
        echo "  updated: $name"
    else
        gh api -X POST "/repos/${REPO}/labels" \
            -f name="$name" -f color="$color" -f description="$desc" --silent
        echo "  created: $name"
    fi
done
echo "Done."
