
Write-Host "Uninstalling McAfee Applications..."

. $PSScriptRoot\Utils.ps1

Function Uninstall-McAfeeApplications {
    Write-Host "Running $($MyInvocation.MyCommand.Name)..."
    Get-Program 'McAfee*'
    Get-Program 'McAfee*' | ForEach-Object {
        try {
            Write-Host "Uninstalling $($_.Name)..."
            $uninstallString = "'$($_.UninstallString -replace '.exe','.exe''')"
            Invoke-Expression $uninstallString
        }
        catch {
            Write-Error "Error occurred: $_"
        }
    }
}
Uninstall-McAfeeApplications