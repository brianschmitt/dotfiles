cd ~
~/dotfiles/setup.bat
git clone https://github.com/brianschmitt/Powershell
~/powershell/setup.bat
git clone https://github.com/brianschmitt/posh-git powershell/posh-git
git clone https://github.com/brianschmitt/posh-tf powershell/posh-tf
(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex
Install-Module PSReadLine
git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
