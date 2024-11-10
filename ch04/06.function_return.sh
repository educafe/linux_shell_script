#!/bin/bash

myadd() {
	echo $@ >&2
	local result=0
	for var in $@
	do
		result=$[$result + $var]
	done
	
	if [ $result -lt 255 ]; then
		return 1
	else
		return 2
	fi
}

if [ $# -lt 2 ]; then
	echo "Usage : $0 num1 num2 [num3..]"
	exit 10
fi

myadd $1 $2

if [ $? -eq 1 ]; then
	echo "Good"
else
	echo "Not good"
fi

