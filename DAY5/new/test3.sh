#!/bin/bash

read -p "Enter the value" num1

if(($num1%2==0))
then
	num1=`expr $num1 + 1`
	echo $num1
fi
