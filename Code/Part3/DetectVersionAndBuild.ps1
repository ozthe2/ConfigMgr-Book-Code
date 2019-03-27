$VersionNumber = '64.0'
$BuildNumber = '6914'
$Executable = "firefox.exe"
$Path = "$Env:ProgramFiles\Mozilla Firefox"

If ((Get-item (Join-Path -Path $Path -ChildPath $Executable) -ErrorAction SilentlyContinue).VersionInfo.ProductVersion -eq $VersionNumber -and (Get-item (Join-Path -Path $Path -ChildPath $Executable) -ErrorAction SilentlyContinue).VersionInfo.FilePrivatePart -eq $BuildNumber) {
    Write-Host "Detected!"
}