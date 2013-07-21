#!/bin/sh

BOOKMARKS="$HOME/.bookmarks"
BROWSER="luakit"

PAGENAME="$(cat $BOOKMARKS | awk '{print $1}' | sed 's/_/\ /g' | sort | dmenu -i | sed 's/\ /_/g')"

[[ $PAGENAME ]] && WEBPAGE="$(cat $BOOKMARKS | grep -w $PAGENAME | awk '{print $2}')"

[[ $WEBPAGE ]] && $BROWSER $WEBPAGE &
