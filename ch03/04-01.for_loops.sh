#!/bin/bash

for var in {1..10}
do
	echo $var 
done

echo
for var in hello world good morning
do	
	echo $var
done

echo
for var in "$@"
do	
	echo $var
done

echo
for var in "$*"
do	
	echo $var
done

