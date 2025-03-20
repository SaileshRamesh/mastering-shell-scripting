##Multi User passing ##
#Multiple Users Creation:
#The script allows you to create multiple users by passing multiple arguments.

#!/bin/bash

#!/bin/bash
if [ $# -gt 0 ]; then
    for USER in $@; do
        echo $USER
        EXISTING_USER=$(cat /etc/passwd | grep -i -w $USER | cut -d ":" -f1)
        if [ "${USER}" = "${EXISTING_USER}" ]; then
            echo "The $USER you have entered is already present in the machine, Please Enter the Another USername"
        else
            echo " Lets Create a New New username"
            sudo useradd -m $USER --shell /bin/bash
            SPEC=$(echo ' !@#$%^&*()_' | fold -w1 | shuf | head -1)
            PASSWORD="IndianArmy@${RANDOM}${SPEC}"
            echo "$USER:$PASSWORD" | sudo chpasswd
            echo "The temporary password the $USER is ${PASSWORD}"
            passwd -e $USER
        fi
    done
else
    echo " Please Enter the Valid parameter "

fi