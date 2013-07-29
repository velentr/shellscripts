#!/bin/sh

volume=`amixer get Master | grep Mono:`

if [ `echo $volume | grep off` ]; then
    echo Mute
else
    echo `echo $volume | awk '{ print $4 }' | sed 's/\[//g;s/\]//g'`
fi
