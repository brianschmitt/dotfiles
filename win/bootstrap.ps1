Set-Location ~

~/dotfiles/set_symlinks.bat
~/dotfiles/win/choco_min.ps1
~/dotfiles/win/choco_dotnet.ps1
~/dotfiles/win/choco_full.ps1
~/dotfiles/win/win_features.ps1

#git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
#& 'C:\Program Files (x86)\vim\vim74\vimexe' +:BundleInstall

git clone --recursive https://github.com/brianschmitt/Powershell.git
#~/Powershell/set_symlink.bat
#(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex
Install-Module PSReadLine
Install-Module Posh-Git
Install-Module AzureRM

#https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf?raw=true
#https://github.com/ryanoasis/nerd-fonts/releases