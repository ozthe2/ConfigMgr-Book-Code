$FileorFolderName = "configmgr-DeployUsingPS.pdf"
$Path = "e:\Users\Fred\Downloads"

If (Test-Path (Join-Path -Path $Path -ChildPath $FileorFolderName)) {
    Write-Host "Detected!"
}