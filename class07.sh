# shebang /bin/bash

# Script Name:class07.sh
# Author Name: Shila Williams
# Date of revision: 07/19/2022
# Description of purpose: Ops Challenge 07 System Information
# Example usage:$ $bash class07.sh  
# Expected output: Present system information
# Declaration of variables (if any): 
# Declaration of functions (if any): n/a

# Main
# Important to always run this script as root or sudo to avoid warning from lshw

echo "Show System Information"
echo "Computer name: "$(lshw | grep "" -m1)
echo "CPU: "$(lshw | grep "*-cpu" -A 5)
echo "RAM: "$(lshw | grep "*-memory" -A 3)
echo "Display Adapter: "$(lshw | grep "*-display" -A 10)
echo "Network Adapter: "$(lshw | grep "*-network" -A 15)
echo "Information Complete"
