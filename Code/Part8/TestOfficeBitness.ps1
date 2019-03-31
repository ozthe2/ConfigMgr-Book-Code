$OfficePath = 'HKLM:\Software\Microsoft\Office'
$OfficeVersions = @('14.0','15.0','16.0')    
    
foreach ($Version in $OfficeVersions) {
    try {
        Set-Location "$OfficePath\$Version\Outlook" -ea Stop -ev x
        $LocationSet = $true
        break
    } catch {
        $LocationSet = $false
    }
}

if ($locationSet) {
    #Check for bitness then check correct file version
    switch (Get-ItemPropertyValue -Name "Bitness") {
        "x86" { $Bitness = '32-Bit' }
        "x64" { $Bitness = '64-Bit' }
        default { $Bitness = 'Unknown' }
    }
}

if (!($Bitness)) {
    $Bitness = 'Not Installed'
}