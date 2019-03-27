$MimecastVersion = '7.6.0.11151'

$OfficePath = 'HKLM:\Software\Microsoft\Office'
$OfficeVersions = @('14.0','15.0','16.0')    
    
foreach ($Version in $OfficeVersions) {
    try {
        Set-Location "$OfficePath\$Version\Outlook" -ea stop -ev x
        $LocationSet = $true
        break
    } catch {
        $LocationSet = $false
    }
}

if ($locationSet) {
    #Check for bitness then check correct file version
    switch (Get-ItemPropertyValue -Name "Bitness") {
        "x86" { if ((get-item "${env:ProgramFiles(x86)}\Mimecast\Mimecast Outlook Add-In\musepkg32.exe" -ErrorAction SilentlyContinue).VersionInfo.fileversion -eq $MimecastVersion) { Write-host "Installed!"} }
        "x64" { if ((get-item "$ENV:ProgramFiles\Mimecast\Mimecast Outlook Add-In\musepkg32.exe" -ErrorAction SilentlyContinue).VersionInfo.fileversion -eq $MimecastVersion) { Write-host "Installed!"}}
    }
}