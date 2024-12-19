#!/bin/bash
#sum of odd numbers

echo "enter the number"
read num
sum=0
val=1
while [ $num -ge $val ]
do
if [ $(($num % 2)) -ne 0 ]
then	
	sum=`expr $num + $sum`
	fi
	num=`expr $num - 1`
done
echo "the sum of odd numbers is $sum"
