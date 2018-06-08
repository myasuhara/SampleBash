#!/bin/bash

echo `date` > logs

if [ $# == 0 ]
then
      echo "************** instruction ****************************************"
      echo "*                                                                 *"
      echo "*     Specify the following parameter(s):                         *"
      echo "*                                                                 *"
      echo "*        -cpu, -ram, -volumes, -network, -all                     *"
      echo "*                                                                 *"
      echo "*******************************************************************"
fi


while [ "$1" != "" ]; do
    # echo "Parameter 1 equals $1"
    # echo "You now have $# positional parameters"

   if [ "$1" = "-cpu" ]
      then
        echo "****** Numer of CPU ***************************************************"  >> logs
        cat /proc/cpuinfo | grep "cpu cores" >> logs
        echo " " >> logs
      elif [ "$1" = "-ram" ]
      then
        echo "**** Amount of RAM ****************************************************"  >> logs
        cat /proc/meminfo | grep "Mem" >> logs
        echo " " >> logs
      elif [ "$1" = "-volumes" ]
      then
        echo "***** Number of Volumes ***********************************************"  >> logs
        df -h >> logs
        echo " " >> logs
      elif [ "$1" = "-network" ]
      then
     	echo "***** MAC address and IP address in Network ****************************"  >> logs
     	ifconfig -a | grep "addr" >> logs
     	echo " " >> logs
      elif [ "$1" = "-all" ]
      then
        echo "***** Numer of CPU *****************************************************" >> logs
        cat /proc/cpuinfo | grep "cpu cores" >> logs
        echo " " >> logs
        echo "***** Amount of RAM ****************************************************" >> logs
        cat /proc/meminfo | grep "Mem" >> logs
        echo " " >> logs
        echo "***** Number of Volumes ************************************************" >> logs
        df -h >> logs
        echo " " >> logs
        echo "***** MAC address and IP address in Network ****************************" >> logs
        ifconfig -a | grep "addr" >> logs
        echo " " >> logs
   fi

    # Shift all the parameters down by one
    shift

done

cat logs
