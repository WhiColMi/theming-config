#!/bin/bash

source ~/.config/theming/brown

hyprcolor() {
    local input="${1#\#}"
    local r g b a

    # Parse components
    r=$((16#${input:0:2}))
    g=$((16#${input:2:2}))
    b=$((16#${input:4:2}))

    if [[ ${#input} -eq 8 ]]; then
        a=$((16#${input:6:2}))
        echo "rgba($r,$g,$b,$a)"
    else
        echo "rgb($r,$g,$b)"
    fi
}


cat <<EOF

# Auto-generated Hyprland colors from brown

general {
    col.active_border = $(hyprcolor "$COLOR_ACCENT")
    col.inactive_border = $(hyprcolor "$COLOR_BORDER")
}
decoration {
    shadow {
        color = $(hyprcolor "$COLOR_SHADOW")
    }
}
misc {
    background_color = $(hyprcolor "$COLOR_BG")
}
EOF
