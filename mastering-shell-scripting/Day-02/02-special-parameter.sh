#!/bin/bash

#Understanding Special Parameters
$? – Exit Code

#Represents the exit status of the last executed command.
#0 indicates success, while any non-zero value indicates an error.

#Example
ls -al
echo $?  # Outputs 0 if successful
ls nonexistentfile
echo $?  # Outputs a non-zero value indicating an error

$@ and $* – All Positional Parameters

#Both represent all the arguments passed to the script.
#The difference lies in how they handle quoted arguments.

REGIONS=$@
# or
REGIONS=$*

$# – Number of Arguments

#Represents the number of arguments passed to the script.

echo "Number of arguments: $#"

#Error Handling and Output Redirection
#Suppress standard output:

aws --version > /dev/null

#Suppress both standard output and standard error:

aws --version > /dev/null 2>&1

#Using Conditional Statements:

aws --version > /dev/null 2>&1
if [ $? -eq 0 ]; then
    # Proceed with script
else
    echo "AWS CLI not found. Exiting."
    exit 1
fi