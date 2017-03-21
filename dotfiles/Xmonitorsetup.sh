#!/bin/bash

intern=eDP1
extern=HDMI1

# if external monitor is connected, turn on multi-screen display, else turn on single-screen
if xrandr | grep "$extern disconnected"; then
	~/.screenlayout/one-screen.sh
	echo "single"
else
	~/.screenlayout/multi-screen.sh
	echo "multi"
fi
