#!/bin/bash

echo $PATH > file
IFS=:
while read path
do
	printf "%s\n" $path
done < file

# IFS=:
# printf "%s\n" $PATH

# IFS=:
# echo "$PATH" | while read path
# do
	# printf "%s\n" $path
# done

# IFS=:
# while read -r path
# do
  # printf "%s\n" $path
# done <<< "$PATH"