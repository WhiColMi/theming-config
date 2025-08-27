#!/bin/bash
DIR="$(pwd)"
OUTPUT="$DIR/config.yml"

THEME="$DIR/theme.yml"
USER="$DIR/user-config.yml"

# Ensure files exist
[ -f "$THEME" ] || echo "# Empty theme file" > "$THEME"
[ -f "$USER" ] || echo "# Empty user overrides" > "$USER"

cat "$THEME" "$USER" > "$OUTPUT"

echo "✅ Yazi config generated at $OUTPUT"
