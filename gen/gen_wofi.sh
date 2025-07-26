#!/bin/bash

~/.config/theming/adapters/wofi_adapter.sh > ~/.config/wofi/style.css
cat ~/.config/wofi/style.base.css >> ~/.config/wofi/style.css

echo "config: generated wofi" >> $1
