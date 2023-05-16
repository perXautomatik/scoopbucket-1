
Write-Host 'Installing and configuring Unverified Choco - ignore checksum / force ...'
. "$PSScriptRoot\Utils.ps1"

'hardlinkshellext', 'folder-marker','rclone-browser', 'sagemath','steam-library-manager','capture2text','freefilesync','lockhunter','nirlauncher' |
    ForEach-Object { 
        Write-Host "Installing $_..."
        choco install -y $_
    }


    