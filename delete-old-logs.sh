#!/bin/bash
set -e

failure(){
    echo -e "$r failed at line $1 : $2 $n"
}
trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

source_directory=/tmp/logs

r="\e[31m"
g="\e[32m"
n="\e[0m"


if [ -d $source_directory ]
then 
     echo -e "$g directory exists$n"
else
     echo -e "$r please provide the correct path $n"
fi

file=$(find $source_directory -name "*.log" -mtime +10)
echo -e "$g $files"