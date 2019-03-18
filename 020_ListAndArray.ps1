#
# ListAndArray.ps1
#

#
#Create an array
#
$myArray = 1,2,3,"abc"
$myArray
#Output
#1
#2
#3
#abc

#
#To store the output of a command that generates a list
#
$myArray = Get-Process
$myArray
#Output
#Handles  NPM(K)    PM(K)      WS(K)     CPU(s)     Id  SI ProcessName          
#-------  ------    -----      -----     ------     --  -- -----------          
#   1770      96    98096     102880      14.06   6024   3 360chrome            
#    474      51   140764     100220      14.42   9140   3 360chrome            
#    453      35    85244      33288       0.41  13936   3 360chrome   
#...

#
#designate size and type
#
$myArray = New-Object int[] 3
$myArray[0] = 1
$myArray[1] = 2
$myArray
#Output
#1
#1
#0

$myArray = New-Object string[] 3
$myArray[0] = "HelloWorld"
$myArray
#Output
#HelloWorld


#
#ArrayList
#
$myArray = New-Object System.Collections.ArrayList
[void]$myArray.Add("abc")
[void]$myArray.Add(1)
[void]$myArray.Add(2)
[void]$myArray.Add(3)
$myArray
#Output
#abc
#1
#2
#3
$myArray.RemoveAt(0)
$myArray
#Output
#1
#2
#3

#
#Multidimensional Array
#
$matrix = @(
	(0,1,2),
	(1,0,2),
	(3,1,0)
)
$matrix
#Output
#1
#2
#1
#0
#2
#3
#1
#0

$matrix[0][0]
$matrix[2][0]
#Output
#0
#3