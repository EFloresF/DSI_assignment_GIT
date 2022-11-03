# Script to calculate the mean of a column on a csv file
# parameters to modify, the number of the column, $1 is the 
#first column.
# The code from line 8 to 24 was provided at the DSI course by Rachael Lam Oct 2022
# The code since line 25 was found at https://www.codegrepper.com/code-examples/shell/bash+calculate+the+mean+of+a+column
# The script was made on November 1 by Eugenia Flores

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

awk 'BEGIN{s=0;}{s=s+$1;}END{print s/NR;}' < $csv_file