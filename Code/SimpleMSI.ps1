﻿Start-Process -Filepath "$ENV:SystemRoot\System32\msiexec.exe" -ArgumentList "/i $WorkingDir\7z1900-x64.msi /qn /norestart"