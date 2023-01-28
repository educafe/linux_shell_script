#!/bin/bash

for i in {1..5}
do
	echo "Looping -- $i"
	sleep 1
done

echo
for str in hello world good morning
do	
	echo $str
done

echo
for str in $@
do	
	echo $str
done

for str in "$*"
do	
	echo $str
done

