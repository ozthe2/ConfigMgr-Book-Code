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
        "x86" { if ( <# Detect something here - file existence, file verfsion etc #> ) { Write-host "Installed!"}}
        "x64" { if ( <# Detect something here - file existence, file verfsion etc #> ) { Write-host "Installed!"}}
    }
}