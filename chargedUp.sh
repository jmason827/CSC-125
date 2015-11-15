#!/bin/bash

maxcapacity=$(ioreg -l | grep -i maxcapacity | cut -d "=" -f 2 )
percent=0.95
limit=$(echo "$percent * $maxcapacity" | bc -l | cut -d "." -f 1 )

while true;
do

currentcapacity=$(ioreg -l | grep -i maxcapacity | cut -d "=" -f 2 )

if [ $currentcapacity -gt $limit ];
then
mplayer ./Music/chime.wav
fi

sleep 30

done
