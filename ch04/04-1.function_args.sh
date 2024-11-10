#!/bin/bash

myadd() {
	echo $@
	local result=0
	for var in $@
	do
		result=$[$result + $var]
	done
	echo $result
}

read -p "Input more than two numbers to add : " nums
myadd $nums

