#!/bin/bash -x

read -p "Enter the year in yyyy format:" year
read -p "Enter the year in mm format:" month
read -p "Enter the year in dd format:" day


yo=$(( $year-(14-$month)/12))
x1=$(($yo+($yo/4)-($yo/100)+($yo/400)))
mo=$(($month+12*((14-$month)/12)-2))
d1=$((($day + $x1 +((31*$mo)/12)) % 7))

case $d1 in
		"0")
			echo "Sunday";;

		"1")
			echo "Monday";;

		"2")
			echo "Tuesday";;

		"3")

			echo "Wednesday";;

		"4")

			echo "Thursday";;

		"5")

			echo "Friday";;

		"6")

			echo "Saturday";;

esac
