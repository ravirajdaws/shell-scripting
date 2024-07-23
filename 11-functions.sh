#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE(){
 if [ $1 -ne 0 ]
 then 
    echo "$2 ..... failure"
    exit 1
 else
    echo "$2 ....... success" 
  fi  
}
 
 if [ $USERID -ne 0 ]
 then 
  echo "please try to run the script using root access"
  exit 1
 else 
  echo "you are super user"
 fi 

 dnf install mysql -y &>>$LOGFILE
  VALIDATE $? "installing mysql" 

 dnf install git -y &>>$LOGFILE
 VALIDATE $? "installing git"

