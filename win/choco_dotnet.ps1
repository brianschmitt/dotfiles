# Editors
choco install linqpad4

# VS 2012
choco install VisualStudio2012Ultimate
choco install tfs2012powertools
Install-ChocolateyVsixPackage WebEssentials https://visualstudiogallery.msdn.microsoft.com/07d54d12-7133-4e15-becb-6f451ea3bea6/file/79465/42/WebEssentials2012.vsix

#VS 2013
#choco install VisualStudio2013Ultimate -InstallArguments "WebTools"
#choco install tfs2013powertools
#Install-ChocolateyVsixPackage WebEssentials http://visualstudiogallery.msdn.microsoft.com/56633663-6799-41d7-9df7-0f2a504ca361/file/105627/32/WebEssentials2013.vsix

# All Visual Studio
Install-ChocolateyVsixPackage VSVim http://visualstudiogallery.msdn.microsoft.com/59ca71b3-a4a3-46ca-8fe1-0e90e3f79329/file/6390/46/VsVim.vsix
Install-ChocolateyVsixPackage RelativeNumber http://visualstudiogallery.msdn.microsoft.com/19c65cc7-58fb-429b-b7c2-1892f77f890c/file/125933/3/RelativeNumber.vsix
Install-ChocolateyVsixPackage HideMenu https://visualstudiogallery.msdn.microsoft.com/bdbcffca-32a6-4034-8e89-c31b86ad4813/file/18183/2/HideMenu.vsix

#.Net Utils
choco install dotPeek

#Shell
choco install Nuget.Commandline