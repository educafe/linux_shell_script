#!/bin/bash

function myadd {
	local result=$[$1 + $2]
	echo $result
}

function mysub {
	echo $[$2 - $1]
}


read -p "Input two numbers to add : " num1 num2
myadd $num1 $num2
echo "RESULT="$result

mysub $num2 $num1

