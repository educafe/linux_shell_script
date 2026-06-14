#!/bin/bash
# Performing checks on and between strings
# IFS=
read -p "Input string : " -n 1 str		# up to 1 character
# read -p "Input string : " -N 1 str			# exactly 1 character
echo
printf "LEN=%d\n" ${#str}
if [ -z "$str" ]; then
	echo "(z) \$str is NULL"
else
	printf "(z) HEX=%x\t DEC=%d\t OCT=%o\n" "'$str'" "'$str'" "'$str'"
fi


:<< EOF
stty -a | grep -icanon
If it has -icanon option in terminal settings, it means canonical mode is OFF.
That is it reads input character-by-character. Otherwise it reads a line (buffered)
EOF
