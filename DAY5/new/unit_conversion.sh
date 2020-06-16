# !/bin/bash 
  
# Take user Input 
echo "Enter Two numbers : "
read a  
  
# Input type of operation 
echo "Enter Choice :"
echo "1. Feet to Inch"
echo "2. Feet to Meter"
echo "3. Inch to Feet"
echo "4. Meter to Feet"
read ch 
  
# Switch Case to perform 
# calulator operations 
case $ch in
  1)res=`echo $a \* 12 | bc` 
  ;; 
  2)res=`echo "scale=2; $a / 3.281" | bc`
  ;; 
  3)res=`echo "scale=2; $a / 12" | bc`
  ;; 
  4)res=`echo $a \* 3.281 | bc`  
  ;; 
esac
echo "Result : $res"
