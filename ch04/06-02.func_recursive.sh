#!/bin/bash
#File listing test

function list_files {
	for f in $1/*; do
		if [[ -f $f ]]; then
			echo "$f "
		elif [[ -d $f ]]; then
			list_files $f
		fi
	done
}

read -p "Input directory path to list up files : " dir
files=$(list_files $dir)
for file in $files
do
	echo $file
done

