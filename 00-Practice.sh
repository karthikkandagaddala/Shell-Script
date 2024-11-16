#! /bin/bash/
userid=$(id -u)
if [ $userid -ne 0 ]
then
      echo "Please start with Sudo access"
      exit 1
else
     echo "You are a super user"
fi
dnf install mysql -y