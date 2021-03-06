#
# WindowsRegistry.ps1
#

#Use the Set-Location cmdlet to navigate the registry
Set-location HKLM:\Software\Microsoft\Windows\CurrentVersion\Run

#View a Registry entry
Get-ItemProperty .

#Output
#SecurityHealth      : C:\Program Files\Windows Defender\MSASCuiL.exe
#RTHDVCPL            : "C:\Program Files\Realtek\Audio\HDA\RtkNGUI64.exe" -s
#RtHDVBg_PushButton  : "C:\Program Files\Realtek\Audio\HDA\RAVBg64.exe" /IM
#WavesSvc            : "C:\Program Files\Waves\MaxxAudio\WavesSvc64.exe" -Jack
#IAStorIcon          : "C:\Program Files\Intel\Intel(R) Rapid Storage Technology\IAStorIconLaunch.exe" "C:\Program Files
#                      \Intel\Intel(R) Rapid Storage Technology\IAStorIcon.exe" 60
#AdobeAAMUpdater-1.0 : "C:\Program Files (x86)\Common Files\Adobe\OOBE\PDApp\UWA\UpdaterStartupUtility.exe"
#PSPath              : Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\
                      Run
#PSParentPath        : Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion
#PSChildName         : Run
#PSDrive             : HKLM
#PSProvider          : Microsoft.PowerShell.Core\Registry

#Or
Get-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion
#To view the registry entries in a more readable form
Get-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion

#Getting a Single Registry Entry
Get-ItemProperty -Path HKLM:\Software\Microsoft\Windows\CurrentVersion -Name DevicePath

#Creating New Registry Entries
New-ItemProperty -Path Registry::HKEY_CURRENT_USER\Test -Name PowerShellPath -PropertyType String -Value $PSHome
#The PropertyType must be the name of a Microsoft.Win32.RegistryValueKind enumeration member from the following table:

#PropertyType           Value	Meaning
#Binary              	Binary data
#DWord	                A number that is a valid UInt32
#ExpandString	        A string that can contain environment variables that are dynamically expanded
#MultiString	        A multiline string
#String	                Any string value
#QWord	                8 bytes of binary data

#Renaming Registry Entries
Rename-ItemProperty -Path Registry::HKEY_CURRENT_USER\Test -Name Test -NewName PSHome

#Deleting Registry Entries
Remove-ItemProperty -Path Registry::HKEY_CURRENT_USER\Test -Name PSHome

#Listing All Subkeys of a Registry Key(HKEY_CURRENT_USER)
Get-ChildItem -Path hkcu:\
Get-ChildItem -Path Registry::HKEY_CURRENT_USER
Get-ChildItem -Path Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER
Get-ChildItem -Path Registry::HKCU
Get-ChildItem -Path Microsoft.PowerShell.Core\Registry::HKCU
Get-ChildItem HKCU:
Get-ChildItem 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths'

#Creating Keys
New-Item -Path hkcu:\test
#Or
Set-Location 'Registry::HKEY_CURRENT_USER'
New-Item -Name 'Test'


#Copying Keys
Copy-Item -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion' -Destination 'HKCU:\Test'


#Remove a Registry Key Value
#HKEY_LOCAL_MACHINE\SOFTWARE\MyTestItem(for test)
#HKEY_LOCAL_MACHINE\SOFTWARE\MyTestItem\MyTestSubItem1(for test)
#HKEY_LOCAL_MACHINE\SOFTWARE\MyTestItem\MyTestSubItem2(for test)
Set-Location HKLM:\SOFTWARE\MyTestItem
Get-ItemProperty .

Remove-ItemProperty . MyTestSubItem1

#Or
Remove-Item -Path hkcu:\Test

#Removing All Keys Under a Specific Key��You can't do this.��
#Remove-Item -Path HKCU:\CurrentVersion\* -Recurse

#Renaming Registry Key
Rename-Item -Path hkcu:\Test -NewName Test2

#Get Registry Acl
Get-Acl Registry::HKEY_CURRENT_USER

#Set Registry Acl
cd Registry::HKEY_LOCAL_MACHINE\Test
$acl = Get-Acl .
$arguments = "ComputerName\ZTI","FullControl","Allow"
$accessRule = New-Object System.Security.AccessControl.RegistryAccessRule
$acl.SetAccessRule($accessRule)
$acl | Set-Acl .





