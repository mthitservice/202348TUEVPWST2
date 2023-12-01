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
    # Hilfsfunktion zum Anlegen von Ordnern
    function fncreateFolder {
        param ([string]$path)
        # String zerlegen (splitten)  "\"
        $split = $path.Split("\")
        $split
        $split.Length 
        if ($split.Length -gt 2) {
  
            $root = $split[0]
            $targetpath = $root
            For ($i = 1; $i -le $split.Length - 2; $i++) {
                $targetpath = $targetpath + "\" + $split[$i]
                if (Test-Path -Path $targetpath) {
                }
                else {
                    mkdir $targetpath  
                }
          
            }

        }

    }
    
    try {
        $cred = Get-Credential -Message "Passwort Hash generieren"
        $cred |  Export-Clixml -path $Path
    }
    catch [System.IO.DirectoryNotFoundException] {
        Write-Output "Ordner nicht nicht gefunden"
        fncreateFolder -path  $Path
        Write-Output "Ordner wurden angelegt"
        $cred |  Export-Clixml -path $Path

    }
   
    catch {
        Write-Output "Fehler beim schreiben des Hash Wertes"
        Write-Output $_
    }
    finally {

       
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

Export-ModuleMember -Function Write-KeyFile, Read-KeyFile



