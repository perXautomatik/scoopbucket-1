<#
.SYNOPSIS
Creates registry entries for different file formats associated with Harmonoid.

.DESCRIPTION
Creates registry entries for different file formats associated with Harmonoid using the specified installation path.

.PARAMETER Path
The installation path of Harmonoid. It should be a valid folder path.

.OUTPUTS
None. The Create-HarmonoidRegistryEntries function does not return any output.

.EXAMPLE
Create-HarmonoidRegistryEntries -Path "C:\Program Files\Harmonoid"

This example creates registry entries for Harmonoid installed in C:\Program Files\Harmonoid.
#>
function Create-HarmonoidRegistryEntries {
    [CmdletBinding()]
    param (
	[Parameter(Mandatory)]
	[ValidateNotNullOrEmpty()]
	[ValidateScript({Test-Path $_ -PathType Container})] # The installation path of Harmonoid
	$Path
    )

    # Define the file formats and their associated registry keys
    $Formats = @(
	'ogg',
	'oga',
	'ogx',
	'aac',
	'm4a',
	'mp3',
	'wma',
	'wav',
	'flac',
	'opus',
	'aiff',
	'ac3',
	'adt',
	'adts',
	'amr',
	'ec3',
	'm3u',
	'm4r',
	'wpl',
	'zpl'
    )

	function Create-Item ($Key, $Name, $Value) {
	    New-Item $Key -Force | Out-Null
	    New-ItemProperty $Key -Name $Name -Value $Value -Force | Out-Null
	}

	# Create a new item for the Capability subkey and set its properties
	Create-Item 'HKCU:\Software\Harmonoid\Harmonoid\Capability' 'ApplicationDescription' 'Plays & manages your music library. Looks beautiful & juicy.'
	Create-Item 'HKCU:\Software\Harmonoid\Harmonoid\Capability' 'ApplicationName' 'Harmonoid'

	function Create-Subkey ($Key) {
	    New-Item $Key -Force | Out-Null
	}

	# Create a new subkey for the FileAssociations subkey
	Create-Subkey 'HKCU:\Software\Harmonoid\Harmonoid\Capability\FileAssociations'

	function Create-SupportedTypes ($App) {
	    New-Item "HKCU:\SOFTWARE\Classes\Applications\$App\SupportedTypes" -Force | Out-Null
	}

	# Create a new item for the SupportedTypes subkey of harmonoid.exe
	Create-SupportedTypes 'harmonoid.exe'


    # Loop through each file format and create the registry entries
	foreach ($Format in $Formats) {

	    # Create a new item for the file format and set its value to the registry key
	    Create-Item "HKCU:\SOFTWARE\Classes\.$Format" '' "Harmonoid.$Format"

	    # Create a new item for the DefaultIcon subkey and set its value to the Harmonoid icon file
	    Create-Item "HKCU:\SOFTWARE\Classes\Harmonoid.$Format\DefaultIcon" '' "$Path\harmonoid.exe,0"

	    # Create a new item for the shell\open\command subkey and set its value to the Harmonoid executable with the file argument
	    Create-Item "HKCU:\SOFTWARE\Classes\Harmonoid.$Format\shell\open\command" '' "`"$Path\harmonoid.exe`" `"%1`""

	    # Add the file format and its value to the FileAssociations subkey
	    Create-Item 'HKCU:\Software\Harmonoid\Harmonoid\Capability\FileAssociations' ".$Format" "Harmonoid.$Format"

	    # Add the file format and its value to the SupportedTypes subkey
	    Create-Item 'HKCU:\SOFTWARE\Classes\Applications\harmonoid.exe\SupportedTypes' ".$Format" ''

	    # Create a new item for the OpenWithProgids subkey and set its value to the registry key
	    Create-Subkey "HKCU:\SOFTWARE\Classes\.$Format\OpenWithProgids"
	    Create-Item "HKCU:\SOFTWARE\Classes\.$Format\OpenWithProgids" "Harmonoid.$Format" ''
	}

}
