#!/bin/bash

function myadd {
	echo $@
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

myadd $@


