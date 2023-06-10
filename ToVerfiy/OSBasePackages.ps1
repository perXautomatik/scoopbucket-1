
Write-Host 'Installing and configuring OSBasePackages...'
. "$PSScriptRoot\Utils.ps1"

'notepad2', 'Everything', 'opera-gx', 'SysInternals', 'wiztree', `
'soundswitch', 'text-grab', 'beyondcompare', 'autohotkey', `
'ditto','freemind', 'irfanview' |
    ForEach-Object { 
        Write-Host "Installing $_..."
        choco install -y $_
    }


