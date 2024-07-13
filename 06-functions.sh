#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "Please proceed with sudo access"
    exit 1
else
    echo "you are a super user"
fi
validation(){
    if [ $1 -ne 0 ]
    then
        echo "$2.....FAILURE"
        exit 1
    else
        echo "$2.....SUCCESS"
    fi    
}
dnf install mysql -y
validation $? "instaling mysql"
dnf install git -y
validation $? "instaling git"