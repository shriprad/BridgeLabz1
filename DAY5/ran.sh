#!/bin/bash -x

randomNum=$(( RANDOM % 10))
ran1=0
for (( i=0; i<2; i++))
do
ran=$(( $ran1 + $randomNum ))
echo $ran1
echo $random
done


