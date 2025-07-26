#!/bin/bash
source ~/.config/theming/brown

cat <<EOF
/* Auto-generated Waybar colors */
#waybar {
  background: $COLOR_BG;
  color: $COLOR_FG;
  border-color: $COLOR_BORDER;
  box-shadow: 0 0 8px $COLOR_SHADOW;
}

#waybar .highlight {
  color: $COLOR_ACCENT;
}

#waybar .module {
  background-color: transparent;
  color: $COLOR_TEXT_PRIMARY;
}

#waybar .module .error {
  color: $COLOR_RED;
}

#waybar .module .warning {
  color: $COLOR_YELLOW;
}

#waybar .module .info {
  color: $COLOR_BLUE;
}

#waybar .module .success {
  color: $COLOR_GREEN;
}

#waybar .module .critical {
  color: $COLOR_ORANGE;
}

#waybar .module .secondary-text {
  color: $COLOR_TEXT_SECONDARY;
}
EOF
