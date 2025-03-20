#Even Numbers:

#!/bin/bash
for i in {1..100}; do
    if [ $((i % 2)) -eq 0 ]; then
        echo "$i is an even number"
    fi
done

#Even and Odd Numbers:

#!/bin/bash
for i in {1..100}; do
    if [ $((i % 2)) -ne 0 ]; then
        echo "$i is an odd number"
    else
        echo "$i is an even number"
    fi
done
