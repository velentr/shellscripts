#!/bin/sh 

count=0

for f in *.pdf; do
    count=`expr $count + $(pdfinfo "$f" 2> /dev/null | grep -a -e Pages | awk '{ print $2 }')`
done

for f in *.djvu; do
    count=`expr $count + $(echo "n" | djvused "$f")`
done

for f in *.ps; do
    count=`expr $count + $(psselect -p_1 $f 2>&1 >/dev/null | cut -f1 -d' ' | sed 's/\[//;s/\]//')`
done

echo $count
