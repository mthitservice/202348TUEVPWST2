$start=Get-Date

$code1={Start-Sleep -Seconds 5 ; "A"}
$code2={Start-Sleep -Seconds 6 ; "B"}
$code3={Start-Sleep -Seconds 2 ; "C"}

$job1=Start-Job -ScriptBlock $code1
$job2=Start-Job -ScriptBlock $code2

$result3= & $code3

$alljobs = Wait-Job $job1, $job2

$result1 = Receive-Job $job1
$result2 = Receive-Job $job2

Remove-Job $alljobs
$end=Get-Date
$result1, $result2, $result3
$zeitspanne=$end-$start
$seconds = $zeitspanne
Write-Host "Dauer:  $seconds  s"

