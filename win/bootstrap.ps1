Set-Location ~

~/dotfiles/set_symlinks.bat
~/dotfiles/win/choco_install.ps1
~/dotfiles/win/nodepip.ps1
~/dotfiles/win/win_features.ps1
~/dotfiles/win/win_settings.ps1
~/dotfiles/win/powershell_configure.ps1

Invoke-WebRequest -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    New-Item $HOME/vimfiles/autoload/plug.vim -Force

#& 'vim' +:PlugInstall
