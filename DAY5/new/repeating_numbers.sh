a=(33 77 45 77 33 56 33 48 77 19)

n=9

echo "Repeating elements are"

for (( i=0; i<$n; i++ ))
do
  for (( j=$i+1; j<$n; j++ ))
  do
    if (( $((${a[$i]} == ${a[$j]} )))); then

      echo ${a[i]}

    fi
  done
done
