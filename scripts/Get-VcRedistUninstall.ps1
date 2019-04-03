<#
    .SYNOPSIS
        Simple script for listing the DiplayName and UninstallString for the Visual C++ Redistributables.
#>
Get-ChildItem -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall, HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall | `
Get-ItemProperty | Where-Object {$_.DisplayName -like "Microsoft Visual C*"} | `
Sort-Object DisplayName
