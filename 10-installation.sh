#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
echo "please run the script with root user"
exit 1
else
echo "you are super user"
fi 

dnf install mysql -y
if [ $? -ne 0 ]  # '$?' which means the exit status of previous command
then 
echo "installation of mysql ..........failure"
exit 1 # manually need to insert the exit status 1 as shell program will continue to next line of code with out exit
else 
echo "installation of mysql..........success"
fi 

dnf installation git -y
if [ $? -ne 0 ]
then
echo "installation of git ...........failure"
exit 1
else
echo "installation of git .................success"
fi