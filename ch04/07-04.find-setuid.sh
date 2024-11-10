#!/bin/bash
# Search for files with setuid 
shopt -s dotglob			

search-setuid() {
	for file in $(echo $1/*); do
		if [ -d $file ]; then
			if [ $file = '//proc' ]; then
				continue;
			elif [ $file = '//dev' ] || [ $file = '//run' ]; then
				continue;
			elif [ $file = '//tmp' ] || [ $file = '//sys' ]; then
				continue;
			else
				search-setuid $file
			fi
		else
			if [ -f $file ] && [ -u $file ]; then
				if [[ $file =~ '//' ]];then
					echo ${file#?}
				else
					echo ${file}
				fi
			fi
		fi
	done
}

read -p "Input directory path to list up files : " pathname
if [ $pathname = '/proc' ] || [ $pathname = '/dev' ] || [ $pathname = '/tmp' ] || \
	[ $pathname = '/run' ] || [ $pathname = '/sys' ]; then
	echo "No need to search $pathname directory"
else
	search-setuid $pathname
fi
