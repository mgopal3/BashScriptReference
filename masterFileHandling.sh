#! /bin/bash

#check existence of a file
FILE=file.txt
if [ -f "$FILE" ] #-f is used to check the existence of a file
then 
	echo "File $FILE exists"
else
	echo "File $FILE no exists"
fi

#check file size is 0 \. check the use of ! to negate the entire if block
if ! [ -s "$FILE" ] #-s is used to get the size 
then 
	echo "File $FILE is 0"
else
	echo "File $FILE is not zero"
fi

#check if a file is a directory or not

PATH=dir

if [[ -d $PATH ]]; then echo "$PATH is dir" ; elif [[ -f $PATH ]]; then echo "$PATH is a file"; fi


#check if the file is a symbolic link
FILE=link1
if [[ -L $FILE ]]; then echo "$FILE is symbolic link" ; else echo "$FILE is not a symbolic link"; fi


#check read permissions
if [[ -r $FILE ]]; then echo "$FILE has read permission" ; else echo "$FILE does not have read permission"; fi

#check write permissions on a file
if [[ -w $FILE ]]; then echo "$FILE has write permission" ; else echo "$FILE does not have write permission"; fi

#check execute permissions on a file
if [[ -x $FILE ]]; then echo "$FILE has execute permission" ; else echo "$FILE does not have execute permission"; fi
