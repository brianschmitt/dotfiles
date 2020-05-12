# update powershell
choco install powershell-core -y

# Fonts
choco install anonymouspro -y
choco install dejavufonts -y
choco install firacode -y

# Editors
choco install vim-tux.install -y
choco install vscode -y
choco install vscode-settingssync -y
choco install sql-server-management-studio -y
choco install onenote -y
#choco install microsoft-office-deployment -y
choco install microsoft-teams -y
#choco install audacity -y

# General Utils
choco install 7zip.install -y
choco install agentransack -y
choco install ditto -y
choco install google-backup-and-sync -y --ignore-checksums
choco install ripgrep -y
choco install winmerge -y
choco install docker-cli -y
choco install joplin -y
#choco install bleachbit -y

# Shell
choco install adb -y
#choco install rdcman -y
choco install sysinternals -y
choco install vmwareworkstation -y
#choco install conemu -y
#choco install hyper -y

# Source Controls
choco install git -y
choco install gitextensions -y
#choco install git-credential-manager-for-windows -y

# Web Dev
choco install awscli -y
choco install azure-cli -y
choco install fiddler -y
choco install postman -y
choco install nodejs-lts -y
choco install python3 -y
#choco install pip -y
choco install terraform -y
choco install zap -y

#.Net Utils
choco install ilspy -y
choco install dnspy -y
choco install nuget.commandline -y
choco install microsoftazurestorageexplorer -y
choco install nugetpackageexplorer -y
choco install dotnetcore-sdk -y

# Browsers
choco install googlechrome -y
choco install firefox -y
choco install microsoft-edge -y

# Skip future updates from chocolatey for self updating
choco pin add -n=googlechrome
choco pin add -n=firefox
choco pin add -n=vscode
choco pin add -n=vscode-settingssync
#choco pin add -n=microsoft-teams