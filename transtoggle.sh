#!/bin/sh

if pgrep xcompmgr; then
    echo "Turning xcompmgr OFF"
    pkill xcompmgr &
else
    echo "Turning xcompmgr ON"
    xcompmgr -n -f -F -D8 &
fi

exit 0
