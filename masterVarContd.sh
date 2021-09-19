#! /bin/bash

echo "continue to master variable and operations on variables"
#using the inbuild let to allow you make operations withot the variables being trated as variables
let a=10 b=15; echo "$a*$b"

let c=a*b
echo $c

num1=10
num2=2
let num3=num1*num2
echo $num3

#basic arithmatic operations 
num1=10
num2=2

echo using expr
expr $num1 + $num2
expr $num1 - $num2
expr $num1 / $num2
expr $num1 \* $num2

#Increment a Variable 3 times with the increment operator

echo "Incrementing thrice"
VAR=1
echo "first value $VAR"
VAR=$((VAR+=1))
echo "final value $VAR"

echo "Decremeting the above variable "
VAR=$((VAR-1))
echo "decremented value $VAR"

#echo number mod the second numnber

echo "using modulus operator $((10 % 3))"

#exponent

echo "exponent oprator $((8**2))" 

#5 mathematical expressions using expr
n1=25
n2=4
echo "using expr on $n1 & $n2"
expr $n1 + $n2
expr $n1 - $n2
expr $n1 \* $n2
expr $n1 / $n2
expr $n1 % $n2 

#5 mathematical expressions using brackets

echo "using () to perform 5 expressions on $n1 & $n2"
echo $((n1 + n2))
echo $((n1 - n2))
echo $((n1 * n2))
echo $((n1 / n2))
echo $((n1 % n2))
echo $((n1 ** n2))

#Double paranthesis with $ to assign a variable

VAR=$((n1+10))
echo $VAR

#multiplication always has precedence regardless of order

VAR=$((3*(2+1)))

#combining strings in one line with variables
v1="hey string 1 with space"
v2="string 2 with space"

var3="${v1} ${v2}"
echo $var3
var3="${v1}\t${v2}"
echo -e $var3
var3="${v1}\n${v2}"
echo -e $var3


#lets combine 3 strings
v3="my third string to use"
var3="${v1}\t${v2}\t${v3}"
echo -e $var3










