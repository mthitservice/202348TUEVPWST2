# Doku 
https://learn.microsoft.com/de-de/powershell/scripting/learn/remoting/jea/role-capabilities?view=powershell-7.4

# Erstellen eine Rollenfiles
New-PSRoleCapabilityFile -Path .\MyFirstJEARole.psrc

# Recht auf Restart-Computer
VisibleCmdlets = @{
    Name       = 'Restart-Computer'
    Parameters = @{ Name = 'Name' }
}

# Zulassen von externen Befehlen
VisibleExternalCommands = @(
    'C:\Windows\System32\whoami.exe'
    'C:\Program Files\Contoso\Scripts\UpdateITSoftware.ps1'
)

# Benutzerdefinierte Funktion
VisibleFunctions = 'Get-TopProcess'

FunctionDefinitions = @{
    Name        = 'Get-TopProcess'
    ScriptBlock = {
        param($Count = 10)

        Get-Process |
            Sort-Object -Property CPU -Descending |
            Microsoft.PowerShell.Utility\Select-Object -First $Count
    }
}