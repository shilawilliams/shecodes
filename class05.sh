# shebang /bin/bash

# Script Name:Class 05             
# Author Name: Shila Williams
# Date of revision: 07/14/2022
# Description of purpose: Ops Challenge 05 Loops
# Example usage: $bash class05.sh
# Expected output: kill a process
# Declaration of variables (if any): optiont
# Declaration of functions (if any): n/a

# Declare and set variables
option="y"

# Main
while [ $option == "y" ]
do 

  ps aux
  echo -e "\nPlease give the PID of the process you would like to kill"
  read pid
  kill -9 $pid
  echo -e "\nKil another process? (y to continue /any othe key to stop)"
  read option
  done
  

# End