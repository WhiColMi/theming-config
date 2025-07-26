#!/bin/bash

source ~/.config/theming/brown

cat > ~/.config/wofi/style.css <<EOF
@define-color color_bg ${COLOR_BG};
@define-color color_bg_alt ${COLOR_BG_ALT};
@define-color color_fg ${COLOR_FG};
@define-color color_accent ${COLOR_ACCENT};
@define-color color_dark ${COLOR_DARK};
@define-color color_light ${COLOR_LIGHT};
@define-color color_border ${COLOR_BORDER};
@define-color color_shadow ${COLOR_SHADOW};
EOF
