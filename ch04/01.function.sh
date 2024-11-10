#!/bin/bash

myadd() {
	result=$[$num1 + $num2]
	echo $result
}

num1=10 num2=20
myadd
