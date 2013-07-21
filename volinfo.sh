#!/bin/bash

volume=`amixer get Master | grep Mono:`

if [[ `grep off <<< $volume` ]]; then
    echo Mute
else
    echo `awk '{ print $4 }' <<< $volume | sed 's/\[//g;s/\]//g'`
fi
