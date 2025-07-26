#!/bin/bash

source ~/.config/theming/brown

wrap_in_quotes() {
    echo "'$1'"
}

cat <<EOF
bg = $(wrap_in_quotes "$COLOR_BG")
bg_alt = $(wrap_in_quotes "$COLOR_BG_ALT")
fg = $(wrap_in_quotes "$COLOR_FG")
accent = $(wrap_in_quotes "$COLOR_ACCENT")

dark = $(wrap_in_quotes "$COLOR_DARK")
light = $(wrap_in_quotes "$COLOR_LIGHT")

red = $(wrap_in_quotes "$COLOR_RED")
green = $(wrap_in_quotes "$COLOR_GREEN")
yellow = $(wrap_in_quotes "$COLOR_YELLOW")
blue = $(wrap_in_quotes "$COLOR_BLUE")
purple = $(wrap_in_quotes "$COLOR_PURPLE")
orange = $(wrap_in_quotes "$COLOR_ORANGE")

border = $(wrap_in_quotes "$COLOR_BORDER")
text_pripary = $(wrap_in_quotes "$COLOR_TEXT_PRIMARY")
text_secondary = $(wrap_in_quotes "$COLOR_TEXT_SECONDARY")
shadow = $(wrap_in_quotes "$COLOR_SHADOW")
EOF
