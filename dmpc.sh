#!/bin/sh

cmd=`echo -e "add\ninsert\nclear\ncrop\nlistall\nload\nls\nlsplaylists\nnext\npause\nplay\nprev\nrandom\nrepeat\nsingle\nconsume\nsave\nshuffle\nstop\ntoggle\nupdate\nstart mpd\nkill mpd" | dmenu -i -p "$(mpc -f %file% | head -n 1 | sed 's/.mp3//g')"`

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
        mpc -q random `echo -e "on\noff" | dmenu -i -p 'random: '`
        ;;
    repeat)
        mpc -q repeat `echo -e "on\noff" | dmenu -i -p 'repeat: '`
        ;;
    single)
        mpc -q single `echo -e "on\noff" | dmenu -i -p 'single: '`
        ;;
    consume)
        mpc -q consume `echo -e "on\noff" | dmenu -i -p 'consume: '`
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
