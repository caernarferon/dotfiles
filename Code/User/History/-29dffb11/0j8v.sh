#!/bin/bash

# Path to your eww.scss file

# Check the current mode by inspecting the CSS in the file
# current_mode=$(grep -q 'border-radius: 0px 0px 15px 15px;' ~/.config/eww/eww.scss && echo "pill" || echo "notch")
if grep -q 'border-radius: 0px 0px' ~/.config/eww/eww.scss; then
    current_mode = "notch"
else
    current_mode = "pill"
fi
if [ "$current_mode" == "pill" ]; then
    # Switch to notch mode
    sed -i 's/border-radius: 0px 0px 15px 15px;/border-radius: 15px 15px 15px 15px;/g' ~/.config/eww/eww.scss
    sed -i 's/border-color: #111111 #cba6f7 #cba6f7 #cba6f7;/border-color: #cba6f7;/g' ~/.config/eww/eww.scss
    echo "Switched to notch mode"
    sleep 0.5
else
    # Switch to pill mode
    sed -i 's/border-radius: 15px 15px 15px 15px;/border-radius: 0px 0px 15px 15px;/g' ~/.config/eww/eww.scss
    sed -i 's/border-color: #cba6f7;/border-color: #111111 #cba6f7 #cba6f7 #cba6f7;/g' ~/.config/eww/eww.scss
    echo "Switched to pill mode"
    sleep 0.5
fi
