#!/bin/bash

echo "The current file is in : $HOME"
echo "The user is : $LOGNAME" 
echo "Texted by : $MY_NAME"
echo $DESCRIPTION
sum=0
for i in $ARRAY
do
	sum=`expr $sum + $i`
done
echo "the array value is assigned as environment variable"
echo "sum of the "$ARRAY" is $sum"

