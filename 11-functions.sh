#!/bin/bash

USERID=$(id -u)

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

 dnf install mysql -y
  VALIDATE $? "installing mysql"

 dnf install git -y
 VALIDATE $? "installing git"

