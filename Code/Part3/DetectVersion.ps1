$VersionNumber = '8.0.2010.9'
$Executable = "java.exe"
$Path = "${env:ProgramFiles(x86)}\Java\jre1.8.0_201\bin"

If ((Get-item (Join-Path -Path $Path -ChildPath $Executable) -ErrorAction SilentlyContinue).VersionInfo.ProductVersion -eq $VersionNumber) {
    Write-Host "Detected!"
}