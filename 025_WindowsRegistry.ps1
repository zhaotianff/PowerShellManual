#
# WindowsRegistry.ps1
#

#Use the Set-Location cmdlet to navigate the registry
Set-location HKLM:\Software\Microsoft\Windows\CurrentVersion\Run

#View a Registry key
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

#Remove a Registry Key Value
#HKEY_LOCAL_MACHINE\SOFTWARE\MyTestItem(for test)
#HKEY_LOCAL_MACHINE\SOFTWARE\MyTestItem\MyTestSubItem1(for test)
#HKEY_LOCAL_MACHINE\SOFTWARE\MyTestItem\MyTestSubItem2(for test)
Set-Location HKLM:\SOFTWARE\MyTestItem
Get-ItemProperty .

Remove-ItemProperty . MyTestSubItem1

