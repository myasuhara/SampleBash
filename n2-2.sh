#!/bin/bash
echo `date` >> /vagrant-data/n2-results.txt
echo "**** MEMORY ***********************************************" >> /vagrant-data/n2-results.txt
free -m >> /vagrant-data/n2-results.txt
echo "**** DISKSPACE ***********************************************" >> /vagrant-data/n2-results.txt
df >> /vagrant-data/n2-results.txt
echo "**** CPU STATICS ***********************************************" >> /vagrant-data/n2-results.txt
vmstat >> /vagrant-data/n2-results.txt

cat /vagrant-data/n2-results.txt

