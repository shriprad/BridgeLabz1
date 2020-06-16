#!/bin/bash

harmonic=1

read -p "Enter the Nth number" n

#harmonic=$(($harmonic + 1))

#echo $harmonic


for (( i=2; i<=$n; i++))
do
  res=`echo "scale=2; 1 / $i" | bc`
  harmonic=`echo "scale=2; $harmonic + $res" | bc`
  #harmonic=$(($harmonic + $res))



done


echo $harmonic
# for ((i=2; i<=$n; i++ ))
# do
#
# done
# echo $harmonic
