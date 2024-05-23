#!/bin/bash

# getopts xy opt				# invalid option 사용시 시스템 차원의 에러메시지가 출력됨
getopts :xy opt					# option string 앞에 ':'를 붙이면 시스템 차원의 에러 메시지를 방지 (silent)

case $opt in
	x)
		echo "hello world"
		;;
	y)
		echo "Good Morning"
		;;
	\?)
		echo "Invalid option : -$OPTARG"
		;;
esac
