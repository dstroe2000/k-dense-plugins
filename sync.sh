#!/usr/bin/env bash
#
# sync.sh — Populate plugin skill directories from upstream submodule
#
# Reads skill-map.json, copies each skill's directory from upstream into
# the correct plugin. Detects new upstream skills not yet mapped.
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
UPSTREAM="$SCRIPT_DIR/upstream/scientific-skills"
PLUGINS_DIR="$SCRIPT_DIR/plugins"
SKILL_MAP="$SCRIPT_DIR/skill-map.json"

# Verify prerequisites
if [ ! -d "$UPSTREAM" ]; then
    echo "ERROR: upstream submodule not found at $UPSTREAM"
    echo "Run: git submodule update --init"
    exit 1
fi

if [ ! -f "$SKILL_MAP" ]; then
    echo "ERROR: skill-map.json not found"
    exit 1
fi

# Check for jq or use python fallback
if command -v jq &>/dev/null; then
    USE_JQ=true
else
    USE_JQ=false
fi

echo "=== Syncing skills from upstream ==="
echo ""

# Track all mapped skills for orphan detection
MAPPED_SKILLS=""
TOTAL_COPIED=0
ERRORS=0

# Get plugin names
if $USE_JQ; then
    PLUGIN_NAMES=$(jq -r '.plugins | keys[]' "$SKILL_MAP")
else
    PLUGIN_NAMES=$(python3 -c "import json; [print(k) for k in json.load(open('$SKILL_MAP'))['plugins'].keys()]")
fi

for plugin in $PLUGIN_NAMES; do
    plugin_skills_dir="$PLUGINS_DIR/$plugin/skills"

    # Clean existing skills (full refresh)
    rm -rf "$plugin_skills_dir"
    mkdir -p "$plugin_skills_dir"

    # Get skills for this plugin
    if $USE_JQ; then
        SKILLS=$(jq -r ".plugins.\"$plugin\".skills[]" "$SKILL_MAP")
    else
        SKILLS=$(python3 -c "import json; [print(s) for s in json.load(open('$SKILL_MAP'))['plugins']['$plugin']['skills']]")
    fi

    count=0
    for skill in $SKILLS; do
        MAPPED_SKILLS="$MAPPED_SKILLS $skill"
        src="$UPSTREAM/$skill"
        dst="$plugin_skills_dir/$skill"

        if [ -d "$src" ]; then
            cp -r "$src" "$dst"
            count=$((count + 1))
        else
            echo "  WARNING: $skill not found in upstream"
            ERRORS=$((ERRORS + 1))
        fi
    done

    TOTAL_COPIED=$((TOTAL_COPIED + count))
    echo "  $plugin: $count skills synced"
done

echo ""
echo "=== Total: $TOTAL_COPIED skills synced across $(echo "$PLUGIN_NAMES" | wc -w | tr -d ' ') plugins ==="

# Detect unmapped upstream skills
echo ""
echo "=== Checking for unmapped upstream skills ==="

UNMAPPED=0
for skill_dir in "$UPSTREAM"/*/; do
    skill=$(basename "$skill_dir")
    if ! echo "$MAPPED_SKILLS" | grep -qw "$skill"; then
        echo "  UNMAPPED: $skill"
        UNMAPPED=$((UNMAPPED + 1))
    fi
done

if [ "$UNMAPPED" -eq 0 ]; then
    echo "  All upstream skills are mapped."
else
    echo "  $UNMAPPED unmapped skill(s) — add to skill-map.json"
fi

if [ "$ERRORS" -gt 0 ]; then
    echo ""
    echo "WARNING: $ERRORS skill(s) in map but missing from upstream"
    exit 1
fi

echo ""
echo "Done."
