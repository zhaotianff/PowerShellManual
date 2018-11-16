#
# _5_VariableScope.ps1
#

#The syntax for a scope modifier in a variable is:
#$[<scope-modifier>]:<name> = <value>

#Global: The scope that is in effect when PowerShell starts. Variables and functions that are present when PowerShell starts have been created in the global scope, such as automatic variables and preference variables. The variables, aliases, and functions in your PowerShell profiles are also created in the global scope.
$Global:param = "HelloWorld"

#Local: The current scope. The local scope can be the global scope or any other scope.
$Scope:param2 = "HelloWorld"

#Script: The scope that is created while a script file runs. Only the commands in the script run in the script scope. To the commands in a script, the script scope is the local scope.
$Script:param3 = "HelloWorld";

#Private: Items in private scope cannot be seen outside of the current scope. You can use private scope to create a private version of an item with the same name in another scope.
$Private:param4 = "HelloWorld"

#Numbered Scopes: You can refer to scopes by name or by a number that describes the relative position of one scope to another. Scope 0 represents the current, or local, scope. Scope 1 indicates the immediate parent scope. Scope 2 indicates the parent of the parent scope, and so on. Numbered scopes are useful if you have created many recursive scopes.
