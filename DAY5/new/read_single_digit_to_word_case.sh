#!/bin/bash 
echo -n "Enter number : "
read n


if (($n >=0 && $n<=9))
then
    echo "Your number $n in words : "
    case $n in
        0) echo -n "zero " ;;
        1) echo -n "one " ;;
        2) echo -n "two " ;;
        3) echo -n "three " ;;
        4) echo -n "four " ;;
        5) echo -n "five " ;;
        6) echo -n "six " ;;
        7) echo -n "seven " ;;
        8) echo -n "eight " ;;
        9) echo -n "nine " ;;
    esac

else
	echo "Please enter the single digit"
fi
 
