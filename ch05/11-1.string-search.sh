#!/bin/bash
#String search in a specified directory and its subdirectory

if [ $# -lt 1 ]; then
	echo "Usage : $(basename $0) <directory to search> \"<string to search>\""
	exit
fi

find ${1} -type f -name "*" | xargs egrep -l "$2" > files

while read file
do
	echo "$file  "${2//\\/$'\0'}""
done < <(cat files)

<< Comment
example of Usage....
 ./01.sh ./ "\[Hello\] World"
Comment
