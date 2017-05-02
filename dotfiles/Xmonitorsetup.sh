#!/bin/bash

intern=eDP1
extern=HDMI1

# if external monitor is connected, turn on multi-screen display, else turn on single-screen
if xrandr | grep "$extern disconnected"; then
	xrandr --output HDMI1 --off --output VIRTUAL1 --off --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
	echo "single"
else
	xrandr --output HDMI1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output VIRTUAL1 --off --output eDP1 --mode 1920x1080 --pos 0x0 --rotate normal
	echo "multi"
fi

