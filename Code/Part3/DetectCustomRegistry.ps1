$CompanyName = 'Yum Yum Dog Foods Inc'
$Name = 'MyApp'
$Value = '1'

$RegistryPath = Join-Path -Path "HKLM:\SOFTWARE" -ChildPath "$CompanyName\CustomDetection"

if (!(Test-Path $RegistryPath)) {
    New-Item -Path $RegistryPath -Force | Out-Null
}

New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType DWORD -Force | Out-Null