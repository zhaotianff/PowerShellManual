#
# FilesAndDirectoriesManagement.ps1
#

#
#Change current directory
#Set-Location(cd)
#
cd D:\
cd ..

#
#Get current directory
#Get-Location(gl)
#
Get-Location
#Output
#Path
#----
#D:\
(Get-Location).Path
#Output
#D:\

#
#Get the Files in a Directory
#Get-ChildItem(dir)
#
#list all items
Get-ChildItem

#match fileType
#match txt files
Get-ChildItem *.txt

#match filetype with recurse
Get-ChildItem *.txt -Recurse

#match file attribute
#-Directory, -File, -ReadOnly, -Hidden, and -System
Get-ChildItem -Attributes System

