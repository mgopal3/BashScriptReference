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
VAR_CURPATH=$CWD

echo "Home directory is $VAR_PATH"

echo "change to home directory"
cd $VAR_PATH

echo "check contents of the home directory"
ls

echo "back to where we started"
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
echo "I am creating this file from far away" > test.txt

cd $VAR_CURPATH
cat $HOME/test.txt

#simple touch command to create a text file
touch filetouch.txt
ls






