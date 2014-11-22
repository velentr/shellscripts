#!/bin/sh

NAME="$(echo "" | rofi -dmenu -p 'xkcd: ' | sed 's/\ /_/g').png"
DIR="$HOME/images/xkcd/$NAME"
URL="http://imgs.xkcd.com/comics/$NAME"

[ $NAME ] && curl $URL -o $DIR -s
