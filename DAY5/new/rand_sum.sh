#!/bin/bash -x
sum=0
    for((i=0; i<=5; i++))
    {
      sum=$((sum+ RANDOM %90  + 10))
    }
		avg=$(($sum/5))
		echo $sum
		echo $avg

