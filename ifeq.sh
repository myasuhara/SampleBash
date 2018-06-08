#!/bin/bash

##
## file name : $1
## string 1:   $2
## string 2:   $3
##
#echo "" > result

echo "**************************************" >> result
echo `date`  >> result
echo "Mitsuyo Yasuhara" >> result

if [ -e $1 ];
then
   echo "This file, $1, exists."  >> result
else
   echo "This file, $1, does not exist." >> result
echo "**************************************" >> result
   exit 2  >> result
fi

cnt1=`grep -c $2 $1`
cnt2=`grep -c $3 $1`

if [ "$cnt1" -gt "$cnt2" ];
then
   echo "A string, $2 is more freqent than a string, $3."  >> result
elif [ "$cnt1" -eq "$cnt2" ];
then
   echo "A string, $2 and a string, $3 are the same frequency." >> result
else
   echo "A string, $3 is more freqent than a string, $2." >> result
fi

echo "**************************************" >> result

exit 0 >> result


