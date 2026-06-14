#!/bin/bash
declare -A vars
vars[morning]="Good morning!"
vars[afternoon]="Good afternoon!"


ref="afternoon"
echo "${vars[$ref]}" 

# declare -A database=(
	# [host]='192.168.56.101'
	# [port]="3306"
	# [user]='educafe'
	# [password]='ubuntu'
# )

# echo "${database[host]}"

