#!/bin/bash
# To build list from command execution

#read full file and output word by word
for line in $(cat file)
do
	echo $line
done

#read full file and output word by word
for line in $(cat file)
do
	echo "$line"
done

#read full file and output just one line 
for line in "$(cat file)"
do
	echo $line
done

#read full file and output line by line
for line in "$(cat file)"
do
	echo "$line"
done 
	