#!/bin/bash

DIR_PATH="$HOME/.config/rofi"

mkdir -p "$DIR_PATH"
cat "$DIR_PATH/config.base.rasi" > "$DIR_PATH/config.rasi"
~/.config/theming/adapters/rofi_adapter.sh >> "$DIR_PATH/config.rasi"

echo "config: generated rofi config" >> $1
