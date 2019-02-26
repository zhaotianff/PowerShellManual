#
# String.ps1
#

#Create string
#Enclosed by ["]
#expanding string,support extended
$mystring1 = "HelloWorld"   
#Enclosed by [']
#nonexpanding string,not support extended(literal)
$mystring2 = 'HelloWorld'


#Escape character `
$mystring3 = "Hello`nWorld"
$mystring3
#Output
#Hello
#World'

#Multiline string
#between @"   and   "@
#this pattern called "here string"
$mystring4 = 
@"
Hello
Windows
Powershell
"@
$mystring4
#Output
#Hello
#Windows
#Powershell

#Use "here string" to create multiline comment
## This is a regular comment
$null = 
@"
regular comment line1
regular comment line2
regular comment line3
"@
## This is regular script again


#Insert dynamic info into string 
$mystring5 = "Today is "
$mystring6 = [System.DateTime]::Now.DayOfWeek
$mystring7 = "$mystring5-- $mystring6"
$mystring7
#Output
#Today is -- Monday

#Sub expression
#$(subexpression)
$mystring8 = "HelloWorld's"
$mystring9 = "HelloWorld length is $($mystring8.Length)"
$mystring9
#Output
#HelloWorld length is 12


#Format String
#formatter "-f"(string.Format() in .NET)
"{0} plus {1} is {2}" -f 1,2,3
$result = 9 / 3
"{0} devided by {1} is {2} " -f 9,3,$result

#Match String

#-like
"HelloWorld" -like "*oW*"
#Output
#True

#-match (Regex)
#https://docs.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-language-quick-reference
"HelloWorld" -match '[a-zA-Z]+'
#Output
#True

#string function
#https://docs.microsoft.com/en-us/dotnet/api/system.string?redirectedfrom=MSDN&view=netframework-4.7.2
"HelloWorld".IndexOf("d")
#Output
#9

