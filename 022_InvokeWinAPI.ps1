#
# InvokeWinAPI.ps1
#

#create the signature of the Windows API function,
#and then pass that to the -MemberDefinition parameter of the Add-Type cmdlet. Store
#the output object in a variable, and then use the method on that variable to invoke the
#Windows API function.

#GetCurrentDirectory
#https://docs.microsoft.com/zh-cn/windows/desktop/api/winbase/nf-winbase-getcurrentdirectory
$signature = @'
[DllImport("kernel32.dll")]
public static extern uint GetCurrentDirectory(uint nBufferLength,StringBuilder lpBuffer);
'@
$type = Add-Type -MemberDefinition $signature `
-Name Win32Utils -Namespace GetCurrentDirectory `
-Using System.Text -PassThru

$str = New-Object System.Text.StringBuilder 512
$return = $type::GetCurrentDirectory($str.Capacity,$str)
$str.ToString()

