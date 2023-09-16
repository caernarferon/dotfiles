#!/bin/bash

# Path to your eww.scss file
EWWSASS_FILE=~/.config/eww/eww.scss

# Check the current mode by inspecting the CSS in the file
if grep -q 'border-radius: 0px 0px' $EWWSASS_FILE; then
    # Switch to notch mode
    sed -i 's/border-radius: 0px 0px 15px 15px;/border-radius: 15px 15px 15px 15px;/g' $EWWSASS_FILE
    sed -i 's/border-color: #111111 #cba6f7 #cba6f7 #cba6f7;/border-color: #cba6f7;/g' $EWWSASS_FILE
    echo "Switched to notch mode"
    return 0
    sleep 0.5
else
    # Switch to pill mode
    sed -i 's/border-radius: 15px 15px 15px 15px;/border-radius: 0px 0px 15px 15px;/g' $EWWSASS_FILE
    sed -i 's/border-color: #cba6f7;/border-color: #111111 #cba6f7 #cba6f7 #cba6f7;/g' $EWWSASS_FILE
    echo "Switched to pill mode"
    return 0
    sleep 0.5
fi
