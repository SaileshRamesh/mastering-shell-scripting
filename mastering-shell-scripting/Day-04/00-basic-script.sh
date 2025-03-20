#!/bin/bash
if [ $# -gt 0 ]; then #Check if valid paramter is provided
    USER=$1
    echo $USER
else
    echo " Please Enter the Valid parameter "
fi