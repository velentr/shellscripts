#!/bin/sh

if pgrep xcompmgr; then
    echo "Turning xcompmgr OFF"
    pkill xcompmgr &
else
    echo "Turning xcompmgr ON"
    xcompmgr -c &
fi

exit 0
