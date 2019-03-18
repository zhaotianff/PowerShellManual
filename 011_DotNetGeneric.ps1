#
# DotNetGeneric.ps1
#

$list = New-Object Collections.Generic.List[int]
$list2 = New-Object 'System.Collections.Generic.List[string]'

$list.Add(1)
$list.Add(2)
$list
#Output
#1
#2

$list2.Add("abc")
$list2.Add("def")
$list2
#Output
#abc
#def