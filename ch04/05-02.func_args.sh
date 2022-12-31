#!/bin/bash

function myadd {
	for var in $@
	do
		rst=$[$rst + $var]
	done
	echo ${rst}
}

myadd 10 20 30 40 50
