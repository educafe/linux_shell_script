#!/bin/bash
while true
do
	clear
	printf "%20s %-20s\n" "1." "Display Calendar "
	printf "%20s %-20s\n" "2." "File Usage Space Monitoring "
	printf "%20s %-20s\n" "3." "Disk Space Moniroting "
	printf "%20s %-20s\n" "'ESC'." "Quit"
	echo
	read -sn1 -p "Choose a number that you want to do : " menu

	case $menu in
		1)	clear
			command="/usr/bin/cal"
			$command
			;;
		2)	clear
			du -S -h /var/log /home
			echo
			;;
		3)	clear
			df -h / 
			;;
		$'\33')		#'ESC' key
			echo
			break
			;;
		*)	clear
			echo "No menu available"
			;;
	esac
	# rows=$(tput lines)
	# echo -e "\e[${rows};1H"
	echo -e "\e[$(tput lines);1H"
	read -n1 -s -p "Press any button to continue : "
done

