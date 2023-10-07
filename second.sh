#!/bin/bash

#Create a script that asks the user to input a number and 
#iterate through that number in which each ODD number it 
#creates a file with “This is an odd file” printed in it. 

#get input
read -p "enter number:" num

#check if valid input
if [[ -n ${num//[0-9]/} ]]; then
    echo "invalid number, Contains letters!"
    exit 1
fi

#directory name
dir_name="ODD_files"

#check if exists, if not then create it
if [ ! -d $dir_name ]; then
    mkdir $dir_name
fi 

#create the files on only ODD numbers
for((i = 1; i <= num; i++)); do 
    if (( i%2 != 0)) ; then
        file_name="$dir_name/file$i.txt"
        echo "hello world from ODD file number $i" > "$file_name.txt"
    fi
done     

echo "directory $dir_name and ODD files created"


