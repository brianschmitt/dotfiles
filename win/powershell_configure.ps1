git clone --recursive https://github.com/brianschmitt/Powershell.git
git clone https://github.com/DarqueWarrior/vsteam.git powershell/modules/vsteam

~/Powershell/set_symlink.bat

Install-PackageProvider Nuget -Force

Install-Module –Name PowerShellGet -AllowClobber -Force

Install-Module -Name PSReadLine -Force
Install-Module -Name Trackyon.Utils -Force
Install-Module -Name SHiPS -Force
Install-Module -Name PSScriptAnalyzer -Force
Install-Module -Name VSTeam -Force

Install-Module -Name posh-git -AllowPrerelease -Force

Install-Module -Name Az -AllowClobber -Force
Enable-AzureRmAlias -Scope LocalMachine