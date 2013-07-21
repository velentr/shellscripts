#!/bin/sh

NAME="$(echo "" | dmenu -p 'xkcd: ' | sed 's/\ /_/g').png"
DIR="$HOME/images/xkcd/$NAME"
URL="http://imgs.xkcd.com/comics/$NAME"

curl $URL -o $DIR -s
