#!/bin/sh

# infinite loop trying to maximize the chromium-browser window
while true
do
    WIDTH=$(xrandr 2>/dev/null | grep "Screen 0" | awk '{print $4}')
    HEIGHT=$(xrandr 2>/dev/null | grep "Screen 0" | awk '{print $6}')
    WINDOWID=$(xdotool search --onlyvisible --name "chromium")

    xdotool windowsize $WINDOWID $WIDTH $HEIGHT >/dev/null 2>&1

	sleep 10
done
