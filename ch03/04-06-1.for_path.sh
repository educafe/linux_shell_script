#!/bin/bash
# IFS test
function path {
	list=$(echo $PATH)
	IFS=:
	for var in $list
	do
		echo "$var"
	done
	IFS=
}

function path {
	local list=$(echo $PATH)
	local IFS=:
	for var in $list
	do
		echo "$var"
	done
}
