#!/bin/bash
source ~/.config/theming/brown

cat<<EOF
# === Tofi Config (Generated) ===
fuzzy-match = true
font = JetBrainsMono Nerd Font
font-size = 12

width = 40%
height = 40%
x = 30%
y = 100%

padding-left = 10
padding-top = 4

border-width = 1
outline-width = 0

background-color = $COLOR_BG
text-color = $COLOR_TEXT_PRIMARY
selection-color = $COLOR_BG
selection-background = $COLOR_ACCENT

border-color = $COLOR_BORDER
outline-color = $COLOR_BORDER

prompt-text-color = $COLOR_TEXT_SECONDARY
EOF
