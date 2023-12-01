# Info zu Workflows und Verfügbarkeit #

#https://learn.microsoft.com/en-us/powershell/scripting/whats-new/differences-from-windows-powershell?view=powershell-7.4

$uhrzeit =Get-Date

function Log-Message([string] $Message)
{
    Add-Content -Path "c:\temp\pslog.txt" $Message

}

workflow  Start-Flow {

    inlinescript {
# Uhrzeit festhalten
Log-Message "$uhrzeit : Workflow Start"}

# Rechner neu starten
Restart-Computer -Wait
# Uhrzeit wieder aufnehmen

# Alle Ip Adressen des Subnetzes anpingen
$subnetz="192.168.0"
        parallel {
            foreach -parallel ($ip in (1..5)){
                Log-Message "$uhrzeit : TestIP "    
                Test-Connection -Count 1 -ComputerName "$($subnetz).$($ip)" -ErrorAction SilentlyContinue
                Log-Message "$uhrzeit : Test IP Ende"
              #Action that will run in Parallel. Reference the current object via $PSItem and bring in outside variables with $USING:varname
            }

             
        }


# Differenz berechnen

# In Logdatei scheiben
inlinescript {Log-Message "$uhrzeit : Workflow Start"}
    }
