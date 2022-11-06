#!/bin/bash

#script by Eugenia Flores from DSI certificate on November 1, 2022
#script to print one column of choice on any csv file. 
#wyou ill need to update the column number after f, this code is for
#parking.csv file and I want to retrieve one column (4).
#You need to have your script saved in the same working directoy as
#your csv file.
#The scripts were taken from the content of the DSI course

echo "
Number of arguments: $#
\$0 = $0
\$1 = $1"

# Number of arguments: 0
#$0 = ./parameters.sh  name of the file
#$1 = number of parameters


#name of working directoy $ ./parameters.sh a 

#Number of arguments: 1
#$0 = ./parameters.sh  (code)
#$1 = a   (name of your cvs file) 

csv_file=$1

cut -d, -f4 < $csv_file | sort -k4


cut -d, -f5 < $csv_file | sort -u| sort -n | HEAD -n3 

echo Minimun fine amount


cut -d, -f5 < $csv_file | sort -u| sort -n | TAIL -n1 

echo Maximum fine amount


cut -d, -f4,5 < $csv_file | sort -n | grep "FAIL TO (PARK/STOP) ANGLE SPCE" | cat > Homework.csv

echo The file Homework.csv has been created on your working directory with one parking infractions FAIL TO  PARK/STOP ANGLE SPACE


cut -d, -f5 < $csv_file | sort -k4 | cat > fine_amount.csv 

echo The file  fine_amount.csv has been created on your working directoy 

awk 'BEGIN{s=0;}{s=s+$1;}END{print s/NR;}' < fine_amount.csv

echo  Mean fine fine_amount
