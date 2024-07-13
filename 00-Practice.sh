#!/bin/bash
userid=$(id -u)
timestamp=$(date +%F-%H-%M-%s)
if [ $userid -ne 0 ]
then
    echo "Please proced with sudo access"
    exit 1
else
    echo "your a super user"
fi
valid(){
    fi [ $1 -ne 0 ]
    then
        echo "$2....FAILURE"
        exit 1
    else
        echo "$2....SUCCESS"
    fi    
}
dnf install mysql -y
valid $? "Installing Mysql"
dnf install git -y
valid $? "Installing git"
