Start-Process "powershell.exe" -verb runas -wait -argumentList "-noprofile -noninteractive -ExecutionPolicy unrestricted -WindowStyle hidden -Command `"Set-ExecutionPolicy Unrestricted`""

$winExplorerKey = 'Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
Set-ItemProperty -Path $winExplorerKey -Name Hidden -Value 1
Set-ItemProperty -Path $winExplorerKey -Name ShowSuperHidden -Value 1
Set-ItemProperty -Path $winExplorerKey -Name HideFileExt -Value 0
