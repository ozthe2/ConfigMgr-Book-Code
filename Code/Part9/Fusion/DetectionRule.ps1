﻿$X86Path = "${env:ProgramFiles(x86)}\Datel Computing Ltd\FUSION Excel Connect Client\Addin"
$X64Path = "$env:ProgramFiles\Datel Computing Ltd\FUSION Excel Connect Client\Addin"

push-location

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
        "x86" {if (test-path $X86Path -PathType Container) { Write-host "Installed!"}}
        "x64" {if (test-path $X64Path -PathType Container) { Write-host "Installed!"}}
    }
    Pop-Location
}