#!/bin/bash


temprature(){

if [ $1 -eq 1 ]
then
   echo -n "Enter temperature in Celsius : "
   read tc

   tf=$(echo "scale=2;((9/5) * $tc) + 32" |bc)
   echo "$tc Celsius = $tf Fahrenheit"
elif [ $1 -eq 2 ]
then
   echo -n "Enter temperature in Fahrenheit : "
   read tf
 
   tc=$(echo "scale=2;(5/9)*($tf-32)"|bc)
   echo "$tf Fahrenheit = $tc Celsius"
else
   echo "Select the correct option please"
   exit 1
fi


}


echo "Temprature Conversion System"
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
echo -n "Select your choice (1-2) : "
read choice

temprature $choice

