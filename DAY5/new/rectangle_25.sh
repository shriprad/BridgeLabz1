 #!/bin/bash -x


read -p "Enter the length of rectangle in ft " x
read -p "Enter the width of rectangle in ft" y




echo "scale=2;(($x*$y)/10.764)*25" | bc 




