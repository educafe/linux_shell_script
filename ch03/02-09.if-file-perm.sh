#!/bin/bash
read -p "Input file path : " fname
if [ -e $fname -a -f $fname ]; then
	if [ -u $fname ]; then
		ls -l $fname
	else	
		echo "$fname is not a file with setuid"
	fi
else
	echo "$fname not exist or not a regular file"
fi
