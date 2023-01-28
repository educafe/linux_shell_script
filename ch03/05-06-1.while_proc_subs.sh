#!/bin/bash
# Process substitution

# echo Start | while true
# do
	# echo "Begin"
	# var=$(cat -)
	# echo "End"
	# break
# done
	
while true
do
	echo "Begin"
	var=$(cat -)
	echo "End"
	break
done < <(echo Start)
	
echo VAR=${var}

