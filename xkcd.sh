#!/bin/sh

DIR="$HOME/images/xkcd"
VIEWER="feh"

TITLE=`ls $DIR | sed 's/_/\ /g;s/.png//g' | dmenu -i | sed 's/\ /_/g'`
if [ $TITLE ]; then
    FILENAME="$TITLE.png"

    if [ -f $DIR/$FILENAME ]; then
        $VIEWER $DIR/$FILENAME &
    else
        echo "ERROR: File $FILENAME not found."
    fi
fi
