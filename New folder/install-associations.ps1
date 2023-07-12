<#
.SYNOPSIS
Creates registry entries for different file extensions associated with Packet Tracer.

.DESCRIPTION
Creates registry entries for different file extensions associated with Packet Tracer using the specified version and installation path.

.PARAMETER Version
The version of Packet Tracer to use. It should be in the format of X.Y.Z.

.PARAMETER Path
The installation path of Packet Tracer. It should be a valid folder path.

.OUTPUTS
None. The Create-Packet TracerRegistryEntries function does not return any output.

.EXAMPLE
Create-PacketTracerRegistryEntries -Version 8.0.1 -Path "C:\Program Files\Cisco Packet Tracer 8.0"

This example creates registry entries for Packet Tracer 8.0.1 installed in C:\Program Files\Cisco Packet Tracer 8.0.
#>
function Create-PacketTracerRegistryEntries {
    [CmdletBinding()]
    param (
	[Parameter(Mandatory)]
	[ValidateNotNullOrEmpty()]
	[ValidatePattern("^\d+\.\d+\.\d+$")] # The version of Packet Tracer to use
	$Version,

	[Parameter(Mandatory)]
	[ValidateNotNullOrEmpty()]
	[ValidateScript({Test-Path $_ -PathType Container})] # The installation path of Packet Tracer
	$Path
    )

    # Get the major version from the version string
    $MajorVersion = $Version.Split('.')[0]

    # Define the file extensions and their associated registry keys
    $FileExtensions = @(
	".pkt" = "PacketTracer$MajorVersion"
	".pka" = "PacketTracer$MajorVersion.Activity"
	".pkz" = "PacketTracer$MajorVersion.PKZ"
	".pks" = "PacketTracer$MajorVersion.ActivitySequence"
	".pksz" = "PacketTracer$MajorVersion.ActivitySequencePackage"
    )

    # Loop through each file extension and create the registry entries
    foreach ($FileExtension in $FileExtensions.GetEnumerator()) {

	# Create a new item for the file extension and set its value to the registry key
	New-Item "HKCU:\SOFTWARE\Classes\$($FileExtension.Key)" -Value $FileExtension.Value -Force | Out-Null

	# Create a new item for the shell\open\command subkey and set its value to the Packet Tracer executable with the file argument
	New-Item "HKCU:\SOFTWARE\Classes\$($FileExtension.Value)\shell\open\command" -Value "`"$Path\bin\PacketTracer.exe`" `"%1`"" -Force | Out-Null

	# Create a new item for the DefaultIcon subkey and set its value to the Packet Tracer icon file
	New-Item "HKCU:\SOFTWARE\Classes\$($FileExtension.Value)\DefaultIcon" -Value "$Path\art\pkt.ico" -Force | Out-Null
    }
}