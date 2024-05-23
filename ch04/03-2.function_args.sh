#!/bin/bash

function myadd {
	local result=$[$1 + $2]
	echo $result
}

function mysub {
	echo $[$2 - $1]
}


if [ $# -lt 2 ]; then
	echo "Usage : $0 num1 num2"
	exit 10
fi

myadd $1 $2
echo "RESULT="$result

mysub $2 $1

