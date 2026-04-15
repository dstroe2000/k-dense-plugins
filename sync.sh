#!/usr/bin/env bash
#
# sync.sh — Sync upstream skills into the single k-dense-science plugin
#
# Copies all skills from upstream submodule into the plugin, injecting
# disable-model-invocation: true so only the gateway /science command
# is visible to Claude. Detects new upstream skills not yet in skill-map.json.
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
UPSTREAM="$SCRIPT_DIR/upstream/scientific-skills"
PLUGIN_SKILLS="$SCRIPT_DIR/plugins/k-dense-science/skills"
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

echo "=== Syncing skills into k-dense-science plugin ==="
echo ""

# Collect all skill names from skill-map.json
ALL_SKILLS=$(python3 -c "
import json
data = json.load(open('$SKILL_MAP'))
for plugin in data['plugins'].values():
    for skill in plugin['skills']:
        print(skill)
")

TOTAL=0
ERRORS=0

for skill in $ALL_SKILLS; do
    src="$UPSTREAM/$skill"
    dst="$PLUGIN_SKILLS/$skill"

    if [ ! -d "$src" ]; then
        echo "  WARNING: $skill not found in upstream"
        ERRORS=$((ERRORS + 1))
        continue
    fi

    # Remove old copy, fresh sync
    rm -rf "$dst"
    cp -r "$src" "$dst"
    TOTAL=$((TOTAL + 1))
done

# Patch all copied skills: inject disable-model-invocation: true
PATCHED=$(python3 -c "
import glob
patched = 0
for skill_md in glob.glob('$PLUGIN_SKILLS/*/SKILL.md'):
    if '/science/SKILL.md' in skill_md:
        continue
    with open(skill_md) as f:
        content = f.read()
    if 'disable-model-invocation:' in content:
        continue
    if content.startswith('---'):
        content = '---\ndisable-model-invocation: true\n' + content[4:]
        with open(skill_md, 'w') as f:
            f.write(content)
        patched += 1
print(patched)
")

echo "  $TOTAL skills synced"
echo "  $PATCHED frontmatter patched (disable-model-invocation: true)"

# Detect unmapped upstream skills
echo ""
echo "=== Checking for unmapped upstream skills ==="

UNMAPPED=0
for skill_dir in "$UPSTREAM"/*/; do
    skill=$(basename "$skill_dir")
    if ! echo "$ALL_SKILLS" | grep -qw "$skill"; then
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
echo "=== Plugin structure ==="
echo "  Gateway skill: /science (visible)"
echo "  Hidden skills: $TOTAL (invoked by gateway)"
echo ""
echo "Done."
