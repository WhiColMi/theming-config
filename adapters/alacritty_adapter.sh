#!/bin/bash
# source your centralized theme colors
source ~/.config/theming/brown

cat <<EOF > ~/.config/alacritty/colors.toml
[colors.primary]
background = "$COLOR_BG"
foreground = "$COLOR_TEXT_PRIMARY"

[colors.cursor]
text = "$COLOR_BG"
cursor = "$COLOR_ACCENT"

[colors.selection]
text = "$COLOR_BG"
background = "$COLOR_ACCENT"

[colors.normal]
black = "$COLOR_DARK"
red = "$COLOR_RED"
green = "$COLOR_GREEN"
yellow = "$COLOR_YELLOW"
blue = "$COLOR_BLUE"
magenta = "$COLOR_PURPLE"
cyan = "$COLOR_ORANGE"
white = "$COLOR_LIGHT"

[colors.bright]
black = "$COLOR_DARK"
red = "$COLOR_RED"
green = "$COLOR_GREEN"
yellow = "$COLOR_YELLOW"
blue = "$COLOR_BLUE"
magenta = "$COLOR_PURPLE"
cyan = "$COLOR_ORANGE"
white = "$COLOR_LIGHT"
EOF
