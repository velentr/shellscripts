#!/bin/bash

METRIC=0 # 0 for F, 1 for C

if [ -z $1 ]; then
    echo "usage: weather <locationcode>"
    exit 0;
fi

curl -s http://rss.accuweather.com/rss/liveweather_rss.asp\?metric\=${METRIC}\&locCode\=$1 | grep -i "<title>currently" | sed 's/^.*Currently: //g;s/F.*$/F/g;s/:/,/g'
