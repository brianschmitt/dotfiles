#Requires -RunAsAdministrator

Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole, IIS-WindowsAuthentication, IIS-BasicAuthentication -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart

#Get-WindowsCapability -Online -Name RSAT.* | Add-WindowsCapability -Online