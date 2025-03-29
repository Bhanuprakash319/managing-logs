#!/bin/bash

source_directory=/tmp/logs

r="/e[31m"
g="/e[32m"
n="/e[0m"

if [ -d /tmp/logs ]
then 
     echo -e "$gdirectory exists$n"
else
     echo -e "$r please provide the correct path $n"