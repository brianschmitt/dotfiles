Set-Location ~

~/dotfiles/set_symlinks.bat
~/dotfiles/win/choco_install.ps1
~/dotfiles/win/win_features.ps1
~/dotfiles/win/win_settings.ps1
~/dotfiles/win/powershell_configure.ps1

iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force

#& 'vim' +:PlugInstall
