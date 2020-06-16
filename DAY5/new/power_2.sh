
#!/bin/bash


echo "Enter the n value"
read n

p=1

for((i=0; i<$n; ++i))
do
	if(($i==0))
	then
		p=1
	else
		p=$(($p*2))
	fi

	echo $p

done
