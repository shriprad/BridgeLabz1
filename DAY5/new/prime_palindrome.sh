

prime()
{
	numo=$1
	for((i=2; i<=numo/2;i++))
	do
		if(($((numo%i))== 0))
		then
			echo "$num1 is not a prime number"
			exit
		fi

	done

	 echo "$num1 is a prime number"
}



palindrome(){
	n=$1

	number=$1
	reverse=0
	while [ $n -gt 0 ]
	do
		a=`expr $n % 10 `
		n=`expr $n / 10 `
		reverse=`expr $reverse \* 10 + $a`

	done

	echo $reverse
	if [ $number -eq $reverse ]
	then
		echo "Number is palindrome"
	else
		echo "Number is not palindrome"

	fi
	prime $reverse
}


read -p "Enter a number" num

palindrome $num
