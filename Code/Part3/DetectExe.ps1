$Executable = "java.exe"
$Path = "${env:ProgramFiles(x86)}\Java\jre1.8.0_201\bixn"

If (Test-Path (Join-Path -Path $Path -ChildPath $Executable)) {
    Write-Host "Detected!"
}