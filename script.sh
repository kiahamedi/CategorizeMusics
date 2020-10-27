#!/bin/bash 
IFS=$'\n'
files=`ls *mp3`
for i in $files; do
    artist=$( mp3info -p "%a" $i )
    if [ "$artist" ];then
         echo $i
         mkdir -p "$artist"
         mv "$i" "$artist"
    elif [ -d "other" ];then
        mv "$i" "other"
    else
    	mkdir "other"
    	mv "$i" "other"
    fi
done
