#
# ConditionalStatement.ps1
#

#about comparison operators and logical operators
#https://github.com/zhaotianff/PowerShellManual/blob/master/008_PipelineFilter.ps1

#if else
$now = [System.DateTime]::Now
if($now.Year -gt 2017)
{
	"greater than 2017"
}
else 
{
	"less than 2017"
}

#switch
$day = 1
switch($day)
{
	{$_ -eq 1} {"Monday";break}
	{$_ -eq 2} {"Tuesday";break}
	{$_ -eq 3} {"Wednesday";break}
	{$_ -eq 4} {"Thursday";break}
	{$_ -eq 5} {"Friday";break}
	{$_ -eq 6} {"Saturday";break}
	{$_ -eq 7} {"Sunday";break}
}

#Loop
#for
for($i = 1;$i -lt 10;$i++)
{
	$i
}

#foreach(Foreach-Object's alias)
foreach($file in Get-Item -Path *)
{
	$file.FullName
}
#Output
#F:\project\PowerShellManual.git\trunk\bin
#F:\project\PowerShellManual.git\trunk\doc
#F:\project\PowerShellManual.git\trunk\obj
#F:\project\PowerShellManual.git\trunk\001_HelloWorld.ps1
#F:\project\PowerShellManual.git\trunk\002_FundamentalOperation.ps1
#F:\project\PowerShellManual.git\trunk\003_Commands.ps1
#...

#while
$text = ''
while($text -ne 'exit')
{
	$text = Read-Host
	$text
}

#do while
$text = ''
do
{
	$text = Read-Host
	$text
}while($text -ne "exit")



