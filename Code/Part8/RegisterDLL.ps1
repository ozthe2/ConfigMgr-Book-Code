$DLLFileName = "MyDLL.dll"
Start-Process -FilePath "$env:SystemRoot\System32\regsvr32.exe" -ArgumentList "/S ""$WorkingDir\$DLLFileName""" -Wait -NoNewWindow