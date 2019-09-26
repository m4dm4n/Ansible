$Vboxmanage = 'C:\Program Files\Oracle\VirtualBox\VBoxManage.exe'

$File = 'C:\Temp\VMids.txt'
$vBox = New-Object -ComObject VirtualBox.VirtualBox
$vBox.Machines.Id | Out-File -FilePath $File

$FileContent = Get-Content 'C:\Temp\VMids.txt'
foreach ($line in $FileContent)

{
#    Start-Process -FilePath $Vboxmanage -ArgumentList "unregistervm $line --delete"
    & $Vboxmanage unregistervm $line --delete
}
