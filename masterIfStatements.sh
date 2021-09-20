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

if [ $var = $rav ]
then 
	echo "single equal worked and both are string"
else
	echo "single equal no workie"
fi

if [ $var == $rav ]
then 
	echo "double equal same and both strings have exact value stored in them"
else
	echo "double equal failed cause the values are different"
	
fi

