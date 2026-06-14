#!/bin/bash
read -p "Input two numbers : " num1 num2
add=$(expr $num1 + $num2)
echo "Add = "$add
echo "Sub = $[$num1 - $num2]"
echo "Mul = $(($num1 * $num2))"
echo "Div = $((num1 / num2))"




