#!/bin/bash
echo " Which file would you like to use?" 
ls
read file
#This command will cut down the first 2 columns of any list brought into it and puts a "." between them
USER_LIST="$(cut -d " " -f 1,2 $file --output-delimiter='.')"
#This will take the 
echo $USER_LIST | while read -r line; do useradd "${line// /.}.$((RANDOM % 100))"; done
