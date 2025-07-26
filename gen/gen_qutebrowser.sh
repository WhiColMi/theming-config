#!/bin/bash

~/.config/theming/adapters/general_adapter.sh > ~/.config/qutebrowser/config.py
cat ~/.config/qutebrowser/config.base.py >> ~/.config/qutebrowser/config.py

echo "config: generated qutebrowser config" >> $1
