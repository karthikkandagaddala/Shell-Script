#!/bin/bash
userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
if [ $userid -ne 0 ]
then
     echo "please start with root access"
     exit 1
else
     echo "Your are a super user"
fi
valid(){
    if [ $1 -ne 0 ]
    then 
         echo "$2...is Failure"
         exit 1
    else
         echo "$2...is Success"
    fi
}
dnf install mysql -y
valid $? "installing MYSQL"
dnf install git -y
valid $? "installing git"