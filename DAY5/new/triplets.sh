a=(0 -1 2 -3 1)

n=4



for (( i=0; i<$n-2; i++ ))
do
  echo "First"
  for (( j=$i+1; j<$n-1; j++ ))
  do
    echo "second"
    for (( k=$j+1; k<$n; k++))
    do
      echo "third"
      sum=$(( ${a[$i]}+${b[$j]}+${a[$k]} ))


      if (($sum==0))
      then
        echo "one"
        echo ${a[i]}

        echo "two"
        echo ${a[j]}


        echo "three"
        echo ${a[k]}

        found=true
      fi
    done

  done

done














# for (( i=0; i<$f-1; i++ ))
# do
#   for (( j=0; j<2; j++ ))
#   do
#     sum=$(( ${a[$i]}+${b[$j]} ))
#     #echo $sum
#     if (( $((${a[$i]} == ${b[$j]} )))); then
#       echo "Hi"
#     else
#       echo "No"
#
#     fi
#     arr3=("${arr3[@]}" "$sum")
#   done
#
#
# done
#
# echo ${arr3[@]}
