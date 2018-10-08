﻿Set-Location ~

~/dotfiles/set_symlinks.bat
~/dotfiles/win/choco_install.ps1
~/dotfiles/win/win_features.ps1
~/dotfiles/win/win_settings.ps1

#git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
#& 'C:\Program Files (x86)\vim\vim74\vimexe' +:BundleInstall

git clone --recursive https://github.com/brianschmitt/Powershell.git
git clone https://github.com/DarqueWarrior/vsteam.git ~/powershell/modules/vsteam

#~/Powershell/set_symlink.bat
Install-Module PSReadLine
Install-Module -Name Trackyon.Utils
Install-Module -Name SHiPS

Write-Host #https://github.com/ryanoasis/nerd-fonts/releases
