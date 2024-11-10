#!/bin/bash

myadd() {
	local result=$[$num1 + $num2]
	echo $result
}

read -p "Input two numbers to add : " num1 num2
myadd 
# echo "RESULT="$result

