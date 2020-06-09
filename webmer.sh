#!/bin/bash

filmy=$(wc -l < pliki.txt)
echo $filmy

for (( i = 1; i < $filmy; i++ )); do
    filmik=$(sed "${i}q;d" pliki.txt)
    echo $filmik
    ffmpeg -ss 00:00:00 -i "$filmik" -to 00:00:01 -c copy sekunda`ls sekunda* | wc -l`.mkv
  #  ffmpeg -i "$filmik" -ss 00:00:20 -to 00:00:21 -c:v copy -c:a copy output`ls output* | wc -l`.mkv
done
