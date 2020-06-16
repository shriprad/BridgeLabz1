
read -p "Enter the value" b


u=$(($b%10))
t=$((($b/10)%10))
h=$((($b/100)%10))
th=$(($b/1000))



echo "Thousands= $th Hundreds=$h Tens= $t Units=$u"

