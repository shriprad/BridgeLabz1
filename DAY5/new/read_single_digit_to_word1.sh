read -p "Enter the single digit" n

if (($n >=0 && $n<=9))
then 
        if (($n == 0))
	then
		echo "Zero"
	elif(($n == 1))
	then
		echo "One"

	elif(($n == 2))
        then
                echo "Two"

	elif(($n == 3))
        then
                echo "Three"

	elif(($n == 4))
        then
                echo "Four"

	elif(($n == 5))
        then
                echo "Five"

	elif(($n == 6))
        then
                echo "Six"

	elif(($n == 7))
        then
                echo "Seven"

	elif(($n == 8))
        then
                echo "Eight"


	elif(($n == 9))
        then
                echo "Nine"

	fi


else
        echo "Please enter the single digit value"

fi

