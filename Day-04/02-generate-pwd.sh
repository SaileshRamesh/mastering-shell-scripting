#Generate Random Password:
#The password is created using a combination of random numbers and a randomly selected special character from a predefined set.

#SSH Configuration:
#The script uses sed to modify the /etc/ssh/sshd_config file to enable password authentication. 
#It also creates a backup of this file before making changes.

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
        SPEC=$(echo ' !@#$%^&*()_' | fold -w1 | shuf | head -1)
        PASSWORD="IndianArmy@${RANDOM}${SPEC}"
        echo "$USER:$PASSWORD" | sudo chpasswd
        echo "The temporary password the $USER is ${PASSWORD}"
        passwd -e $USER
    fi
else
    echo " Please Enter the Valid parameter "

fi

# Sed -i “58 s/.*PasswordAuthentication.*/PasswordAuthentication yes/g” /etc/ssh/sshd_config