#!/bin/bash -x

read -p "Enter the  day in dd format" date
read -p "Enter the month in mm format" month

if (($date >= 1 && $date <=31)) || (($month >=1 && $month<=12)) ; then

	 echo "Valid Entry"
		if (($date >=
else
	 echo "Invalid Entry"
fi


