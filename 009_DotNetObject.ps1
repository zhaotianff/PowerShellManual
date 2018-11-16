#
# _9_DotNetObject.ps1
#

#You can use New-Object cmdlet to create .net object

$mydate = New-Object System.DateTime(2018,11,15,11,38,00)
$mydate
#Output
#2018Äê11ÔÂ15ÈÕ 11:38:00

$generator = New-Object System.Random
$generator.NextDouble()

#Load Assembly
[Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms");  #GAC
#[Reflection.Assembly]::Load("E:\Photoshop CS6\Adobe Photoshop CS6 (64 Bit)\CoolType.dll")   #local assembly
#or
Add-Type -AssemblyName System.Windows.Forms

#Static Method
#[ClassName]::MethodName(parameter list)
[System.Windows.Forms.MessageBox]::Show("HelloWorld","Tooltip",[System.Windows.Forms.MessageBoxButtons]::YesNo)

#Static Property
#[ClassName]::PeopertyName
[System.DateTime]::Now
#Output
#2018/11/15 14:17:23

#Instantiated Method
#obj.MethodName(parameterlist)
$mystring = New-Object System.Text.StringBuilder
$mystring.Append("HelloWorld")
$mystring.ToString()
#Output
#HelloWorld

#Instantiated Property
#obj.PropertyName
$mystring.Length
#Output
#10

#.Net using keyword in powershell
#.Net
#using myNamespace = System.Windows.Forms.MessageBox
#myNamespace.Show("HelloWorld")
#powershell
$messageBox = [System.Windows.Forms.MessageBox]
$messageBox::Show("HelloWorld")

$namespace = "System.{0}"
$mydate2 = New-Object ($namespace -f "DateTime")
$mydate





