#!/bin/sh

TERMINAL="st"

cmd=`netcfg -l | dmenu -i`

[ "$cmd" ] && "${SHELL:-/bin/sh}" -c "$TERMINAL -e sh -c \"sudo netcfg -a && sudo netcfg \"$cmd\"\" &" &
