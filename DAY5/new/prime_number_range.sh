read -p "Enter start number and end range to find prime number" num1
read -p "Enter start number and end range to find prime number" num2

count=0

if((num2 <2))
then
	echo "There are no prime numbers"



else
	echo "Prime numbers in the given range are"

	temp=$num1

	if(($num1 % 2 ==0))
	then
		 num1=`expr $num1 + 1`
	fi


		for((i=$num1; i<=$num2; i=$i+2))
		do
			flag=0
			for((j=2; j<=$i/2; j++))
			do
				u=$(($i % $j))
				if(($u == 0))
				then
					flag=1
					break;
				fi

			done

			if((flag == 0))
			then
				echo $i
			fi
		done
fi
