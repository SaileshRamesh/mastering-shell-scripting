#For Loops:
#Used when the number of iterations is known. For example, printing numbers from 1 to 100.

#!/bin/bash
for i in {1..100}
do
    echo $i
done

#While Loops:
#Used when the number of iterations is not known and continues as long as the condition is true.

#Example:
#Check if a website is working using a while loop:

while true
do
    curl https://www.google.com | grep -i google
    sleep 1
done

#Python Example:
x = 5 * 4
print(x)

#Bash Equivalent:
x=$(expr 5 \* 4)
echo $x