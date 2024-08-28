#!/bin/bash
# testing script for error handling 
set -e #shell script manually checks the error line by line if any then it exit

failure(){                    #function name can be any
    echo "failed at $1 : $2"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR # this line should be same, its a trap command default.

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
echo "please run the script with root access"
exit 1
else
echo "you are super user"
fi 

dnf install mysql -y

dnf installation git -y # it will through an error with line no when we run this script
