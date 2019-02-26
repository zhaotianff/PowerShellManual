#
# Commands.ps1
#

#
# Commands List
# https://docs.microsoft.com/zh-cn/powershell/module/cimcmdlets/?view=powershell-6
#

#How to use commands
Get-Date

#use command with parameter
Get-Date -Format g

#get help
Get-Help Get-Date

#get help online
Get-Help Get-Date -Online

#Commands Alias(such as Get-Process = ps)
Get-Alias
ps

#  #  #  #  #  #  #  #  #  #  #  #  #  #
#        Common Commands List          #
#  #  #  #  #  #  #  #  #  #  #  #  #  #

#Get-History 
#Gets a list of the commands entered during the current session.
Get-History

#Invoke-History
#Runs commands from the session history.
Invoke-History 1

#Start-Transcript
#Creates a record of all or part of a PowerShell session to a text file.
Start-Transcript -Path D:\b.txt

#Stop-Transcript
#Stops a transcript.
Stop-Transcript





