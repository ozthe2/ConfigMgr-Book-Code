$CompanyName = 'Yum Yum Dog Foods Inc'
$FileName = 'MyApp-001.log'

$DetectionPath = Join-Path -Path "$env:SystemRoot" -ChildPath "$CompanyName\CustomDetection"

if (!(Test-Path $DetectionPath)) {
    New-Item -Path $DetectionPath -ItemType Directory | Out-Null
}

New-Item -Path $DetectionPath -Name $FileName -ItemType File -Force | Out-Null