#
# _4_Variable.ps1
#

################
Create variables
################
#alias is a System.Management.Automation.AliasInfo object
#https://docs.microsoft.com/en-us/dotnet/api/system.management.automation.aliasinfo?redirectedfrom=MSDN&view=powershellsdk-1.1.0
$loc = Get-Location
$loc
#Output(full)
#Path
#----
#C:\

#####################################
foreach($alias in Get-Alias)
{
    write   $alias.Name
	write   $alias.Definition
}
#####################################
#Output(part)
#ForEach-Object
#?
#Where-Object
#ac
#Add-Content
#asnp
#Add-PSSnapIn
#cat

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


#############
Get-Variable
#############
#Gets the variables in the current console.