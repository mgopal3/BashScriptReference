#! /bin/bash

<<AboutThisScript

Using this file to understand variable and some other bash parameters

AboutThisScript

#this is a string variable
VAR="string variable"

#this is an integer variable
VARINT=10

echo $VAR $VARINT

# concatinating strings
a='this is a car'
b='this is a mercedese'
#below we concatinate both the variables into 1 with a space in between
c="$a $b"

echo $c


#HOME Variable - stores the credential of the system

VAR_PATH=$HOME
VAR_CURPATH=$PWD

echo "Home directory is $VAR_PATH"

echo "change to home directory"
cd $VAR_PATH

echo "check contents of the home directory"
ls

echo -e"\nback to where we started"
cd $VAR_CURPATH

#USER Variable
echo "user variable is $USER"

#hostname
echo "hostname for the system $HOSTNAME"

#printing $HOSTNAME literally and not the value in the variable. Two ways of doing the same thing
echo '$HOSTNAME'
echo "\$HOSTNAME"

#writing a file in the home directory and create a file there
cd $HOME
echo -e"\nI am creating this file from far away" > test.txt

cd $VAR_CURPATH
cat $HOME/test.txt

#simple touch command to create a text file
touch filetouch.txt
ls

#creating symbolic link, write to a Linked file and Cat a Linked file
cd $VAR_CURPATH

rm linkFile
#create a link to file.txt
ln -s file.txt linkFile
ls #only to verify

echo -e "\nNow I am writing inside the link" >>linkFile
cat linkFile

echo -e "\nLets also check the original file"
cat file.txt

echo -e "\nmodifying the original file and will verify the link and the file"
echo "this is my new modification in the original file." >>file.txt

echo -e "\ncat link"
cat linkFile

echo -e "\nLets also check the original file"
cat file.txt


echo -e "\nNext we make the file executable using chmod! create script.sh and change mod"
rm script.sh
touch script.sh
chmod +x script.sh

ls -la script.sh

echo -e "\nremove the non writable from above"
chmod -w script.sh
ls -la script.sh





