#!/bin/bash

myadd(){
	result=$[$1 + $2]
	echo $result
}

mysub() {
	result=$[$2 - $1]
	echo $result
}


read -p "Input two numbers to add and sub : " num1 num2
myadd $num1 $num2
# echo $result
mysub $num1 $num2
# echo $result

