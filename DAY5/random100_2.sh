#!/bin/bash -x 





a=$RANDOM%100
b=$RANDOM%100
c=$RANDOM%100
d=$RANDOM%100
e=$RANDOM%100
 

sum=$(($a + $b+$c+$d+$e))
avg=$(($sum/5))

echo "The sum of given random numbers are"
echo $sum

echo "The average of given random numbers are"
echo $avg

