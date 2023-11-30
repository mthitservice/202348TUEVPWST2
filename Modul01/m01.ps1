# Variablen
## Lerninhalte
## https://learn.microsoft.com/de-de/powershell/module/microsoft.powershell.core/about/about_variables?view=powershell-7.4
$a="500"
$b= 500
Write-Host $a $b 
$b
# Ausgabe aller Variablen im Kontext
Get-Variable 
# SPeicher wieder freigeben (Einfache Datentypen)
#Variante 1
$b=$null
# Variante 2 - Deinitialisieren
Clear-Variable -Name b
# Variante 3 - Deinitialisieren und entfernen
Remove-Variable -Name b
# Komplexe Datentypen 
$tuevListe=1,2,3
$tuevListe

# ganzes Objekt entfernen (Komplexe Datentypen)
Remove-Item -Path Variable:\tuevListe
# Typisierung von Variablen
cls
$x="5"
$x=3434343646755575
$y="5"
$x.GetType()
Write-Host "--------------------------------------"
$y.GetType()
Write-Host "--------------------------------------"
$tuevListe1=1,2,3
$tuevListe1.GetType()
cls
#Typisierte variablen.

[Int32]$t=12
$t.GetType()
[Int64]$tx=13
$tx.GetType()
cls
# Kurzschreibweise Int32 
[int]$s=8
$s=4
$s=7
 [string] $text="test"
cls
 [datetime]$datum="10.11.2023"
 $datum
cls
#Automatic Variables
${save-items}="a","b","c"
${save-items}.GetType()
