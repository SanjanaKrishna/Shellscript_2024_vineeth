#!/bin/bash
echo "enter the number"
read num
echo "enter the value"
read val
prod=1
value=$val
while [ $val -gt 0 ]
do
	prod=`expr $prod \* $num`
	val=`expr $val - 1`
done
echo "the exponent of $num power $value  is $prod"
