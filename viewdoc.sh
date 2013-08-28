#!/bin/sh

DIR="$HOME/library"
VIEWER="zathura"

TITLE=`ls $DIR | grep -e .pdf -e .djvu -e .ps | sed 's/_/\ /g;s/.pdf//g;s/.djvu//g;s/.ps//g' | dmenu -i | sed 's/\ /_/g'`

[ "$TITLE" ] && FILENAME=`ls $DIR | grep -w -e $TITLE.pdf -e $TITLE.djvu -e $TITLE.ps`

[ -f $DIR/$FILENAME ] && $VIEWER $DIR/$FILENAME &
