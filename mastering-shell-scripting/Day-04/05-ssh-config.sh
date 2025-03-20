#SSH Configuration
#To enable password authentication for newly created users, the script modifies 
#the SSH configuration using sed. This is important for AWS instances, where password 
#authentication is disabled by default.

#!/bin/bash

# Backup the sshd_config file
cp /etc/ssh/sshd_config /etc/ssh/sshd_config_backup

# Modify the sshd_config file to enable password authentication
sed -i "s/.*PasswordAuthentication.*/PasswordAuthentication yes/g" /etc/ssh/sshd_config

# Restart the SSH service
sudo service sshd restart

#How to Run the Script:?
#Save the script as user-automation.sh.
#Run the script with a username as an argument:
#bash user-automation.sh username1 username2

