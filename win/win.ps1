Start-Process "powershell.exe" -verb runas -wait -argumentList "-noprofile -noninteractive -ExecutionPolicy unrestricted -WindowStyle hidden -Command `"Set-ExecutionPolicy Unrestricted`""

$winExplorerKey = 'Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
Set-ItemProperty -Path $winExplorerKey -Name Hidden -Value 1
Set-ItemProperty -Path $winExplorerKey -Name ShowSuperHidden -Value 1
Set-ItemProperty -Path $winExplorerKey -Name HideFileExt -Value 0

$uacKey = 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'
Set-ItemProperty -Path $uacKey -Name EnableLUA -Value 0

$keyboardIndicator = 'Registry::HKEY_USERS\.DEFAULT\Control Panel\Keyboard'
Set-ItemProperty -Path $keyboardIndicator -Name InitialKeyboardIndicators -Value 2

$networkCHMFiles = 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\HTMLHelp\1.x\ItssRestrictions'
Set-ItemProperty -Path $networkCHMFiles -Name MaxAllowedZone -Value 4 -Type DWord

$searchAllFileTypes = 'Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ContentIndex'
Set-ItemProperty -Path $searchAllFileTypes -Name FilterFilesWithUnknownExtensions -Value 1 -Type DWord