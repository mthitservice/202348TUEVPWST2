<#
.SYNOPSIS
    Funktionen zum Laden und Speichern von Passwortdaten.
.PARAMETER Path 
    Speicherpfad des Hashwertes
.EXAMPLE
  # Generierungsfunktion
    Create-KeyFile -Path "c:\keys\keyfile.xml"
.EXAMPLE
  # Ladefunktion
    Read-KeyFile -Path "c:\keys\keyfile.xml"


#>
# Funktion Erzeuge Passwortschlüsseldatei
function Write-KeyFile {
    param([string]$Path )
    try {
        $cred = Get-Credential -Message "Passwort Hash generieren" -Title "Passwort generieren"
        $cred |  Export-Clixml -path $Path
    }
   
    catch {
        Write-Output "Fehler beim schreiben des Hash Wertes"
    }


}

# Lade Passwortschlüsseldatei
function Read-KeyFile {
    param([string]$Path )
    try {
        $cred = Import-Clixml -path $Path
        return $cred
    }
   
    catch {
        Write-Output "Fehler beim sladen der Daten"
    }


}

Export-ModuleMember -Function Write-KeyFile,Read-KeyFile



