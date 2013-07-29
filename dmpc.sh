#!/bin/sh

cmd=`echo "add
insert
clear
crop
listall
load
ls
lsplaylists
next
pause
play
prev
random
repeat
single
consume
save
shuffle
stop
toggle
update
start mpd
kill mpd" | dmenu -i -p "$(mpc -f %file% | head -n 1 | sed 's/.mp3//g')"`

case "$cmd" in
    add)
        mpc -q add `mpc -q listall | sort | dmenu -i -p 'add song: '`
        ;;
    insert)
        mpc -q insert `mpc -q listall | sort | dmenu -i -p 'insert song: '`
        ;;
    clear)
        mpc -q clear
        ;;
    crop)
        mpc -q crop
        ;;
    listall)
        mpc -q listall | sort | dmenu -i
        ;;
    load)
        mpc -q load `mpc -q lsplaylists | sort | dmenu -i -p 'load playlist: '`
        ;;
    ls)
        mpc -q ls | sort | dmenu -i
        ;;
    lsplaylists)
        mpc -q lsplaylists | sort | dmenu -i
        ;;
    next)
        mpc -q next
        ;;
    pause)
        mpc -q pause
        ;;
    play)
        mpc -q play
        ;;
    prev)
        mpc -q prev
        ;;
    random)
        mpc -q random `echo "on
off" | dmenu -i -p 'random: '`
        ;;
    repeat)
        mpc -q repeat `echo "on
off" | dmenu -i -p 'repeat: '`
        ;;
    single)
        mpc -q single `echo "on
off" | dmenu -i -p 'single: '`
        ;;
    consume)
        mpc -q consume `echo "on
off" | dmenu -i -p 'consume: '`
        ;;
    save)
        mpc -q save `echo "" | dmenu -i -p 'playlist name: '`
        ;;
    shuffle)
        mpc -q shuffle
        ;;
    stop)
        mpc -q stop
        ;;
    toggle)
        mpc -q toggle
        ;;
    update)
        mpc -q update
        ;;
    start\ mpd)
        mpd
        ;;
    kill\ mpd)
        mpd --kill
        ;;
esac
