#Check for Existing Users:
#The script checks the /etc/passwd file to see if the provided username already exists.

#Create New User:
#If the user does not exist, it creates a new user with the useradd command and assigns a randomly generated password.

#!/bin/bash
if [ $# -gt 0 ]; then
    USER=$1
    echo $USER
    EXISTING_USER=$(cat /etc/passwd | grep -i -w $USER | cut -d ":" -f1)
    if [ "${USER}" = "${EXISTING_USER}" ]; then
        echo "The $USER you have entered is already present in the machine, Please Enter the Another USername"
    else
        echo " Lets Create a New New username"
        sudo useradd -m $USER --shell /bin/bash
    fi
else
    echo " Please Enter the Valid parameter "

fi
