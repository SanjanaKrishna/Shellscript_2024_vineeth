#!/bin/bash
#script to monitor the set of service values,if any service is not working then it should sent a mail notification to user

array="ssh jenkins"
for i in $array
do
	ps -C $i
if [ $? -ne 0 ]
then
	echo $i >> testfile
fi
done
if [ -s testfile ]
then
	cat testfile | mail -s "service not running are:" vineethmuntamadugu@gmail.com
fi
