 #!/bin/bash -x


read -p "Enter the value to convert from ft to inches" x




echo "scale=2;$x/12" | bc 




