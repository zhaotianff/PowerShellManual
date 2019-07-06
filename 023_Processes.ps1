#
# _023_Processes.ps1
#

#List Currently Running Processes(ps)
Get-Process
ps

Get-Process | Get-Member
Get-Process | Format-Table ProcessName,Name,CPU,WorkingSet

#Filter processes over 1024MB
Get-Process | Where-Object {$_.WorkingSet -gt 1024MB}

#Start process(start)
Start-Process "http://www.baidu.com"
start "E:\test.txt"

#Stop process
start mspaint
Stop-Process -ProcessName mspaint