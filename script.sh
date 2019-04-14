#!/bin/bash 
IFS=$'\n'
files=`ls *mp3`
for i in $files; do
    artist=$( mp3info -p "%a" $i )
    echo $i
    mkdir -p "$artist"
    mv "$i" "$artist" 
done
