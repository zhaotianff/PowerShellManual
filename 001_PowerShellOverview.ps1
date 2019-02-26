#
# PowerShellOverview.ps1
#

#
#PowerShell is a task-based command-line shell and scripting language built on .NET. PowerShell helps system administrators and power-users rapidly automate tasks that manage operating systems (Linux, macOS, and Windows) and processes.
#Detail 
#https://docs.microsoft.com/en-us/powershell/scripting/overview?view=powershell-6
#PowerShell is Open-Source
#Project
#https://github.com/PowerShell/PowerShell
#

#
#Windows PowerShell comes installed by default in every Windows, starting with Windows 7 SP1 and Windows Server 2008 R2 SP1.
#

#
#type $PSVersionTable and press ENTER. Look for the PSVersion value.
#
$PSVersionTable
#example output
#Name                           Value
#----                           -----
#PSVersion                      5.1.15063.0
#PSEdition                      Desktop
#PSCompatibleVersions           {1.0, 2.0, 3.0, 4.0...}
#BuildVersion                   10.0.15063.0
#CLRVersion                     4.0.30319.42000
#WSManStackVersion              3.0
#PSRemotingProtocolVersion      2.3
#SerializationVersion           1.1.0.1


#
#PowerShell Cmdlets use verb-noun names to reduce command memorization
#such as Get-Process, Stop-Process, Get-Service, and Stop-Service.
#

#The following list shows a few of the common cmd.exe and Unix commands that you can use in PowerShell:
cat
cd
chdir
clear
cls
copy
del
diff
dir
echo
erase
h
history
kill
lp
ls
mount
move
popd
ps
pushd
pwd
r
ren
rm
rmdir
sleep
sort
tee
type
write

#
#In fact, the above command is an abbreviation of the powershell command(alias).
#such as cls is Clear-Host
#The Get-Alias cmdlet shows you the real name of the native PowerShell command associated with an alias.
Get-Alias cls
#output
#CommandType     Name                                               Version    Source
#-----------     ----                                               -------    ------
#Alias           cls -> Clear-Host
#

#
#get all built-in alias
Get-Alias 
#

#
#Creating new aliases
#
Set-Alias -Name open -Value Get-Content
open "./002_HelloWorld.ps1"
#