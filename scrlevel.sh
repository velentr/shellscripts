#!/bin/sh

DIR="/sys/class/backlight/acpi_video1/"

cur=`cat $DIR/brightness`
max=`cat $DIR/max_brightness`

echo "$(($cur * 100 / $max))%"
