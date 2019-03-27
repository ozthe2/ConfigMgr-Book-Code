$RegistryKey = 'HKLM:\SOFTWARE\GitForWindows'
$Value = 'CurrentVersion'
$Data = '2.20.1'

if ((Get-ItemProperty -Path $RegistryKey | Select-Object $Value -ExpandProperty $Value -ErrorAction SilentlyContinue) -eq $data) {
    Write-Host "Detected!"
}