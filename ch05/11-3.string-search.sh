#!/bin/bash
#String search in a specified directory and its subdirectory

if [ $# -lt 1 ]; then
	echo "Usage : $(basename $0) <directory to search> \"<string to search>\""
	exit
fi

find ${1} -type f -name "*" | xargs egrep "$2" > files.$(date +%y%m%d)

while read file
do
	echo "$file"
done < <(cat files.$(date +%y%m%d))

rm files.$(date +%y%m%d)

<< Comment
example of Usage....
 ./01.sh ./ "\[Hello\] World"
Comment
