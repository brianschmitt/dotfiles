$files = '.vimrc','.ctags','.global_ignore','.gitattributes','.gitconfig'

foreach ($file in $files) {
    $hardlink = (Get-ChildItem $env:userprofile\$file -ErrorAction SilentlyContinue).LinkType -eq "HardLink"
    if (!$hardlink) {
        Remove-Item $env:userprofile\$file -ErrorAction SilentlyContinue
        New-Item -ItemType HardLink -Path $env:userprofile\$file -Target $env:userprofile\dotfiles\$file
    }

}

#del .\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
#mklink /H .\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json .\dotfiles\win\winterminalsettings.json