#!/bin/bash -x
sum1=0
sum2=0
    for((i=0; i<=5; i++))
    {	sum=0

      sum=$((RANDOM % 990 + 10))
		if (($sum >= $sum1))
		then
			
			sum1=$(($sum))
		fi
    }

echo "The maximum number among random values are is $sum1"

echo "The minimum number among random values are is $sum2"

