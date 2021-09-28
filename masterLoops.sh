#! /bin/bash

#simple for
#using echo -n to not use the new line
for i in 1 2 3 4 5; do
	echo -n "$i "
done

echo -e "\n"

#using for with a range. 
#includes 10 and 20

for i in {10..20}; do
	echo -n "$i "
done

echo -e "\n"

#using range with increments of 2

for i in {10..20..2}; do
	echo -n "$i "
done

echo -e "\n"

#using negative increment doesn't work. it only print the entire thing as positive. 


for i in {10..20..-2}; do
	echo -n "$i "
done

echo -e "\n"

#using decrement


for i in {20..10}; do
	echo -n "$i "
done

echo -e "\n"

#loops within file and prints all its content
for i in $(cat file.txt); do
	echo "$i"
done


#loops and lists all files in the directory
for i in ./*.txt; do
	echo "$i"
done

# for loop with conditional break
for i in {1..10}; do
	if (( $i < 5)); then
		echo -n "$i "
	else 
		break;
	fi
done

echo -e "\n"

#for loop with continue
# for loop with conditional break
for i in {1..10}; do
	if (( $i < 5)); then
		continue
	else 
		echo -n "$i "
	fi
done
echo -e "\n"


#while LOop

i=0
while (( ++i <= 5)); do
	echo -n "$i "
done
echo -e "\n"

#until loop based on file size
FILENAME=`basename "$0"` #picks the current filename
echo $FILENAME #masterLoops.sh

TMP_FILE="./tmp1" 
TARGET_FILE="./target"
cat $FILENAME > $TARGET_FILE #writes stuff from our file to target
FILESIZE=0
until [ $FILESIZE -gt 2048 ]; do
	cp $TARGET_FILE $TMP_FILE 
	cat $TMP_FILE >> $TARGET_FILE #copies target to temp and appends that back to target
	
	FILESIZE=`du $TARGET_FILE | awk '{print $1}'` #checks the size
	echo "size of file: $FILESIZE"
done





