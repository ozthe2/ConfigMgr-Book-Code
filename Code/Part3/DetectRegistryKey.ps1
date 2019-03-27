$RegistryKey = "HKLM:\SOFTWARE\Google\Chrome"

If (Test-Path $RegistryKey) {
    Write-Host "Detected!"
}