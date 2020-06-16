#!/bin/bash


read -p "Enter the number between 0 to 6" n

if (($n >=0 && $n<=6))
then
	case $n in
		0) echo -n "Sunday" ;;
		1) echo -n "Monday" ;;
      2) echo -n "Tuesday" ;;
      3) echo -n "Wednesday" ;;
      4) echo -n "Thursday" ;;
      5) echo -n "Friday" ;;
      6) echo -n "Saturday" ;;

	esac

else
	echo "Please enter the number between the range"


fi






