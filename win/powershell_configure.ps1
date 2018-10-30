git clone --recursive https://github.com/brianschmitt/Powershell.git
git clone https://github.com/DarqueWarrior/vsteam.git powershell/modules/vsteam

~/Powershell/set_symlink.bat
Install-Module -Name PSReadLine -Force
Install-Module -Name Trackyon.Utils -Force
Install-Module -Name SHiPS -Force

Install-Module -Name Posh-Git -Force
Install-Module -Name PSScriptAnalyzer -Force

Install-Module -Name Az -Force
Enable-AzureRmAlias -Scope LocalMachine