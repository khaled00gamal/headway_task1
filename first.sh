#!/bin/bash

# Create script that creates a directory and 6 text files with “Hello World” printed in each file 

dir_name="hello_world_6_files"

#check if it exists,if not then create it

if [ ! -d $dir_name ]; then
    mkdir $dir_name
fi 

#create 6 files and populate them
for((i=1;i<=6;i++)); do 
    file_name="$dir_name/file$i.txt"
    echo "hello world" > $file_name
done

echo "directory $dir_name and files created successfuly" 


