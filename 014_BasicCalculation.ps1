#
# _014_BasicCalculation.ps1
#

#Arithmetic operators
#+ - * / % += -= /= %= ++ --
$sum = 1+1
$sum
#Output
#2

$sum = 3 * 3
$sum
#Output
#9

$sum++
$sum
#Output
#10

$f = 3/2
$f
#Output
#1.5

#Convert to integer
$i = [int] (3/2)
$i
#Output
#2

#Complex Arithmetic
#Use .Net System.Math class