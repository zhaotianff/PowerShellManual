#
# Utilities.ps1
#

#Registry
#Run
Get-Item -Path 'Registry::HKEY_CURRENT_USER\Volatile Environment'

Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths'
