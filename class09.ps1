#Powershell

# Script Name: class09.ps1
# Author Name: Shila Williams
# Date of revision: 07/22/2022
# Description of purpose: Ops Challeng 09- Powershell Logs
# Example usage: >class09.ps1 (within powershell)
# Expected output: T1 - Output last 24 hr to desktop\ast_24.txt
# Expected output: T2 - Output all "error" from System to desktop\error.txt
# Expected output: T3 - Print to screen all events w/ ID 16 from System
# Expected output: T4 - Print to screen most recent 20 entries from System
# Expected output: T5 - Print to screen all "sources" of the 500 most recent in System w/full lines

# Declaration of variables (if any): Begin, End, Event_500
# Declaration of functions (if any): N/A

# Task 1
$Begin + get-date -Date '7/21/2022 00:00:00'
$End = get-date -date '7/21/2022 23:59:59'
Get-EventLog -LogName System -After $Begin -Before $End > C:\Users\13147\Desktop\last_24.txt

# Task 2
Get-EventLog -LogName System -EntryType Error > C:\users\13147\Desktop\errord.txt

# Task 3
Get-EventLog -LogName System -InstanceId 16

# Task 4
Get-EventLog -LogName System _Newest 20

#Task 5
$Event_500 = Get-EventLog -LogName System -Newest 500
$Event_500 | Group-Object -Property Source -NoElement | Sort-Object -Property Count -Descending | Format-Table -AutoSize
