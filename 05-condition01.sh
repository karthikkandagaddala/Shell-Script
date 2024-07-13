#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "please proceed with sudo access"
else
    echo "your are super user"
fi
dnf install mysqul -y
echo "is script proceeding?"    