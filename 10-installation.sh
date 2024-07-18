#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
echo "please run the script with root user"
exit 1
else
echo "you are super user"
fi 
