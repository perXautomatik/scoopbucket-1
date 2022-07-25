#Requires -Version 5
#Requires -Modules @{ ModuleName = 'Pester'; MaximumVersion = '4.99' }

if (!$env:SCOOP_HOME) { $env:SCOOP_HOME = Resolve-Path (scoop prefix scoop) }
$result = Invoke-Pester "$PSScriptRoot/.." -PassThru
exit $result.FailedCount
