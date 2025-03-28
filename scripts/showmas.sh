#!/bin/bash
while read line; do
day=`echo $line | cut -c 1-2`
rest=`echo $line | cut -c 3-8`
if [ $day == "X=" ]
then
X=$rest
elif [ $day == "Y=" ]
then
Y=$rest
fi
done< <(xdotool getmouselocation --shell)
xdotool mousemove_relative --polar 270 1280
xdotool mousemove --screen 0 20 860
xdotool click 1
xdotool mousemove_relative --polar 90 1280
xdotool mousemove --screen 0 $X $Y
