Start-Process "powershell.exe" -verb runas -wait -argumentList "-noprofile -noninteractive -ExecutionPolicy unrestricted -WindowStyle hidden -Command `"Set-ExecutionPolicy Unrestricted`""

$winExplorerKey = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
Set-ItemProperty -Path $winExplorerKey -Name Hidden -Value 1
Set-ItemProperty -Path $winExplorerKey -Name ShowSuperHidden -Value 1
Set-ItemProperty -Path $winExplorerKey -Name HideFileExt -Value 0

$uacKey = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'
Set-ItemProperty -Path $uacKey -Name EnableLUA -Value 0

$keyboardIndicator = 'HKEY_USERS\.DEFAULT\Control Panel\Keyboard'
Set-ItemProperty -Path $keyboardIndicator -Name InitialKeyboardIndicators -Value 2

$networkCHMFiles = 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\HTMLHelp\1.x\ItssRestrictions'
Set-ItemProperty -Path $networkCHMFiles -Name MaxAllowedZone -Value 4 -Type DWord

$searchAllFileTypes = 'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ContentIndex'
Set-ItemProperty -Path $searchAllFileTypes -Name FilterFilesWithUnknownExtensions -Value 1 -Type DWord