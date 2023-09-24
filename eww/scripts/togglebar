#!/bin/bash


if grep -q 'border-radius: 0px 0px' ~/.config/eww/eww.scss
then
    sed -i 's/border-radius: 0px 0px 15px 15px;/border-radius: 15px 15px 15px 15px;/g' ~/.config/eww/eww.scss
    sed -i 's/border-color: #111111 #cba6f7 #cba6f7 #cba6f7;/border-color: #cba6f7;/g' ~/.config/eww/eww.scss
    sed -i 's/:y "0%"/:y "1%"/g' ~/.config/eww/windows/bar.yuck
    echo "Switched to pill mode"
    exit 0
else
    sed -i 's/border-radius: 15px 15px 15px 15px;/border-radius: 0px 0px 15px 15px;/g' ~/.config/eww/eww.scss
    sed -i 's/border-color: #cba6f7;/border-color: #111111 #cba6f7 #cba6f7 #cba6f7;/g' ~/.config/eww/eww.scss
    sed -i 's/:y "1%"/:y "0%"/g' ~/.config/eww/windows/bar.yuck
    echo "Switched to notch mode"
    exit 0
fi

