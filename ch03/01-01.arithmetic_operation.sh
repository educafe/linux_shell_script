#!/bin/bash
num1=10 num2=5
add=$(expr $num1 + $num2)
echo "Add = "$add
echo "Sub = $[$num1 - $num2]"
echo "Mul = $(($num1*$num2))"
echo "Div = $((num1 / num2))"



