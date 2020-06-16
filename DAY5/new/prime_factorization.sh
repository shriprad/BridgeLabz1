#!/bin/bash


read -p "Enter the number" n

while ((n%2 ==0))
do

	n=$n/2
done

a=$(bc <<< "scale=0; sqrt($n)")
for((i=3; i<=$a; i= i+2))
do
	while(($n %$i == 0))

	do
		#echo $i

		a[i]=$i


		n=$n/$i

	done
done


echo "Prime factorization of the given number are "
echo ${a[@]}

if(($n > 2))
then
	echo $n
fi
