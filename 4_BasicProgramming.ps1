#
# _4_BasicProgramming.ps1
#

#Declare variables
#alias is a System.Management.Automation.AliasInfo object
#https://docs.microsoft.com/en-us/dotnet/api/system.management.automation.aliasinfo?redirectedfrom=MSDN&view=powershellsdk-1.1.0
foreach($alias in Get-Alias)
{
    write   $alias.Name
	write   $alias.Definition
}