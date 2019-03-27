$FileorFolderName = "A folder to detect"
$Path = "c:\temp"

If (Test-Path (Join-Path -Path $Path -ChildPath $FileorFolderName)) {
    Write-Host "Detected!"
}