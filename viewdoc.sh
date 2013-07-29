#!/bin/sh

DIR="$HOME/library"
VIEWER="zathura"

TITLE=`ls $DIR | grep -e .pdf -e .djvu | sed 's/_/\ /g;s/.pdf//g;s/.djvu//g' | dmenu -i | sed 's/\ /_/g'`

[ "$TITLE" ] && FILENAME=`ls $DIR | grep -w -e $TITLE.pdf -e $TITLE.djvu`

[ -f $DIR/$FILENAME ] && $VIEWER $DIR/$FILENAME &
