#!/usr/bin/env bash

ICON=$HOME/.config/i3/lock-icon.png
TMPBG=/tmp/lock_screen.png

(( $# )) && { icon=$1; }

scrot $TMPBG
convert $TMPBG -scale 10% -scale 1000% $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG 

i3lock -u -i $TMPBG
