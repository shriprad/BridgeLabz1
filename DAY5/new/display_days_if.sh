#!/bin/bash


read -p "Enter the number between 0 to 6" n

if (($n >=0 && $n<=6))
then
	if (($n ==0))
	then
		echo "Sunday"

	elif(($n ==1))
	then
			echo "Monday"


   elif(($n ==2))
   then
         echo "Tuesday"

   elif(($n ==3))
   then
         echo "Wednesday"

   elif(($n ==4))
   then
         echo "Thursday"

   elif(($n ==5))
   then
         echo "Friday"

   elif(($n ==6))
   then
         echo "Saturday"
	fi

else
	echo "Please enter the number between the range"


fi






