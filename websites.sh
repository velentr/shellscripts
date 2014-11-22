#!/bin/sh

BOOKMARKS="$HOME/.bookmarks"
BROWSER="dwb"

PAGENAME=`cut -f1 -d' ' < $BOOKMARKS | sed 's/_/\ /g' | sort | rofi -dmenu | sed 's/\ /_/g'`

[ $PAGENAME ] && WEBPAGE=`cat $BOOKMARKS | grep -w $PAGENAME | cut -f2 -d' '`

[ $WEBPAGE ] && $BROWSER $WEBPAGE &
