#!/bin/bash

cat ~/.config/hypr/hyprland.base.conf > ~/.config/hypr/hyprland.conf
~/.config/theming/adapters/hypr_adapter.sh >> ~/.config/hypr/hyprland.conf

echo "config: generated hyprland config" >> $1
