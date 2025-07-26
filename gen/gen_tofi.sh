#!/bin/bash

mkdir -p ~/.config/tofi
~/.config/theming/adapters/tofi_adapter.sh > ~/.config/tofi/config

echo "config: generated tofi config" >> $1
