#!/usr/bin/env bash
while :
do
	xset q | awk '/timeout:/ {timeout=$2} /DPMS is/ {dpms=$3} END { print dpms, timeout}'
done
