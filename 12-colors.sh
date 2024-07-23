#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

echo "script started executing at :$TIMESTAMP"

VALIDATE(){
 if [ $1 -ne 0 ]
 then
    echo -e "$2 ...$R failure $N"
    exit 1
 else 
    echo -e "$2 ....$G success $N"
 fi 
}

if [ $USERID -ne 0 ]
then 
echo "please try to run the script using root access"
exit 1
else
echo "you are a super user"
fi 

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "installing mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "installing git"

dnf install Dockerr -y &>>$LOGFILE
VALIDATE $? "installing Docker"
