#!bin/bash
# Check the license in the project root!
# Author Christian Rebischke

# check for root user
if [[ $EUID -eq 0 ]]; then
    echo "Do not run as root!"
    exit 1
fi

# shallow clone base16-termite
git clone https://github.com/khamer/base16-termite \
    "$HOME"/.config/termite/base16-termite --depth 1

# shallow clone base16-i3
git clone https://github.com/khamer/base16-i3 \
    "$HOME"/.config/i3/base16-i3 --depth 1

# shallow clone base16-rofi
git clone https://github.com/0xdec/base16-rofi \
    "$HOME"/.local/share/rofi/themes/base16-rofi --depth 1
