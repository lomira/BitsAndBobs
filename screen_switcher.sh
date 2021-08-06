#!/bin/zsh

nbScreen="$1"
if [[ "$nbScreen" == "3" ]] ; then
    xrandr --output DP-4 --mode 1920x1080 --output DP-2 --primary --mode 1920x1080 --rate 144 --right-of DP-4 --output HDMI-0 --mode 1920x1080 --right-of DP-2
fi

if [[ "$nbScreen" == "2" ]] ; then
    nvidia-settings --assign "CurrentMetaMode=DPY-6: nvidia-auto-select @1920x1080 +0+0 {ViewPortIn=1920x1080, ViewPortOut=1920x1080+0+0}, DPY-1: nvidia-auto-select @1920x1080 +0+0 {ViewPortIn=1920x1080, ViewPortOut=1920x1080+0+0}, DPY-4: nvidia-auto-select @2560x1440 +1920+0 {ViewPortIn=2560x1440, ViewPortOut=2560x1440+0+0}"
fi
