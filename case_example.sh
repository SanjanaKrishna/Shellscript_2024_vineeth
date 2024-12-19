#!/bin/bash

echo "enter the day"
read day

case $day in

'Mon') find . -type f -mtime +10
	;;
'Tue') grep -r -l "world" *
	;;
'Wed') grep -L "world" *
	;;
'Thu') echo "enter the file/directory/link"
	read choice
	if [ -L $choice ]
	then
		echo "the given choice is a link"
	elif [ -d $choice ]
	then
		echo "the given choice is a directory"
	elif [ -f $choice ]
	then 
		echo "the given choice is a file"
	else
		echo "the given path is not available"
	fi
	;;
'Fri')  find . -type f -empty
	if [ $? -ne 0 ]
	then
		echo "empty file doesn't exist"
	fi
	;;
'Sat'|'Sun') echo "today is a holiday"
	     ;;
esac	  
