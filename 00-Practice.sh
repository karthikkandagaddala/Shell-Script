#! /bin/bash/
userid=$(id -u)
if [ $userid -ne 0 ]
then
      echo "Please start with SUDO USER"
      exit 1
else
      echo "Your a ***SUDO USER***"
fi
dnf install mysql -y
if [ $? -ne 0 ]
then
      echo "My sql install is failure"
      exit 1
else
      echo "MY Sql installation is success"
fi
dnf install ansible -y
if [ $? -ne 0 ]
then 
      echo "Ansible install failure"
      exit 1
else
      echo "Ansible install success"
fi
dnf remove mysql -y
dnf remove ansible -y