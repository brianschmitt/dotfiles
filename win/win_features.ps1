#Requires -RunAsAdministrator

Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole, IIS-WebServer, IIS-CommonHttpFeatures, IIS-HttpErrors, IIS-ApplicationDevelopment, IIS-Security, IIS-RequestFiltering, IIS-NetFxExtensibility45, IIS-HealthAndDiagnostics, IIS-HttpLogging, IIS-Performance, IIS-WebServerManagementTools, IIS-StaticContent, IIS-DefaultDocument, IIS-DirectoryBrowsing, IIS-ISAPIFilter, IIS-ISAPIExtensions, IIS-ASPNET45, IIS-BasicAuthentication, IIS-HttpCompressionStatic, IIS-ManagementConsole, IIS-WindowsAuthentication -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName WAS-WindowsActivationService, WAS-ProcessModel, WAS-ConfigurationAPI, WCF-Services45, WCF-HTTP-Activation45, WCF-TCP-PortSharing45 -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart
Add-WindowsCapability -Online -Name "Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0"




