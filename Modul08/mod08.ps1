#Docu 
https://learn.microsoft.com/de-de/powershell/scripting/learn/remoting/jea/register-jea?view=powershell-7.4
$c= Read-KeyFile -path "c:\test\test.xml"
Register-PSSessionConfiguration -Name PowerShell.Session  -RunAsCredential $c  -Force
Get-PSSessionConfiguration -Name Powershell.Session
#  Anmelden unter den Profilberechtigungen PowerShell.ConstrainedSession
Enter-PSSession -ComputerName "127.0.0.1"  -Credential $c  -ConfigurationName PowerShell.ConstrainedSession
