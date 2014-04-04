#!/bin/sh

VIEWER="zathura"

CUR="$HOME"

while [ "$CUR" ] && [ -d "$CUR" ]
do
    cd "$CUR"
    CUR=`echo "$(ls | grep -e "\.pdf" -e "\.djvu" -e "\.ps")
$(ls -d */)" | sed '/^$/d' | sort | dmenu`
done

if [ "$CUR" ] && [ -f "$CUR" ]
then
    $VIEWER "$CUR"
fi

