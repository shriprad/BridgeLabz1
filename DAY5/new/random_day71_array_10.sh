#!/bin/bash

n=11
for ((i = 0; i < $n; i++)); do      ## fill array with random values
    array[i]=$(($RANDOM % 990 + 10))
done

for((i=0; i<n; ++i))
do
  for((j=i+1; j<n;++j))
  do
    if[[ ${array[$i]} < ${array[$j]} ]]; then

          a = ${array[i]}
          {array[i]}= ${array[j]}
          {array[j]} = $a

      fi
  done
done


echo "The array is sorted in descending order"

for((i=0; i < $n; ++i ))
do
  echo ${array[i]}

done


echo "2nd largest number is ${array[1]}"

echo "2nd smallest number is ${array[$n - 2]}"
