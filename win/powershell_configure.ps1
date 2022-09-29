cd ~
#git clone --recursive https://github.com/brianschmitt/Powershell.git

~/Powershell/set_symlink.bat

Install-PackageProvider Nuget -Force
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

Install-Module -Name PowerShellGet -AllowClobber -Force

Install-Module -Name PSReadLine -Force -SkipPublisherCheck
Install-Module -Name Trackyon.Utils -Force
Install-Module -Name SHiPS -Force
Install-Module -Name PSScriptAnalyzer -Force
Install-Module -Name VSTeam -Force
#Install-Module -Name PSSudo -Force

Install-Module -Name posh-git -Force

#Install-Module -Name Az -AllowClobber -Force
#Enable-AzureRmAlias -Scope LocalMachine