#
# CodeReuse.ps1
#

Function Welcome([string]$name)
{
	"Welcome $name"
}


Get-Command | Select Name
