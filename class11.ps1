#Powershell

# Script Name: class11.ps1
# Author Name: Shila Williams
# Date of revision: 07/26/2022
# Description of purpose: Ops Challeng 011- Automated Endpoint Configuration
# Example usage: >class011.ps1 (within powershell)
# Expected output: Show process information
# Declaration of variables (if any):
# Declaration of functions (if any):

  <#  Enable File and Printer Sharing
   Allow ICMP traffic
   Enable Remote management 
   Remove bloatware
   Enable Hyper-v
   Disable SMBv1, an insecure protocol #>

   # Task 1
   Set-NetFirewallRule -DisplayGroup "File and Printer Sharing" -Enabled True

   # Task 2
   netsh advfirewall firewall and rule name= "Class11-Allow ICMP incoming ping requests" dir=in action=allow protocol=icmpv4

   # Task 3
   reg add "HKLM\System\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnection /tReg_DWORD /d 0 /f

   # Task 4
   iex((New-Object System.Net.WebClient).DowloadString('https://git.io/debloat'))

   # Task 5
    Enable-WindowsOptionalFeature -Online  -FeatureName Microsoft -Hypwer-V -All

   #Task 6
   Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
