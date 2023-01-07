Set-Location $env:userprofile

function sudo($file) {
    Start-Process powershell.exe -ArgumentList "-File $file" -Verb RunAs
}

. $env:userprofile\dotfiles\win\symlinks.ps1
sudo $env:userprofile\dotfiles\win\choco_install.ps1
. $env:userprofile\dotfiles\win\nodepip.ps1 # requires npm/pip installed in prior step
sudo $env:userprofile\dotfiles\win\win_features.ps1
. $env:userprofile\dotfiles\win\win_settings.ps1

git clone --recursive https://brianschmitt@github.com/brianschmitt/Powershell.git $env:userprofile\powershell
. $env:userprofile\powershell\configure_environment.ps1


Invoke-WebRequest -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    New-Item $HOME/vimfiles/autoload/plug.vim -Force

& 'vim' +:PlugInstall
