#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0]
then
    echo "Please proceed with sudo access"
    exit 1
else
    echo  "your am super user"
fi
dnf install mysql -y
if [ $? -ne 0]
then
    echo "mysql to install is failure"
    exit 1
else
    echo "mysql installed success"
fi
dnf install git -y
if [ $? -ne 0 ]
then
    echo "Git install is failure"
    exit 1
else
   echo "git install success"
fi