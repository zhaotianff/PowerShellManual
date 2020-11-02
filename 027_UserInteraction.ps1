#
# UserInteraction.ps1
#


#read input
$name = Read-Host "Enter your name"
$name

#read key
#intercept Boolean
#Determines whether to display the pressed key in the console window. true to not display the pressed key; otherwise, false.
$key = [Console]::ReadKey($true)
$key

#[Console]::BackgroundColor = [System.ConsoleColor]::DarkGray

param(
	$caption = $null,
	$message = $null,
	[Parameter(Mandatory = $true)]
	$Option,
	$helptext = $null,
	$Default = 0
)

Set-StrictMode -Version 3

$choices = New-Object 'Collections.ObjectModel.Collection[Management.Automation]'


