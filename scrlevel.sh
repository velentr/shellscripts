#!/bin/sh

DIR="/sys/class/backlight/intel_backlight/"

cur=`cat $DIR/brightness`
max=`cat $DIR/max_brightness`

echo "$(($cur * 100 / $max))%"
