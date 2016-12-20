# Brian's dotfiles

This repo is mostly for me but you're welcome to make suggestions.

## Installation

### Windows:
- Start Powershell as admin

```shell
cd ~
Set-ExecutionPolicy Unrestricted
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
choco install git -y

#if WIN7
choco install powershell -y
shutdown /r
#endif

# restart powershell session to add git to path
git clone https://github.com/brianschmitt/dotfiles.git
. ~/dotfiles/win/bootstrap.ps1
```
- Set ProcExplorer to override TaskManager
- Optional
    - Restore any files/registry from cloud backup
    - DotnetSetup - ~/dotfiles/win/choco_dotnet.ps1
    - FullSetup - ~/dotfiles/win/choco_full.ps1
    - Github SSH Key setup - ~/dotfiles/win/gen_github_sshkey.bat

### Mac:
- AppStore
  - Install XCode
- Start terminal

```shell
cd ~
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git
git clone https://github.com/brianschmitt/dotfiles.git
. ~/dotfiles/osx/bootstrap.sh

chsh -s /usr/local/bin/bash
```
- Cask staged, run installers for:
	- 'Install Xamarin.app'
	- 'LastPass Installer.app'
- Optional
    - Appstore: Remote Desktop
    - Github SSH Key setup - ~/dotfiles/osx/gen_github_sshkey.sh

### Linux:
```shell
cd ~
git clone https://github.com/brianschmitt/dotfiles.git
. ~/dotfiles/lnx/bootstrap.sh
```

### Common:
- Chrome Extensions
    - [Do not track me](https://chrome.google.com/webstore/detail/donottrackme-online-priva/epanfjkfahimkgomnigadpkobaefekcd)
    - [Ghostery](https://chrome.google.com/webstore/detail/ghostery/mlomiejdfkolichcflejclcbmpeaniij)
    - [jQuery Audit](https://chrome.google.com/webstore/detail/jquery-audit/dhhnpbajdcgdmbbcoakfhmfgmemlncjg)
    - [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb)
    - [Smart QrCode Generator](https://chrome.google.com/webstore/detail/smart-qrcode-generator/nfnbjbobhhoaekejilcmdkfomkndikho)
- Firefox Extensions
    - [Disconnect](https://addons.mozilla.org/en-us/firefox/addon/disconnect)
    - [Ghostery](https://addons.mozilla.org/en-us/firefox/addon/ghostery)
    - [Google Music Media Key Fix](https://addons.mozilla.org/en-us/firefox/addon/google-music-media-key-fix)
    - [HTTPS-Everywhere](https://www.eff.org/https-everywhere)

