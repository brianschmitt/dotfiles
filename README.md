# Brian's dotfiles

This repo is mostly for me but you're welcome to make suggestions.

## Installation

### Windows:
- Restore any files/registry from private backup
- Run Boxstarter Setup
"START http://boxstarter.org/package/url?https://raw.github.com/brianschmitt/dotfiles/master/win/BoxStarterSetup.ps1"
- Start Powershell as admin

```shell
cd ~
git clone https://github.com/brianschmitt/dotfiles
. ~/dotfiles/win/CloneAndSetup.ps1
```
- Set ProcExplorer to override TaskManager
- Optional
    - DotnetSetup - ~/dotfiles/win/dotnetsetup.ps1
    - TweakUi - ~/dotfiles/win/tweakuifixes.reg
    - VIMHere - ~/dotfiles/win/vimhere.reg
    - Github SSH Key setup - ~/dotfiles/win/gen_github_sshkey.bat
    - Visual Studio Plugins
    	- Hide Main Menu
    	- VSVim
    	- RelativeNumber
    	- Web Essentials

### Mac:
- AppStore
  - Install XCode
  - Install Remote Desktop
- Start terminal

```shell
cd ~
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git
git clone https://github.com/brianschmitt/dotfiles
. ~/dotfiles/osx/bootstrap.sh
```
- Cask staged them, run installers for:
	- 'Install Xamarin.app'
	- 'LastPass Installer.app'
- Add /usr/local/bin/bash to /etc/shells

```shell
chsh -s /usr/local/bin/bash
```
- Optional
    - Github SSH Key setup - ~/dotfiles/osx/gen_github_sshkey.sh

### Linux:
```shell
git clone https://github.com/brianschmitt/dotfiles
chmod +x dotfiles/setup.sh
./dotfiles/setup.sh
```

### Common:
```shell
vim +:BundleInstall
```
- LastPass [LastPass](https://lastpass.com/download)
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

