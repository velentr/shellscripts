#!/bin/sh

volume=`amixer get Master | grep Mono:`

if [ "$(echo $volume | grep off)" ]; then
    echo Mute
else
    echo `echo $volume | cut -f4 -d' ' | sed -e 's/%//g' -e 's/\[//g;s/\]//g'`
fi
