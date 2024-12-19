#!/bin/bash

echo "enter the num1"
read num1
echo "enter the num2"
read num2
echo "enter 1-multiplication 2-division"
read value

case $value in
1)echo  multiplication of $num1 and $num2 is $(expr $num1 \* $num2)
	;;
2) echo  division of $num1 and $num2 is $(expr $num1 / $num2)
	;;
esac
