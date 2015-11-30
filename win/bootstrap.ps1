cd ~

~/dotfiles/set_symlinks.bat
~/dotfiles/win/choco_min.ps1
~/dotfiles/win/win.ps1

git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
& 'C:\Program Files (x86)\vim\vim74\vimexe' +:BundleInstall

git clone --recursive https://github.com/brianschmitt/Powershell
~/Powershell/set_symlink.bat
(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex
Install-Module PSReadLine