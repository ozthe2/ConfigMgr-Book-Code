$OfficePaths = @('HKLM:\Software\Microsoft\Office','HKLM:\Software\WOW6432Node\Microsoft\Office')
        $OfficeVersions = @('14.0', '15.0', '16.0')       

        foreach ($Path in $OfficePaths) {
            foreach ($Version in $OfficeVersions) {
                try {
                    Set-Location "$Path\$Version\Outlook" -ea stop -ev x
                    $Bitness = Get-ItemPropertyValue -Name "Bitness" -ea stop -ev x
                    switch ($bitness) {
                        'x86' {$Is32Bit = $True}
                        'x64' {$Is32Bit = $false}                
                    }
                    break
                } catch {
                    $Is32Bit = 'Unknown'
                }
            }
            if ($Is32Bit -eq $true -or $Is32Bit -eq $false) {break}
        }