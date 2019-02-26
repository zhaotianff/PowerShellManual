#
# CodeReuseExample.ps1
#

#include function in your current scope
. .\016_CodeReuse.ps1

Welcome -name "Jack"

#Output 
#Welcome Jack

#All of the functions from the 016_CodeReuse.ps1 are available to the current session
dir Function: | where {$_.Name -like 'we*'}

#Output
#CommandType     Name                                               Version    Source
#-----------     ----                                               -------    ------
#Function        Welcome

