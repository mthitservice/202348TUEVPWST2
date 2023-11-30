# Gültigkeitsbereiche
# https://learn.microsoft.com/de-de/powershell/scripting/lang-spec/chapter-03?view=powershell-7.4

$oben = 1
function meineFunktion {
    $mitte = 2
    $oben # Gib außendeklarierte Variable aus
    $oben = 55
    $oben
   

}
meineFunktion
$oben
$mitte
cls
# Ausgabe der Globalen Variablen Home
$global:HOME
# Übersicht  Scopes
#https://learn.microsoft.com/de-de/powershell/module/microsoft.powershell.core/about/about_scopes?view=powershell-7.4