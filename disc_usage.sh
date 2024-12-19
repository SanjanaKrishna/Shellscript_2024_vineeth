#!/bin/bash
#write a script to monitor the disc usage,if disc usage reaches threshold value then need to send a mail notification to user

disc=`df -h . | awk -F " " 'NR>1 {print $5}' | cut -c 1-2`
if [ $disc -gt 35 ]
then
	echo "disc usage reaches threshold value"
echo "disc reaches maximun capacity" | mail -s "disc reaches threshold value" vineethmuntamadugu@gmail.com
fi
