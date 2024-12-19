#!/bin/bash
echo "enter the number"
read num
val=1
n=$num
while [ $val -le 5 ]
do
	num=`expr $num + 1`
	echo $num
	val=`expr $val + 1`
done

