#!/bin/bash
echo "******** date ***********" >> result
echo `date` >> result
echo "******** name ***********" >> result
echo "Mitsuyo Yasuhara" >> result
name=$1 >> result
echo "******** display the content of file **********" >> result
cat $name >> result
cp $name keep
vi keep/$name
echo "******** display the content of the modified file ****" >> result
cat keep/$name >> result
echo "******** display ls **********" >> result
ls -l keep/$name  >> result
