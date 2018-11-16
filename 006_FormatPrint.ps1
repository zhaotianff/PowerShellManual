#
# _5_FormatPrint.ps1
#

#Powershell include 4 format print commands

#Format-Table
#Format-List
#Format-Wide
#Format-Hex



#Format-Table
#Formats the output as a table.
Get-Process | Format-Table
Get-Process | Format-Table Name,Id
#Output(part)
#
#Name                                 Id
#----                                 --
#360chrome                          1284
#360chrome                         20728
#360chrome                         21908
#360chrome                         24376
#



#Format-List
#Formats the output as a list of properties in which each property appears on a new line.
 Get-Process | Format-List -Property name, basepriority, priorityclass
#Output(part)
#
#Name          : 360chrome
#BasePriority  : 8
#PriorityClass : Normal

#Name          : 360chrome
#BasePriority  : 8
#PriorityClass : Normal





#Format-Wide
#Formats objects as a wide table that displays only one property of each object.
Get-ChildItem | Format-Wide -Column 1
#Output(full)
#    Ä¿Â¼: C:\



#dicom_log
#Intel
#PerfLogs
#Program Files
#Program Files (x86)
#TsdTemp
#Users
#Windows





#Format-Hex
#Displays a file or other input as hexadecimal.
1024 | Format-Hex
#Output(full)
# Â·¾¶:

#           00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F

#00000000   00 04                                            ..

"HelloWorld" | Format-Hex
#Output(full)
#           00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F

#00000000   48 65 6C 6C 6F 57 6F 72 6C 64                    HelloWorld

Format-Hex -Path D:\test.txt
#Output(part)
#           Â·¾¶: D:\test.txt

#           00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F

#00000000   25 54 53 44 2D 48 65 61 64 65 72 2D 23 23 23 25  %TSD-Header-###%
#00000010   E4 A2 E0 A2 99 D9 E8 11 BC 0E 48 4D 7E CA 95 86  ??¨¤???¨¨.?.HM~???