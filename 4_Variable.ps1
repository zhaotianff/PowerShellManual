#
# _4_Variable.ps1
#

#Powershell variables can save the result of a pipelines or commands
#https://docs.microsoft.com/en-us/dotnet/api/system.management.automation.aliasinfo?redirectedfrom=MSDN&view=powershellsdk-1.1.0


#Create variables
###############################
$result = 2 * 2 * 2
$result
###############################
#Output(full)
#8

###############################
$loc = Get-Location
$loc
###############################
#Output(full)
#Path
#----
#C:\

################################
$processes = Get-Process
$processes.Count
################################
#Output(full)
#164


##############
Get-Member
##############
#Get-Member to display information about the contents of variables. 
$loc | Get-Member
#   TypeName:System.Management.Automation.PathInfo

#Name         MemberType Definition
#----         ---------- ----------
#Equals       Method     bool Equals(System.Object obj)
#GetHashCode  Method     int GetHashCode()
#GetType      Method     type GetType()
#ToString     Method     string ToString()
#Drive        Property   System.Management.Automation.PSDriveInfo Drive {get;}
#Path         Property   string Path {get;}
#Provider     Property   System.Management.Automation.ProviderInfo Provider {get;}
#ProviderPath Property   string ProviderPath {get;}


#Types of variables
#The data type of a variable, which is a .NET Framework type, is determined by the .NET types of the values of the variable.
#https://docs.microsoft.com/en-us/dotnet/standard/base-types/common-type-system#types_in_the_net_framework
$a = 12     
#System.Int32
$a = "Word" 
#System.String
$a = 12, "Word" 
#System.Int32, System.String




###################
Get-Variable
###################
#Gets the variables in the current console.

###################
Remove-Variable
###################
#remove variables from current console

###################
New-Variable
###################
#Creates a new variable.

###################
Remove-Variable
###################
#Deletes a variable and its value.

###################
Set-Variable
###################
#Changes the value of a variable.