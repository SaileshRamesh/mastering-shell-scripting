#Print the date and time every second for 10 times

#!/bin/bash
for i in {1..10}; do
    echo $(date)
    sleep 1
done


#To get only the day, date, and time, modify the above script using awk

#!/bin/bash
for i in {1..10}; do
    echo $(date) | awk -F " " '{print $1, $2, $3, $4}'
    sleep 1
done
