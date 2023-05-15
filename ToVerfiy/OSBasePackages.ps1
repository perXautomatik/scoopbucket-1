
Write-Host 'Installing and configuring OSBasePackages...'
. "$PSScriptRoot\Utils.ps1"

'notepad2', 'Everything', 'opera-gx', 'SysInternals', 'wiztree', `
        'powershell-core','echoargs','psreadline', `
        'folder-marker','rclone-browser', 'sagemath', 'soundswitch', 'steam-library-manager','text-grab',`
        'beyondcompare', 'autohotkey','capture2text','ditto', `
        'freefilesync','freemind', `
        'hardlinkshellext','irfanview','lockhunter','nirlauncher' |
    ForEach-Object { 
        Write-Host "Installing $_..."
        choco install -y $_
    }


