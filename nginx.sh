#!/bin/bash

set -e
r="\e[31m"

failure()
{
    echo -e "$r Failed at line $1 : $2 $n"
}
trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

userid=$(id -u)
if [ $userid -eq 0 ]
then 
    echo "you are super user"
else
    echo "you are not super user"
    exit 1
fi

# validate()
# {
#     if [ $1 -eq 0 ]
#     then 
#          echo "$2 is successful"
#     else
#          echo "$2 is failure"
#          exit 1 
#     fi
# }


dnf install nginxx -y
#validate $? "installing nginx"

systemctl enable nginx
#validate $? "enabling nginx"

systemctl start nginx
#validate $? "starting nginx"

