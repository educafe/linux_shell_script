#!/bin/bash

function myadd {
	echo $@ >&2
	local result=0
	for var in $@
	do
		result=$[$result + $var]
	done
	echo $result
}

if [ $# -lt 2 ]; then
	echo "Usage : $0 num1 num2 [num3..]"
	exit 10
fi

result=$(myadd $@)
echo "RESULT=$result"

