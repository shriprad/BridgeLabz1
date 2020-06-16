#!/bin/bash

arr=(zero one two three four five six sevem eight nine)

read -p "Enter the single digit" n

if (($n >=0 && $n<=9))
then
        echo ${arr[$n]}
else
        echo "Please enter the single digit value"

fi

