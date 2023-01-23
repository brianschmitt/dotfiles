#Requires -RunAsAdministrator

Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole, IIS-WindowsAuthentication, IIS-BasicAuthentication -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET45, WAS-WindowsActivationService, WCF-HTTP-Activation45, IIS-NetFxExtensibility45, WCF-HTTP-Activation45, WAS-ProcessModel, WAS-ConfigurationAPI, IIS-ISAPIExtensions, IIS-ISAPIFilter   -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart
Add-WindowsCapability -Online -Name "Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0"