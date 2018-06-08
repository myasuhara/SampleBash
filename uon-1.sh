#!/bin/bash
echo '' > result
echo '******************  DATE  ****************' >> result
echo `date` >> result
echo '******************  /DATE  ****************' >> result
echo '****************** user name *************' >> result
echo `whoami` >> result
echo '****************** /user name *************' >> result

a=0
until [ ! $a == 0 ]
do
   cut -d: -f1 /etc/passwd > users.txt
   while read line
   do
      if [ $1 == $line ]
      then
         a=1
         echo "$1 logged in" >> result
         break
      fi
    done < users.txt

    sleep 5

done

