#!/bin/sh

terminal="st -e"
tmpfile="/tmp/ddict.lookup"

word=$(xsel -o | dmenu -p 'Dict Lookup:') || exit
while [[ $word != "" ]]; do
    oup=$(dict "$word" 2>&1)
    if [[ $? -eq 21 ]]; then
        word=$(echo -e "$oup" | cut -d: -f2 | xargs -n1 | sort -u -f | dmenu -i -p 'Did you mean:') || exit
    else
        echo -e "$oup" > "$tmpfile"
        break
    fi
done

$terminal less "$tmpfile"
