Update-ExecutionPolicy Unrestricted
#Install-WindowsUpdate -AcceptEula

Set-ExplorerOptions -showHidenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions

# update powershell
#choco install PowerShell

# Fonts
choco install dejavufonts
choco install DroidSansMono
choco install AnonymousPro

# Editors
choco install Vim

# General Utils
choco install clipx
choco install KatMouse
choco install autohotkey_l
choco install agentransack
choco install winmerge
choco install 7zip
choco install RSAT.FeaturePack
choco install bleachbit
choco install ccleaner
choco install ccenhancer

# Shell
choco install ConEmu
choco install sysinternals
choco install gow

# Source Controls
choco install git

# Web Dev
choco install fiddler
choco install WindowsAzurePowershell

choco install googlechrome
choco install firefox
choco install lastpass

# set windows features
choco install RemoteServerAdministrationTools-Roles-AD-Powershell -source windowsfeatures
