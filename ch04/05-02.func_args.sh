#!/bin/bash

function myfunc {
	for var in $1 $2 $3 $4
	do
		echo $var
	done
}

myfunc $1 $3 $2 $4
