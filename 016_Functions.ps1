#
# Functions.ps1
#

#Encapsulate some scripts that you can call multiple times

#you have the function keyword followed by the name of the function, and a script
#block with code in it, which is delimited by curly brackets. 
Function Function-Name
{
   "HelloWorld"
}

#Get OS Version
Function Get-OSVersion
{
	[System.Environment]::OSVersion.VersionString
}

Get-OSVersion
#Output
#Microsoft Windows NT 6.2.9200.0

###############################
#passing parameter
###############################
Function PrintHello([string] $name)
{
	"Hello,$name"
}

PrintHello "Dav"  
#Or
PrintHello("Dav")
#Or
PrintHello -name "Dav"
#Or
PrintHello -n "Dav"
#Output
#Hello,Dav

#Return Data from a Function
Function Now
{
	[System.DateTime]::Now
}
$year = (Now).Year
$year
#Output
#2019

Now | Get-Member
#Output(part)
#ypeName:System.DateTime

#Name                 MemberType     Definition                                 
#----                 ----------     ----------                                 
#Add                  Method         datetime Add(timespan value)    

#Adding help for functions
Function MyFunctionWithHelp([string]$name,[switch]$help)
{
	if($help)
	{
		$helpstring =@"
		Hello
		MyFunctionWithHelp
		Syntax:
			MyFunctionWithHelp [string][-name]
		Example
			MyFunctionWithHelp -name helloworld
"@
		$helpstring
	}

	$name
}

#display help info
MyFunctionWithHelp -help
#Output
#		Hello
#		MyFunctionWithHelp
#		Syntax:
#			MyFunctionWithHelp [string][-name]
#		Example
#			MyFunctionWithHelp -name helloworld


#display the contents of a function
Get-Content Function:\MyFunctionWithHelp






