#!/bin/bash

maxcapacity=$(ioreg -l | grep -i maxcapacity | cut -d "=" -f 2 )

while true;
do

currentcapacity=$(ioreg -l | grep -i maxcapacity | cut -d "=" -f 2 )

if [ $currentcapacity == $maxcapacity ];
then
mplayer ./Music/ChargedUp.m4a
fi

sleep 30

done
