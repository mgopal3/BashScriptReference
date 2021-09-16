#! /bin/bash

<<AboutThisScript

This is first a multi line comment
This script has all the information about using echo commands in bash

AboutThisScript

#this is a simple first use of echo. It automatically adds a new line at the end
echo 'this is my first script'

#the -n ensures there is no new line at the end. meaning the next line will be printed on the same line
echo -n 'hello '
echo -n 'is this a new line '
echo 'but '
 
echo 'this is a new line'

#this adds a space in between
echo 'one with space' 'two three'

#the echo with multi line command. Add \ at the end to continue typing the command on teh next line
echo 'one two three four four' \
	'continue typing in as many line'
	
#echo with tab
echo -e 'one\ttwo\tthree\tfour'

#echo with new line
echo -e 'one\ntwo\nthree\nfour'



