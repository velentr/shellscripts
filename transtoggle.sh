#!/bin/sh

if pgrep compton; then
    echo "Turning xcompmgr OFF"
    pkill compton &
else
    echo "Turning xcompmgr ON"
    compton -c -f -i0.7 -D8 -b
fi

exit 0
