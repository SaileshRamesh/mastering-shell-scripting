#Declaring a variable and using it

#!/bin/bash
VARIABLE='SaileshRamesh-SecOps'
echo $VARIABLE
echo "${VARIABLE}"

#Using variables with single and double quotes

#!/bin/bash
X=10
RG='SaileshRamesh-SecOps-$X'  # Won't expand the variable
echo $RG  # Outputs: SaileshRamesh-SecOps-$X

RG="SaileshRamesh-SecOps-$X"  # Will expand the variable
echo $RG  # Outputs: SaileshRamesh-SecOps-10