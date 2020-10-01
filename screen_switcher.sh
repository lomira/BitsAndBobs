#!/bin/zsh

nbScreen="$1"
if [[ "$nbScreen" == "3" ]] ; then
    xrandr --output DP-4 --mode 1920x1080 --output DP-2 --primary --mode 1920x1080 --rate 144 --right-of DP-4 --output HDMI-0 --mode 1920x1080 --right-of DP-2
fi

if [[ "$nbScreen" == "2" ]] ; then
    xrandr --output DP-4 --mode 1920x1080 --output DP-2 --primary --mode 1920x1080 --rate 144 --right-of DP-4 --output HDMI-0 --same-as DP-4
fi
