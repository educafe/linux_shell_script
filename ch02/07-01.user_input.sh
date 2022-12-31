#!/bin/bash
#Input string and save it to a variable

#Reading variables from user input
read
echo $REPLY

echo -n "Input a value of a variable : "
read var
echo $var

read -p "Input your name and surname : " name surname
echo "$surname, $name"

read -s -p "Input password : " password
echo $password

read -sn1 -p "Press any key to continue : " 
echo

printf "%*s" A 

<< comment
--> invalid number 가 나오는 이유는
%*s 에서의 *는 숫자가 와야한다. 즉 %10s 등과 같이 포맷을 하기 위한 공간을 확보하기 위한 값이 와야 하는 것과 동일
따라서 printf "%*s" A B 와 같이 출력하는 경우 B는 출력을 하지만 A는 숫자가 아니므로 invalie number가 출력된다
comment