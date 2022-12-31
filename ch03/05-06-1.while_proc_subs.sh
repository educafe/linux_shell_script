#!/bin/bash
# Process substitution

# echo Start >&2 | while true
	# do
		# stdbuf -o0 -e0 echo "Begin"
		# var=100
		# echo "End"
		# break
	# done
	
echo Start | while true
	do
		echo $(cat -)
		echo "Begin"
		var=100
		echo "End"
		break
	done
	
echo VAR=${var}

