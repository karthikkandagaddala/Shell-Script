#! /bin/bash/
userid=$(id -u)
if [ $userid  -ne 0 ]
then
       echo "Please start with Sudo Access"
       exit 1
else   
       echo "Your a Super user"
fi
validate () {
      if [ $1 -ne 0 ]
      then
           echo "$2 is ......Failure"
      else
           echo "$2 is ......Success"
      fi
}
dnf install mysql -y
validate $? "Installing mysql"
dnf install ansible -y
validate $? "installing ansible"
dnf remove mysql -y
validate $? "Removing mysql"
dnf remove ansible -y
validate $? "Removing Ansible"

