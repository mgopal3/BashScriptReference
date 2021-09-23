#! /bin/bash

#if, elif, nesting, statements

#if conditional statement 
#note all spaces. Imp
v1=8
v2=10
if [ $v1 -gt 5 ] 
then 
	echo "var greater than 5"
fi

#using if with &&
if [[ $v1 -gt 5 ]] && [[ $v2 -le 10 ]]
then 
	echo "we managed to print all this and both conditions are true"
fi 
	 
	 
#using if with &&
if [[ $v1 -gt 5 ]] || [[ $v2 -gt 10 ]]
then 
	echo "we managed to print all this and atlest 1 is true"
fi 

#using if and else if
if [ $v1 -gt 8 ] 
then 
	echo "var greater than 8"
elif [ $v1 -lt 8 ]
then 
	echo "var less than 8"
else 
	echo "var eq to 8"
fi


#nesting if statements
if [ "$v1" -gt 1 ]
then 
	if [ "$v1" -gt 3 ]
	then 
		if [ "$v1" -gt 8 ]
		then 
			echo "num greater than 8"
		else
			echo "num greater than 3"
		fi
	else
		echo "number greater than 1"
	fi
else 
	echo "number eq 1"
fi


#= vs ==
#= compares the type and == c\performs the byte to byte comparison & checks if the value stored is the same or ont

var='Hello'
rav='World'
tar='Hello'

if [ $var = $tar ]
then 
	echo "single equal worked and both are string"
else
	echo "single equal no workie"
fi

if [ $var == $tar ]
then 
	echo "double equal same and both strings have exact value stored in them"
else
	echo "double equal failed cause the values are different"
	
fi

# test non equal string

if [[ $var != $rav ]]
then 
	echo "Both strings are diff! tested not equal"
fi

v1="Hello world" 
v2="Helloworld"
#Test two strings Before or After alphabetically
if [[ $v1 == $v2 ]]  #to use strings with spacesm you have to use the [[  ]] 
then 
	echo "double equal same and both strings have exact value stored in them"
else
	echo "double equal failed cause the values are different"
	
fi

#NULL check

v2='' # NULL declaration
if [[ $v2 = '' ]]
then 
	echo 'NuLL'
else 
	echo 'not null'
fi

if [[ $v1 != '' ]]
then 
	echo -e "$v1"
else 
	echo 'NULL'
fi

#NUmerical comparison > and <
v1=15

if [[ $v1 -gt 10 ]] && [[ $v1 -lt 20 ]]
then 
	echo "between 10 and 20"
fi	

#NUmerical comparison > and <
v1=15

if (( $v1 >= 10 )) && (( $v1 <= 20 ))
then 
	echo "between 10 and 20"
fi	

#check if numbers are equal
v2=15

if (( $v1 == $v2))
then 
	echo "equal variables"
fi

v2=25
if (( $v1 != $v2))
then 
	echo "NOT equal variables"
else 
	echo "equal variables"
fi


