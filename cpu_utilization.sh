#!/bin/bash

ideal_cpu=`mpstat 1 1 | grep -v '^$' | awk -F " " 'NR==3 {print $NF}' | cut -d "." -f1`
cpu_utilization=`expr 100 - $ideal_cpu`
echo "$cpu_utilization"
if [ $cpu_utilization -gt 70 ]
then
	echo "CPU utilization reached threshold value"
	echo "CPU utiliazation is high i.e $cpu_utilization" | mail -s "cpu reached threshold" vineethmuntamadugu@gmail.com
fi

