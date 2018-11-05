Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole, IIS-WindowsAuthentication, IIS-BasicAuthentication
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

Get-WindowsCapability -Online -Name RSAT.* | Add-WindowsCapability -Online