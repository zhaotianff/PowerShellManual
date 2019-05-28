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
#Create a directory(mkdir md)
#
mkdir dd

#
#Remove a file or directory(Remove-Item rmdir)
#
Remove-Item .\test.txt
Remove-Item dd

#
#Rename a file or directory(Rename-Item rni or ren)
#
Rename-Item .\test.txt test1.txt

#
#Move a File or Directory(Move-Item mi)
#
#file
Move-Item D:\test.raw E:\Test.raw
#dir(include file)
Move-Item D:\folder E:\folder

#
#Get the Files in a Directory
#Get-ChildItem(dir)
#

#list all items
Get-ChildItem

#List all items with recurse
Get-ChildItem -Recurse

#match fileType
#match txt files
Get-ChildItem *.txt

#match pattern
# do not match 
Get-ChildItem -Include *.txt
# match
Get-ChildItem -Exclude *.txt
#filter
Get-ChildItem -Filter *st*
#Output
#Mode                LastWriteTime         Length Name
#----                -------------         ------ ----
#d-----        2017/12/8     17:31                DragControlHelper-master
#d-----        2018/3/15     13:59                EncryptionSystemKiller
#--r-s-        2019/5/14     16:04              3 test.txt
#-a----        2018/3/14     11:59       10249021 worklist.rar
#subdirectories
Get-ChildItem -Path D:\*.txt
#regex(regular expression)
Get-ChildItem | Where-Object {$_.Name -match '[0-9]+.txt'}
#Output
#Mode                LastWriteTime         Length Name
#----                -------------         ------ ----
#-a----        2019/5/14     16:17              0 1.txt
Get-ChildItem | Where-Object {$_.Name -match 'QQ\S*'}
#Output
#    目录: C:\Users\ZhaoJia\Desktop


#Mode                LastWriteTime         Length Name
#----                -------------         ------ ----
#-a----         2019/5/9     14:31           6202 QQ截图20190509143146.png
#-a----         2019/5/9     14:38           9592 QQ截图20190509143820.png
#-a----         2019/5/9     15:41           6740 QQ截图20190509154103.png
#-a----        2019/5/11      8:54         181975 QQ截图20190511085421.png

#match file size
Get-ChildItem -Filter *.jpg -Recurse | Where-Object {$_.Length -gt 500kb}
#Output
#Mode                LastWriteTime         Length Name
#----                -------------         ------ ----
#-a----        2019/3/15     11:04        6220854 1.jpg
#-a----        2017/8/23      8:48        1087661 2.jpg
#-a----        2017/8/25      9:22        1656582 3.jpg
#...

#match filetype with recurse
Get-ChildItem *.txt -Recurse

#match file attribute
#-Directory, -File, -ReadOnly, -Hidden, and -System
Get-ChildItem -Attributes System
Get-ChildItem -Attributes "Hidden,System"
#or not
Get-ChildItem -Attributes !System

#In the filesystem, these cmdlets return objects from the .NET Framework that represent
#files and directories—instances of System.IO.FileInfo and System.IO.Direct
#oryInfo classes
$member = Get-ChildItem | Get-Member
$member.TypeName
#Output
#System.IO.DirectoryInfo
#System.IO.DirectoryInfo
#System.IO.DirectoryInfo
#System.IO.DirectoryInfo
#...

#Get the content of a file
#Get-Content(gc)
gc test.txt

#Clear the content of a file
#Clear-Content(clc)
clc test.txt

#Change the attributes of a file
$item = Get-Item .\test.txt 
$item.Mode
$item.Attributes = "System,ReadOnly"
$item.Mode

#Get the version of exe or dll
$item = Get-Item $PSHOME\powershell.exe
$item.VersionInfo
#Output
#ProductVersion   FileVersion      FileName
#--------------   -----------      --------
#10.0.15063.0     10.0.15063.0 ... C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe

#Get file hash
#algorithm (SHA1 SHA256 SHA384 SHA512 MD5)
Get-FileHash -Algorithm  MD5 .\test.txt
Get-FileHash -Algorithm SHA1 .\test.txt

#
#Get the ACL of a File or Directory
#
Get-Acl D:\bbbb.raw

#
#Set the ACL of a File or Directory
#

# Copy a security descriptor from one file to another
$aACL = Get-Acl -Path "D:\a.raw"
Set-Acl -Path "D:\b.raw" -AclObject $aACL

#Use the pipeline operator to pass a descriptor
Get-Acl -Path "D:\a.raw" | Set-Acl -Path "D:\b.raw"

#Example(prevents the Guestaccount from accessing a file)
#FileSystemAccessRule Class msdn doc
#https://docs.microsoft.com/en-us/dotnet/api/system.security.accesscontrol.filesystemaccessrule?redirectedfrom=MSDN&view=netframework-4.7.2
$acl = Get-Acl D:\a.raw
$arguments = "DESKTOP-6EEHA10\Guest","FullControl","Deny"
$accessRule =New-Object System.Security.AccessControl.FileSystemAccessRule $arguments
$acl.SetAccessRule($accessRule)
$acl | Set-Acl D:\a.raw

#
#Create a ZIP Archive
#
#.Net Object
