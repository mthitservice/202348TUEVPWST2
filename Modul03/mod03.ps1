
# Erweiterte Datentypen
# Enumerator
enum TUEVStatus{
    klein = 0
    mittel = 1
    gross = 4
    }
    
    $Werteliste =@(0,'klein',1,'mittel',4 ,'gross')
    
    foreach ($x  in $Werteliste)
    {
        [TUEVStatus]$wert=$x
    
        [PSCustomObject]@{
            ZugewiesenerWert=$x
            Enumerator=$wert
            istgleich= $x -eq $wert
        }
      
    }
    
    
    
    [int]$w=[TUEVStatus]::mittel
    $w
    
    cls
    # Hashtable
    Write-Host '----------------------------'
    
    ### im Vergleich Array
    $array=@(1,2,3,4,5,7,11)
    $z=0
    foreach ($i in $array)
    {
      [String]$z  +":" + [String]$i
       $z++
    }
    Write-Output $array[3]

