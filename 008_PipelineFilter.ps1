#
# _7_PipelineFilter.ps1
#

#Use Where-Object(alias where or ?) to removing Objects from the Pipeline 

#Where-Object Comparison Operators
#-eq			is equal to											1 -eq 1
#-ne			Is not equal to										1 -ne 2
#-lt			Is less than										1 -lt 2
#-le			Is less than or equal to							1 -le 2
#-gt			Is greater than										2 -gt 1
#-ge			Is greater than or equal to							2 -ge 1
#-like			Is like (wildcard comparison for text)				"file.doc" -like "f*.do?"
#-notlike		Is not like (wildcard comparison for text)			"file.doc" -notlike "p*.doc"
#-contains		Contains											1,2,3 -contains 1
#-notcontains	Does not contain									1,2,3 -notcontains 4

#Where-Object script blocks use the special variable $_ to refer to the current object in the pipeline.
Get-Service | Where-Object {$_.Status -eq "Running"}  #Running services
Get-Process | Where-Object {$_.Name -like "win*"}     #Filter processes that contain "win"

#You supply the test condition as the value of the Where-Object FilterScript parameter.
#The value of FilterScript is a script block - one or more Windows PowerShell commands surrounded by braces {} - that evaluates to true or false. 
#You can omit FilterScript
1,2,3,4 | Where-Object {($_ -lt 3)}
#Output
#1
#2


#Where-Object Logical Operator
#-and	Logical and; true if both sides are true	(1 -eq 1) -and (2 -eq 2)
#-or	Logical or; true if either side is true		(1 -eq 1) -or (1 -eq 2)
#-not	Logical not; reverses true and false		-not (1 -eq 2)
#!		Logical not; reverses true and false		!(1 -eq 2)
1,2,3,4 | Where-Object {($_ -lt 3) -and ($_ -eq 1)} 
#Output
#1