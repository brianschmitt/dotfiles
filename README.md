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

# restart powershell session to add git to path
cd ~
git clone https://github.com/brianschmitt/dotfiles.git
. ~/dotfiles/win/bootstrap.ps1
```
- Set ProcExplorer to override TaskManager
- Optional
    - Restore any files/registry from cloud backup

### Mac:
- Start terminal

```shell
cd ~
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
git clone https://github.com/brianschmitt/dotfiles.git
. ~/dotfiles/osx/bootstrap.sh

```
- Optional
    - Appstore: Remote Desktop
    - [Nerdfonts](https://www.nerdfonts.com/font-downloads)

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

