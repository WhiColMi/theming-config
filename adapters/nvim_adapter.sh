#!/bin/bash
source ~/.config/theming/brown

preprocess_color() {
  echo "'$(echo "$1" | sed -E 's/^(#[0-9a-fA-F]{6})[0-9a-fA-F]{2}$/\1/')'"
}

cat <<EOF
return {
bg = $(preprocess_color "$COLOR_BG"),
bg_alt = $(preprocess_color "$COLOR_BG_ALT"),
fg = $(preprocess_color "$COLOR_FG"),
accent = $(preprocess_color "$COLOR_ACCENT"),

dark = $(preprocess_color "$COLOR_DARK"),
light = $(preprocess_color "$COLOR_LIGHT"),

red = $(preprocess_color "$COLOR_RED"),
green = $(preprocess_color "$COLOR_GREEN"),
yellow = $(preprocess_color "$COLOR_YELLOW"),
blue = $(preprocess_color "$COLOR_BLUE"),
purple = $(preprocess_color "$COLOR_PURPLE"),
orange = $(preprocess_color "$COLOR_ORANGE"),

border = $(preprocess_color "$COLOR_BORDER"),
text_pripary = $(preprocess_color "$COLOR_TEXT_PRIMARY"),
text_secondary = $(preprocess_color "$COLOR_TEXT_SECONDARY"),
shadow = $(preprocess_color "$COLOR_SHADOW"),
}
EOF
