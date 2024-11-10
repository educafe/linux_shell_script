#!/bin/bash
num1=10 num2=5
((num1 += num2))
echo "NUM1 = $num1"
((num1>>=2))
echo "NUM1 = $num1"
((shift=num1>>2))
echo "NUM1=$num1, SHIFT=$shift"
((num2 = $num1 ** 2))
echo "Square = $num2"
((num1++))
echo "Increase num1 = $num1"


