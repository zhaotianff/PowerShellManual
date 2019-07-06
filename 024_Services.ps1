#
# Services.ps1
#

#List all running services
Get-Service
Get-Service | Get-Member
Get-Service | Format-Table Name,ServiceName,DisplayName

#Find running services
Get-Service | Where-Object {$_.Status -eq 'Running'}

#Stop service
Stop-Service -Name MSMQ

#Suspend service
Suspend-Service -Name MSMQ

#Resume service
Resume-Service

#Restart service
Restart-Service
