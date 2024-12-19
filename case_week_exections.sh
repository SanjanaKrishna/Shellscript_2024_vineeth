#!/bin/bash

day=`date "+%a"`
echo "$day"

case $day in

'Mon') touch filea fileb
	;;
'Tue') mv filea filex
       mv fileb filey
       ;;
'Thu') vi filex
	hello world
       vi filey
	hi world
 	;;
'Wed') cat filex
       cat filey
	;;
'Fri') rm filex filey
	;;
'Sat'|'Sun') echo "no task for today"
		;;
esac
if [ $? -eq 0 ]
then
	echo "the program on $day is executed" | mail -s "specific task on current day" vineethmuntamadugu@gmail.com
fi
