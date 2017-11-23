#!/bin/bash

intern=eDP-1
extern=HDMI-1

# if external monitor is connected, turn on multi-screen display, else turn on single-screen
if xrandr | grep "$extern disconnected"; then
	xrandr --output HDMI-1 --off --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
	echo "single"
else
	xrandr --output HDMI-1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal
	echo "multi"
fi

