#!/bin/bash
current_dir=$(dirname "$(realpath "$0")")
source "$current_dir"/env/bin/activate
cd "$current_dir"
python render.py

