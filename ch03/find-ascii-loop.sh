#!/bin/bash
# Find ASCII Code
prompt="Input Character ('ESC' to quit) : "
while true
do
	read -p "$prompt" -n 1 char
	echo
	printf "HEX=%x  DEC=%d  OCT=%o\n" "'$char" "'$char" "'$char"
	if [ $char == $'\033' ]; then
		break;
	fi
done

<< comment
$char 앞에 '을 붙이는 것은 $char 값을 단일 문자 상수로 취급하라는 의미. 그래야만 %x 또는 %d 포맷으로 출력이 가능하다.
그렇지 않으면 invalid number라는 에러를 출력한다. bash에서 printf는 \NNN 과 같이 3자리 8진수 값으로 읽기 때문이다
comment