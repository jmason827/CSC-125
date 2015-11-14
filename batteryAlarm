#!/bin/bash

maxcapacity=$(ioreg -l | grep -i maxcapacity | cut -d "=" -f 2 )

percent=0.05

limit=$(echo "$percent * $maxcapacity" | bc -l | cut -d "." -f 1)


while true;
do

currentcapacity=$(ioreg -l | grep -i currentcapacity | cut -d "=" -f 2 )

if [ $currentcapacity -lt $limit ]; 
then
mplayer ./Music/lowBatteryAlarm.mp3
fi

sleep 30

done
