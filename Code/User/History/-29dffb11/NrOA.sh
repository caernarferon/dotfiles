#!/bin/bash

# Path to your eww.scss file
EWWFILE=~/.config/eww/eww.scss

# Check the current mode by inspecting the CSS in the file
if grep -q 'border-radius: 0px 0px' $EWWFILE; then
    # Switch to notch mode
    sed -i 's/border-radius: 0px 0px 15px 15px;/border-radius: 15px 15px 15px 15px;/g' $EWWFILE
    sed -i 's/border-color: #111111 #cba6f7 #cba6f7 #cba6f7;/border-color: #cba6f7;/g' $EWWFILE
    sed -i 's/:y "0%"/:y "1%"/g' ~/.config/eww/windows/bar.yuck
    echo "Switched to notch mode"
    sleep 0.5
    exit 0
else
    sed -i 's/border-radius: 15px 15px 15px 15px;/border-radius: 0px 0px 15px 15px;/g' $EWWFILE
    sed -i 's/border-color: #cba6f7;/border-color: #111111 #cba6f7 #cba6f7 #cba6f7;/g' $EWWFILE
    sed -i 's/:y "1%"/:y "0%"/g' ~/.config/eww/windows/bar.yuck
    echo "Switched to pill mode"
    sleep 0.5
    exit 0.5
fi

