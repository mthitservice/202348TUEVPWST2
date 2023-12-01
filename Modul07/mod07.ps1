#Fenster in  mit Windows Forms
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$f=New-Object System.Windows.Forms.Form
$f.Text="Tüv Eingabefenter"
$f.StartPosition ='CenterScreen'
$f.Size=New-Object System.Drawing.Size(300,200)
$f.MaximizeBox=$true
$f.TopMost=$true
# Button
$ok=New-Object System.Windows.Forms.Button
$ok.Location =New-Object System.Drawing.Point(75,120)
$ok.Size=New-Object System.Drawing.Size(75,23)
$ok.Text="OK"
$ok.DialogResult=[System.Windows.Forms.DialogResult]::OK
$f.AcceptButton=$ok
$f.Controls.Add($ok)
# Textbox
$t=New-Object System.Windows.Forms.TextBox
$t.Location =New-Object System.Drawing.Point(10,40)
$t.Size=New-Object System.Drawing.Size(260,20)
$f.Controls.Add($t)
# Label
$l=New-Object System.Windows.Forms.Label
$l.Location =New-Object System.Drawing.Point(10,20)
$l.Size=New-Object System.Drawing.Size(280,20)
$l.Text="Bitte Information eingeben:"
$f.Controls.Add($l)

$f.add_shown({$t.Select()})

$r=$f.Show()

if ($r -eq [System.Windows.Forms.DialogResult]::OK)
{
$x=$t.Text
$x

}