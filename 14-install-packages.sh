#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-H-%M-%S)
SCRIPT_NAME=$(echo $0 |cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
 if [ $1 -ne 0 ]
 then 
    echo -e "$2 ...$R failure .. $N"
    exit 1
 else 
   echo -e "$2 ... $G success .. $N"
 fi 
}
if [ $USERID -ne 0 ]
then 
  echo "please try to run the script using root access"
  exit 1
else
  echo "you are a super user"
fi

for i in $@
do
  echo "package to install :$i" # it will check all the values/packages in i
  dnf list installed $i &>>LOGFILE # it will list the installed packages in i and redirect the output to LOGFILE

if [ $? -eq 0 ]
then 
  echo -e "$i is already installed $Y SKIPPED $N"
else
  dnf install $i -y &>>LOGFILE
  VALIDATE $? "installation of $i"
fi 
done
