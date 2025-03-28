#!/bin/bash
function bin_value {
    if [ "$1" == "0" ]; then
        xset q | grep "Num Lock:    on" > /dev/null && xdotool key Num_Lock
        xset q | grep "Caps Lock:   on" > /dev/null && xdotool key Caps_Lock
        xset -led named "Scroll Lock"
    elif [ "$1" == "1" ]; then
        xset q | grep "Num Lock:    on" > /dev/null && xdotool key Num_Lock
        xset q | grep "Caps Lock:   on" > /dev/null && xdotool key Caps_Lock
        xset led named "Scroll Lock"
    elif [ "$1" == "2" ]; then
        xset q | grep "Num Lock:    on" > /dev/null && xdotool key Num_Lock
        xset q | grep "Caps Lock:   on" > /dev/null || xdotool key Caps_Lock
        xset -led named "Scroll Lock"
    elif [ "$1" == "3" ]; then
        xset q | grep "Num Lock:    on" > /dev/null && xdotool key Num_Lock
        xset q | grep "Caps Lock:   on" > /dev/null || xdotool key Caps_Lock
        xset led named "Scroll Lock"
    elif [ "$1" == "4" ]; then
        xset q | grep "Num Lock:    on" > /dev/null || xdotool key Num_Lock
        xset q | grep "Caps Lock:   on" > /dev/null && xdotool key Caps_Lock
        xset -led named "Scroll Lock"
    elif [ "$1" == "5" ]; then
        xset q | grep "Num Lock:    on" > /dev/null || xdotool key Num_Lock
        xset q | grep "Caps Lock:   on" > /dev/null && xdotool key Caps_Lock
        xset led named "Scroll Lock"
    elif [ "$1" == "6" ]; then
        xset q | grep "Num Lock:    on" > /dev/null || xdotool key Num_Lock
        xset q | grep "Caps Lock:   on" > /dev/null || xdotool key Caps_Lock
        xset -led named "Scroll Lock"
    elif [ "$1" == "7" ]; then
        xset q | grep "Num Lock:    on" > /dev/null || xdotool key Num_Lock
        xset q | grep "Caps Lock:   on" > /dev/null || xdotool key Caps_Lock
        xset led named "Scroll Lock"
    fi    
}
function delay {
    [ "$otp" == "randelay" ] || sleep $otp
    rand_end=$((1 + RANDOM % 9))
    rand_beg="0."
    rand="$rand_beg$rand_end"
    [ "$otp" == "randelay" ] && sleep $rand
}
xset q | grep "Num Lock:    on" > /dev/null && xdotool key Num_Lock
xset q | grep "Caps Lock:   on" > /dev/null && xdotool key Caps_Lock
xset -led named "Scroll Lock"
id=1
otp="$1"
type="$2"
[ "$type" == "" ] && type="trail"
[ "$otp" == "" ] && otp="0.5"
if [ "$type" == "trail" ]; then
    while true; do
        [ "$id" == "1" ] && xdotool key Num_Lock
        [ "$id" == "2" ] && xdotool key Caps_Lock
        [ "$id" == "3" ] && xset led named "Scroll Lock"
        [ "$id" == "4" ] && xdotool key Num_Lock
        [ "$id" == "5" ] && xdotool key Caps_Lock
        [ "$id" == "6" ] && xset -led named "Scroll Lock"
        [ "$id" == "7" ] && id=0
        id=$(($id + 1))
        delay
    done
elif [ "$type" == "dot" ]; then
    while true; do
        [ "$id" == "1" ] && xdotool key Num_Lock
        [ "$id" == "2" ] && xdotool key Caps_Lock
        [ "$id" == "2" ] && xdotool key Num_Lock
        [ "$id" == "3" ] && xdotool key Caps_Lock
        [ "$id" == "3" ] && xset led named "Scroll Lock"
        [ "$id" == "4" ] && xset -led named "Scroll Lock"
        [ "$id" == "4" ] && id=0
        id=$(($id + 1))
        delay
    done
elif [ "$type" == "expand" ]; then
    while true; do
        [ "$id" == "1" ] && xdotool key Caps_Lock
        [ "$id" == "2" ] && xdotool key Caps_Lock
        [ "$id" == "2" ] && xdotool key Num_Lock 
        [ "$id" == "2" ] && xset led named "Scroll Lock"
        [ "$id" == "3" ] && xdotool key Num_Lock 
        [ "$id" == "3" ] && xset -led named "Scroll Lock"
        [ "$id" == "3" ] && id=0
        id=$(($id + 1))
        delay
    done
elif [ "$type" == "bouncy" ]; then
    while true; do
        [ "$id" == "1" ] &&  xset q | grep "Caps Lock:   on" > /dev/null && xdotool key Caps_Lock
        [ "$id" == "1" ] && xdotool key Num_Lock
        [ "$id" == "2" ] && xdotool key Caps_Lock
        [ "$id" == "2" ] && xdotool key Num_Lock 
        [ "$id" == "3" ] && xset led named "Scroll Lock"
        [ "$id" == "3" ] && xdotool key Caps_Lock 
        [ "$id" == "4" ] && xset -led named "Scroll Lock"
        [ "$id" == "4" ] && xdotool key Caps_Lock 
        [ "$id" == "4" ] && id=0
        id=$(($id + 1))
        delay
    done
elif [ "$type" == "short" ]; then
    while true; do
        [ "$id" == "1" ] && xdotool key Num_Lock
        [ "$id" == "2" ] && xdotool key Caps_Lock
        [ "$id" == "3" ] && xset led named "Scroll Lock"
        [ "$id" == "3" ] && xdotool key Num_Lock
        [ "$id" == "4" ] && xdotool key Caps_Lock
        [ "$id" == "5" ] && xset -led named "Scroll Lock"
        [ "$id" == "5" ] && id=0
        id=$(($id + 1))
        delay
    done
elif [ "$type" == "countup" ]; then
    while true; do
        [ "$id" == "1" ] && xdotool key Num_Lock
        [ "$id" == "2" ] && xdotool key Caps_Lock
        [ "$id" == "3" ] && xset led named "Scroll Lock"
        [ "$id" == "3" ] && break
        id=$(($id + 1))
        delay
    done
elif [ "$type" == "countdown" ]; then
    xdotool key Num_Lock
    xdotool key Caps_Lock
    xset led named "Scroll Lock"
    while true; do
        [ "$id" == "2" ] && xset -led named "Scroll Lock"
        [ "$id" == "3" ] && xdotool key Caps_Lock
        [ "$id" == "4" ] && xdotool key Num_Lock
        [ "$id" == "4" ] && break
        id=$(($id + 1))
        delay
    done
elif [ "$type" == "chaos" ]; then
    while true; do
        id=$((1 + RANDOM % 4))
        [ "$id" == "1" ] && xset -led named "Scroll Lock"
        [ "$id" == "2" ] && xdotool key Caps_Lock
        [ "$id" == "3" ] && xdotool key Num_Lock
        [ "$id" == "4" ] && xset led named "Scroll Lock"
        delay
    done
elif [ "$type" == "restore_numlock" ]; then
    xdotool key Num_Lock
elif [ "$type" == "blink" ]; then
    while true; do
        [ "$id" == "1" ] && xset led named "Scroll Lock"
        [ "$id" == "2" ] && xset -led named "Scroll Lock"
        [ "$id" == "2" ] && id=0
        xdotool key Caps_Lock
        xdotool key Num_Lock
        id=$(($id + 1))
        delay
    done
elif [ "$type" == "blink_numlock" ]; then
    while true; do
        xdotool key Num_Lock
        delay
    done
elif [ "$type" == "blink_capslock" ]; then
    while true; do
        xdotool key Caps_Lock
        delay
    done
elif [ "$type" == "blink_scrolllock" ]; then
    while true; do
        [ "$id" == "1" ] && xset led named "Scroll Lock"
        [ "$id" == "2" ] && xset -led named "Scroll Lock"
        [ "$id" == "2" ] && id=0
        id=$(($id + 1))
        delay
    done
elif [ "$type" == "wave" ]; then
    while true; do
        [ "$id" == "1" ] && xset q | grep "Num Lock:    off" > /dev/null && xdotool key Num_Lock
        [ "$id" == "2" ] && xdotool key Caps_Lock
        [ "$id" == "3" ] && xset led named "Scroll Lock"
        [ "$id" == "4" ] && xset -led named "Scroll Lock"
        [ "$id" == "5" ] && xdotool key Caps_Lock
        [ "$id" == "5" ] && id=0
        id=$(($id + 1))
        delay
    done
elif [ "$type" == "wave_reverse" ]; then
    while true; do
        [ "$id" == "1" ] && xset led named "Scroll Lock"
        [ "$id" == "2" ] && xdotool key Caps_Lock
        [ "$id" == "3" ] && xdotool key Num_Lock
        [ "$id" == "4" ] && xdotool key Num_Lock
        [ "$id" == "5" ] && xdotool key Caps_Lock
        [ "$id" == "5" ] && id=0
        id=$(($id + 1))
        delay
    done
elif [ "$type" == "counter" ]; then
    id="0"
    start="1"
    while true; do
        [ "$start" == "0" ] && [ "$id" == "1" ] && echo "Warning: Integer overflow"
        [ "$start" == "1" ] && [ "$id" == "1" ] && start="0"
        bin_value "$id"
        [ "$id" == "7" ] && id=0
        id=$(($id + 1))
        delay
    done
elif [ "$type" == "counter_down" ]; then
    id=7
    while true; do
        bin_value "$id"
        [ "$id" == "0" ] && id=8
        id=$(($id - 1))
        delay
        [ "$id" == "0" ] && echo "Warning: Integer underflow"
    done
elif [ "$type" == "randint" ]; then
    id=$((1 + RANDOM % 7))
    bin_value "$id"
elif [ "$type" == "randloop" ]; then
    while true; do
        id=$((1 + RANDOM % 7))
        bin_value "$id"
        delay
    done
elif [ "$type" == "fib" ]; then
    bin_value "0"; delay
    bin_value "1"; delay
    bin_value "1"; delay
    bin_value "2"; delay
    bin_value "3"; delay
    bin_value "5"; delay
    bin_value "0"; delay
    echo "Error: Integer overflow"
    exit 1
fi
