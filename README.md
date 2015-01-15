# Brian's dotfiles

This repo is mostly for me but you're welcome to make suggestions.

## Install the necessary apps

My basic setup is captured in...

## Installation

On Windows:
```shell
- Restore any files from private backup
- Run registry files from backup
- Run Boxstarter Setup "START http://boxstarter.org/package/url?https://raw.github.com/brianschmitt/dotfiles/win/master/BoxStarterSetup.ps1"
- Start Powershell as admin
- cd ~
- git clone https://github.com/brianschmitt/dotfiles
    - Run . ~/dotfiles/win/CloneAndSetup.ps1
- Setup ProcExplorer to Override TaskManager
- Optional - Run the following
    - Vim :BundleInstall
    - TweakUi - ~/computersetup/tweakuifixes.reg
    - VIMHere - ~/computersetup/vimhere.reg
- Optional if running IIS - grant "IIS AppPool\DefaultAppPool" full access to "C:\Windows\System32\inetsrv\config"
    - icacls %systemroot%\system32\inetsrv\config /t /grant "IIS AppPool\DefaultAppPool":F
- Chrome Extensions
    - [Do not track me](https://chrome.google.com/webstore/detail/donottrackme-online-priva/epanfjkfahimkgomnigadpkobaefekcd)
    - [Ghostery](https://chrome.google.com/webstore/detail/ghostery/mlomiejdfkolichcflejclcbmpeaniij)
    - [jQuery Audit](https://chrome.google.com/webstore/detail/jquery-audit/dhhnpbajdcgdmbbcoakfhmfgmemlncjg)
    - [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb)
    - [Smart QrCode Generator](https://chrome.google.com/webstore/detail/smart-qrcode-generator/nfnbjbobhhoaekejilcmdkfomkndikho)
- Firefox Extensions
    - [Disconnect]
    - [Ghostery]
    - [Google Music Media Key Fix]
    - [HTTPS-Everywhere]
    - [LastPass]
```

On Mac:
```shell
- AppStore
  - Install XCode
  - Install Remote Desktop

cd ~
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git
git clone https://github.com/brianschmitt/dotfiles
. ~/dotfiles/mac/bootstrap.sh

```

On Linux:
```shell
git clone https://github.com/brianschmitt/dotfiles

chmod +x dotfiles/setup.sh

./dotfiles/setup.sh
```
