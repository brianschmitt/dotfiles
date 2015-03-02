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

Function global:ADD-PATH() {
    [Cmdletbinding()]
    param
    ( 
    [parameter(Mandatory=$True,
    ValueFromPipeline=$True,
    Position=0)]
    [String[]]$AddedFolder
    )

    # Get the current search path from the environment keys in the registry.
    $OldPath=(Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH).Path

    # See if a new folder has been supplied.
    IF (!$AddedFolder)
        { Return ‘No Folder Supplied. $ENV:PATH Unchanged’}

    # See if the new folder exists on the file system.
    IF (!(TEST-PATH $AddedFolder))
        { Return ‘Folder Does not Exist, Cannot be added to $ENV:PATH’ }

    # See if the new Folder is already in the path.
    IF ($ENV:PATH | Select-String -SimpleMatch $AddedFolder)
        { Return ‘Folder already within $ENV:PATH' }

    # Set the New Path
    $NewPath=$OldPath+’;’+$AddedFolder
    Set-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH –Value $newPath

    # Show our results back to the world
    Return $NewPath
}


ADD-PATH "C:\Program Files (x86)\Git\bin"