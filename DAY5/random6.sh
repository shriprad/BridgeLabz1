#!/bin/bash -x 

RANDOM=$$

for i in `seq 10`
do 
      echo $(($RANDOM % 6+1))
done

