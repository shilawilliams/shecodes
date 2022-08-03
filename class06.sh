# shebang /bin/bash

# Script Name:class06.sh
# Author Name: Shila Williams
# Date of revision: 07/18/2022
# Description of purpose: Ops Challenge 06 Conditionals
# Example usage:$ $bash class06.sh  
# Expected output: Test for file or create
# Declaration of variables (if any): files,files
# Declaration of functions (if any): n/a


#Declare array
files=(files1.txt file2.txt file3.txt file4.txt)

#For loop to check for each fle in array

for file in "${files[@]}"
do 
   # add IF to check for file
   if [ -f "$file"  ]; then
      # if file exists tell me
      echo "$file  already exist."
    else
      echo "$file does not exist."
      touch $file
     echo "The $file now exist."

    fi 

done 

#END