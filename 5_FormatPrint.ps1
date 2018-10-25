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

