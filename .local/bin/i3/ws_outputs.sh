#!/usr/bin/env bash

CONNECTED=$(xrandr -q | grep "$DISPLAY1 connected" | cut -d ' ' -f1)
OUTPUT=$(echo "$CONNECTED" | rofi -dmenu -p "Move workspace to output")
i3-msg move workspace to output $OUTPUT
