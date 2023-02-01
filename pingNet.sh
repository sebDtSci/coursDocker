#!/bin/bash

online=0
offline=0

for i in 192.168.1.{1..255}

do
	ping -c 1 "$i" > /dev/null
	if [ $? -eq 0 ] > /dev/null;then
		((online++))
		echo "$i" >> online.txt

	else
		((offline++))
		echo "$i" >> offline.txt
	fi
done

echo "on a $online utilisateurs en ligne et $offline hors ligne"
