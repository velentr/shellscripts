#!/bin/sh

if pgrep compton; then
    echo "Turning xcompmgr OFF"
    pkill compton &
else
    echo "Turning xcompmgr ON"
    compton -f -D8 -b
fi

exit 0
