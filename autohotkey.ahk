Envget,vUSERPROFILE, USERPROFILE

;Use numberpad to move windows
#Include %A_ScriptDir%\..\Utils\Autohotkey\WindowPad.ahk

;Autocorrect spelling in all applications
#Include %A_ScriptDir%\..\Utils\Autohotkey\AutoCorrect.ahk

;Autohotkey setting
SetTitleMatchMode, 2 	;Set to Match Partial Title
DetectHiddenWindows, on

;Autohotkey keys
; # WIN
; ! Alt
; ^ CTRL
; For more see - http://www.autohotkey.com/docs/Hotkeys.htm


#v::                            ; Text–only paste from ClipBoard
   Clip0 = %ClipBoardAll%
   ClipBoard = %ClipBoard%       ; Convert to text
   Send ^v                       ; For best compatibility: SendPlay
   Sleep 50                      ; Don't change clipboard while it is pasted! (Sleep > 0)
   ClipBoard = %Clip0%           ; Restore original ClipBoard
   VarSetCapacity(Clip0, 0)      ; Free memory
Return


;General shortcuts
#z::Run, Explorer /e', %UserProfile%
#s::RunOrActivateOrMinimizeProgram("C:\Program Files\sqldeveloper64\sqldeveloper\sqldeveloper.exe")
#u::Run, %A_ScriptDir%\..\Utils\
#g::RunOrActivateOrMinimizeProgram("C:\Program Files (x86)\vim\vim74\gvim.exe", "C:\!Projects", "max")
#q::ToggleWinHide("Jabber")
#w::ToggleWinMinimize("Conversations")
PrintScreen::Run, SnippingTool.exe


ToggleWinHide(TheWindowTitle)
{
    SetTitleMatchMode,2
        DetectHiddenWindows, Off
        IfWinActive, %TheWindowTitle%
        {
            WinHide, %TheWindowTitle%
        }
    Else
    {
        IfWinExist, %TheWindowTitle%
        {
            WinGet, winid, ID, %TheWindowTitle%
                DllCall("SwitchToThisWindow", "UInt", winid, "UInt", 1)
        }
        Else
        {
            WinShow, %TheWindowTitle%
                WinGet, winid, ID, %TheWindowTitle%
                DllCall("SwitchToThisWindow", "UInt", winid, "UInt", 1)
        }
    }
    Return
}

; Launch or toggle program, http://lifehacker.com/5468862/create-a-shortcut-key-for-restoring-a-specific-window
ToggleWinMinimize(WindowTitle)
{
    SetTitleMatchMode,2
        DetectHiddenWindows, Off
        IfWinActive, %WindowTitle%
        WinMinimize, %WindowTitle%
        Else
        IfWinExist, %WindowTitle%
        {
            WinActivate
        }
    Return
}

RunOrActivateOrMinimizeProgram(Program, WorkingDir="", WindowSize="")
{
    SplitPath Program, ExeFile
        Process, Exist, %ExeFile%
        PID = %ErrorLevel%
        if (PID = 0)
        {
            Run, %Program%, %WorkingDir%, %WindowSize%
        }
        else
        {
            SetTitleMatchMode,2
                DetectHiddenWindows, Off
                IfWinActive, ahk_pid %PID%
                WinMinimize, ahk_pid %PID%
                Else
                IfWinExist, ahk_pid %PID%
                WinActivate, ahk_pid %PID%
                Return
        }
}
