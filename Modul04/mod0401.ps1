# Fehlerbehandlung

# Eingabe
# Deklaration und Initialisierung  
#$wert="start"
# $zahl=0

function Start-Tuev {
    throw "Absturz"
}


# Verarbeitung
try {
    
    Start-Tuev

}
catch {
    Write-Error -Message "Wir haben ein Problem" -ErrorAction Stop
    Write-Output $_
}
finally {
    Write-Output "Schließe alles"
}


# Zweiter Testbereich
try {
    
    Write-Output "Test"

}
catch {
    Write-Error -Message "Wir haben noch ein Problem" -ErrorAction Stop
   
}

