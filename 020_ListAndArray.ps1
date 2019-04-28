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
#Hashtable (key-value)
#
$myHashtable = @{ "Key1" = 1; "Key2" = 1,2,3 }
$myHashtable["Key1"]
#Output
#1
$myHashtable["Key2"]
#Output
#1
#2
#3
$myHashtable["Key3"] = 3
$myHashtable
#Name                           Value                                           
#----                           -----                                           
#Key3                           3                                               
#Key1                           1                                               
#Key2                           {1, 2, 3}     

#
#Sort a Hashtable by Key or Value
#
$myHashtable = @{"key1" = 1;"key2" = 2;"key3" = 3}
$myHashtable
#Output
#key3                           3                                               
#key1                           1                                               
#key2                           2 


$myHashtable = $myHashtable.GetEnumerator() | Sort Name
$myHashtable
#Output
#key1                           1                                               
#key2                           2                                               
#key3                           3     


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

#Access element of a array
$processList = Get-Process
$processList
$processList[0]

$processList[0] | Get-Member
$processList[0].Name

#Visit each element of an array
$numArray = 1,2,3
$sum = 0
foreach($item in $numArray)
{
	$sum += $item
}
$sum
#Output
#6

$sum2 = 0
$numArray | ForEach-Object{$sum2 += $_}
$sum2
#Output
#6

$sum3 = 0
for($i = 0; $i -lt $numArray.Count;$i++)
{
	$sum3 +=$numArray[$i]
}
$sum3
#Output
#6

#Sort an array
#order by process name ascending
get-process | Sort-Object Name
#order by process name descending
get-process | Sort-Object -Descending Name

#sort a list that you’ve saved variables
$myArray = 12,21,13,31,14,41
[Array]::Sort($myArray)
$myArray
#Output
#12
#13
#14
#21
#31
#41

#Determine Whether an Array Contains an Item
$myArray = 1,2,3,4,5
$myArray -contains 1
#Output
#True

#Combine Two Arrays
$array1 = 1,2,3,4,5
$array2 = 6
$array3 = $array1 + $array2
$array3
#Output
#1
#2
#3
#4
#5
#6

#Find Items in an Array That Match a Value
$myArray = "helloworld1","helloworld2","helloworld3"
$myArray -eq "helloworld1"
#Output
#helloworld1

$myArray -like "helloworld*"
#Output
#helloworld1
#helloworld2
#helloworld3


