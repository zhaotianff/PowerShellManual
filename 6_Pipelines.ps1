#
# _6_Pipelines.ps1
#

#Pipelines act like a series of connected segments of pipe. Items moving along the pipeline pass through each segment. 
#The output of each command is used as input to the next command.
#Use (|) to divide each command in the pipeline

Get-Location
#Output(full)
#Path
#----
#C:\

Get-Location | Get-Member
#Output(full)
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
