#!/bin/bash

echo "All variables: $@" # is used to print the values given from outside

echo "number of variables passed: $#" # it will list the number of values passed

echo "find the script name: $0" # it will find the script name

echo "current working directory: $PWD" # fetch the current working directory

echo "home directory of current user: $HOME"

echo "which user is running the script: $USER" # fetch the username running the script

echo "hostname: $HOSTNAME" # display the current server details

echo "process id of the current shell script: $$"

sleep 60 &

echo "process id of last background command: $!"

echo "exit status of previous command: $?"

