﻿scoop alias add "Updates" 'scoop update; $status = scoop status; ForEach ($line in $($status -split "`r`n")) { $line = $line.TrimStart().Split(":")[0].TrimEnd(); Invoke-Expression -Command "scoop update $line -k"; Invoke-Expression -Command "sudo scoop update $line -g -k" }; Start-Sleep -Seconds 10' "Updates all apps one at a time without using download cache"
Start-Sleep -Seconds 15