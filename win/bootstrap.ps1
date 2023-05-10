Set-Location $env:userprofile

function sudo($file) {
    Start-Process powershell.exe -Wait -ArgumentList "-File $file" -Verb RunAs
}

. $env:userprofile\dotfiles\win\symlinks.ps1
sudo $env:userprofile\dotfiles\win\winget_install.ps1

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
. $env:userprofile\dotfiles\win\nodepip.ps1 # requires npm/pip installed in prior step
sudo $env:userprofile\dotfiles\win\win_features.ps1
. $env:userprofile\dotfiles\win\win_settings.ps1

git clone --recursive https://brianschmitt@github.com/brianschmitt/Powershell.git $env:userprofile\Powershell
. $env:userprofile\Powershell\configure_environment.ps1

Invoke-WebRequest -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    New-Item $env:userprofile/vimfiles/autoload/plug.vim -Force

#& 'vim' +:PlugInstall

Set-TimeZone -Name "Eastern Standard Time"

$oldPath = [System.Environment]::GetEnvironmentVariable("Path","User")
$vimPath = "C:\Program Files\Vim\vim90"
[Environment]::SetEnvironmentVariable("PATH", $oldPath + ";$vimPath", [EnvironmentVariableTarget]::User)