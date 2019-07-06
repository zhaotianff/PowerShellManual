#
# WindowsRegistry.ps1
#

#Use the Set-Location cmdlet to navigate the registry
Set-location HKLM:\Software\Microsoft\Windows\CurrentVersion\Run

#View a Registry key
Get-ItemProperty .

