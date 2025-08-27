#!/bin/bash
CURRENT_DIR=$(dirname "$(realpath "$0")")
SCRIPTS_DIR=scripts
source "$CURRENT_DIR"/env/bin/activate
cd "$CURRENT_DIR"
python "$SCRIPTS_DIR/render.py"
python "$SCRIPTS_DIR/hook_runner.py"
