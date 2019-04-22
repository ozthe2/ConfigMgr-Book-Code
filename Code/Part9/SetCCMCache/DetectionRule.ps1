$CacheSize = #Enter the value that you set the cache size to here eg 10240

$CCM = New-Object -ComObject UIResource.UIResourceMGR

if (($CCM.GetCacheInfo()).totalsize -eq $CacheSize) {
    Write-Host "Installed!"
}