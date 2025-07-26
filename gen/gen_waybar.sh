#!/bin/bash

cat ~/.config/waybar/style.base.css > ~/.config/waybar/style.css
~/.config/theming/adapters/waybar_adapter.sh >> ~/.config/waybar/style.css

echo "config: generated waybar" >> $1
