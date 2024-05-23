#!/bin/bash

function myadd {
	echo $[$num1 + $num2]
}

read -p "Input two numbers to add : " num1 num2
myadd

