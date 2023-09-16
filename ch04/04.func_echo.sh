#!/bin/bash
# using the echo to return a value

function double {
	read -p "Enter a value: " value
	echo $value	>&2			
	local result=$[ $value * 2 ]
	echo $result
} 

echo "Main routine begins"
# double
ret=$(double)			
echo "The returned new value is : $ret"
echo "Main routine ends"

