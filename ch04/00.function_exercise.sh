#!/bin/bash

function add {
	# read -p "Input two numbers : " num1 num2 <<< "40 50"
	# echo $[$num1 + $num2]
	# rst=$[$num1 + $num2]
	# local rst=$[$num1 + $num2]
	# return $rst
	echo $[$1 + $2]
}

sub(){
	echo $[$2 - $1]
}

add
# echo $rst
# echo $?
# add 100 200
# rst=$(add $1 $2)
# add $2 $1
# rst=$(add $1 $2)

