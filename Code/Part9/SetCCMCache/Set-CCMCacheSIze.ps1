function Set-CCMCacheSize {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory=$false)]
        [String]
        $ComputerName = 'localhost',
        
        [Parameter(Mandatory=$true,
        HelpMessage = "Enter the number to resize the cache to in megabytes. ie it must be divisible by 1024. Eg. to set to 6GB enter 6144")]
        [ValidateScript({$_ % 1024 -eq 0})]
        [int]
        $CacheSize
    )

    Begin {}

    Process {
        $CCM = New-Object -ComObject UIResource.UIResourceMGR

        ($CCM.GetCacheInfo()).totalsize = $CacheSize
    }
}