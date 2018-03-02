#!/bin/bash
# Check out the license file in the projecr root directory
# Author: Christian Rebischke

# check for root
if [[ $EUID -eq 0 ]]; then
    echo "Do not run as root!"
    exit 1
fi

# Termite
cat "$HOME"/.config/termite/config.base > "$HOME"/.config/termite/config
cat "$HOME"/.config/termite/base16-termite/themes/"$1".config \
    >> "$HOME"/.config/termite/config

# i3
cat "$HOME"/.config/i3/config.base > "$HOME"/.config/i3/config
cat "$HOME"/.config/i3/base16-i3/colors/"$1".config \
    >> "$HOME"/.config/i3/config

