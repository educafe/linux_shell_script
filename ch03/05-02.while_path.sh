#!/bin/bash
IFS=:
printf "%s\n" $PATH

echo $PATH > file
IFS=:
while read path
do
	printf "%s\n" $path
done < file

# IFS=:
# while read var 
# do
	# printf "%s\n" $var
# done <<< $PATH

