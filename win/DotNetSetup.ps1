# Editors
choco install linqpad4
choco install VisualStudio2013Ultimate -InstallArguments "WebTools"
Install-ChocolateyVsixPackage VSVim http://visualstudiogallery.msdn.microsoft.com/59ca71b3-a4a3-46ca-8fe1-0e90e3f79329/file/6390/46/VsVim.vsix
Install-ChocolateyVsixPackage RelativeNumber http://visualstudiogallery.msdn.microsoft.com/19c65cc7-58fb-429b-b7c2-1892f77f890c/file/125933/3/RelativeNumber.vsix
Install-ChocolateyVsixPackage WebEssentials http://visualstudiogallery.msdn.microsoft.com/56633663-6799-41d7-9df7-0f2a504ca361/file/105627/32/WebEssentials2013.vsix

# General Utils
choco install RdcMan

#Shell
choco install ctags
choco install Nuget.Commandline

#.Net Utils
choco install dotPeek

#Source Controls
choco install gittfs
choco install tfs2013powertools

#Web Dev
choco install nodejs.install
