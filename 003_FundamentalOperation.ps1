#
# FundamentalOperation.ps1
#

#Run as Admin
Start-Process PowerShell -Verb RunAs

#Basic calculation
1+2
2*2
(1+2)*3

#Execute program
#cmd
notepad
"E:\Notepad++\notepad++.exe"

#Pass argc
notepad "F:\project\PowerShellManual.git\trunk\README.md"

#Declare variable
$date = Get-Date
$date.DayOfYear

#Export command output
#Out-File
Get-Process | Out-File D:\a.txt
#  '>' operator
Get-Process > D:\a.txt

#Append text
#Out-File -Append
Get-Alias | Out-File -Append D:\a.txt
# '>>' operator
Get-Alias >> D:\a.txt

