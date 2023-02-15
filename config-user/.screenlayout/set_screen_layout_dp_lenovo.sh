#!/bin/sh
xrandr --newmode "1920x1200_60.00"  193.25  1920 2056 2256 2592  1200 1203 1209 1245 -hsync +vsync

xrandr --addmode eDP1 1920x1200_60.00

xrandr --output eDP1 --primary --mode 1920x1200_60.00 --pos 1920x0 --rotate normal --output DP1 --off --output DP2 --off --output DP3 --mode 1920x1080 --pos 0x0 --rotate normal --output DP4 --off --output VIRTUAL1 --off
