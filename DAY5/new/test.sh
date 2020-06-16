#!/bin/bash
MAXCOUNT=4
i=0
n=5
while [ "$i" -le $MAXCOUNT ]; do
 nos[$i]=$RANDOM
 let "i += 1"
done
echo "${nos[*]}"
#printing the entered number
echo "number entered are"
for((i=0;i<n;i++))
do
echo ${nos[$i]}
done
#main loop
small=${nos[0]}
greatest=${nos[0]}
for((i=0;i<n;i++))
do
#logic for smallest number
if [ ${nos[$i]} -lt $small ]; then
small=${nos[$i]}
#logic for greatest number
elif [ ${nos[$i]} -gt $greatest ]; then
greatest=${nos[$i]}
fi
done
#printing smallest and greatest number
echo "smallest number in an array is $small"
echo "greatest number in an array is $greatest"
