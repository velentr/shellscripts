#!/bin/sh 

(for f in *.pdf; do
    echo "$f $(pdfinfo "$f" 2> /dev/null | grep Pages | awk '{ print $2 }')"
done;

for f in *.djvu; do
    echo "$f $(echo "n" | djvused "$f")"
done;

for f in *.ps; do
    echo "$f $(psselect -p_1 $f 2>&1 >/dev/null | cut -f1 -d' ' | sed 's/\[//;s/\]//')"
done) | sort -nrk2

