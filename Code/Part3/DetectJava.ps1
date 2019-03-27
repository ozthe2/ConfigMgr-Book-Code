$VersionNumber = '8.0.2010.9'
$Executable = "java.exe"
$32BitPath = "${env:ProgramFiles(x86)}\Java\jre1.8.0_201\bin"
$64BitPath = "$env:ProgramFiles\Java\jre1.8.0_201\bin"

If ((Get-item (Join-Path -Path $32BitPath -ChildPath $Executable) -ErrorAction SilentlyContinue).VersionInfo.ProductVersion -eq $VersionNumber -and (Get-item (Join-Path -Path $64BitPath -ChildPath $Executable) -ErrorAction SilentlyContinue).VersionInfo.ProductVersion -eq $VersionNumber) {
    write-host "Installed!"
}