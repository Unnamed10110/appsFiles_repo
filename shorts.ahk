﻿#Requires AutoHotkey v2.0

^Numpad1::  ; Ctrl + Numpad 1
{
    ; Check if the Everything program is running
    if WinExist("ahk_exe Everything64.exe")  ; Checks if Everything is open
    {
        WinClose  ; Close the Everything window
    }
    else
    {
        Run("C:\Program Files\Everything 1.5a\Everything64.exe")  ; Adjust path if necessary
    }
}



^Numpad2::{ ; Ctrl + numpad 2
    Run("C:\Users\unnamed10110\AppData\Local\Microsoft\WindowsApps\chatgpt.exe")
}



^Numpad3::  ; Ctrl + Numpad 3 hotkey
{
    Run('pwsh -NoProfile -Command "taskkill /f /im explorer.exe && start explorer.exe"')

}



;^Numpad4:: {
;    try {
;        ; Check if Warp is already running
;        if !ProcessExist("warp.exe") {
;            Run("C:\Program Files\Warp\warp.exe") ; Adjust the path if necessary
;        }
;
;        ; Check if Windows Terminal is already running
;        if !ProcessExist("WindowsTerminal.exe") {
;            Run("wt.exe") ; Windows Terminal
;        }
;    } catch Error as e {
;        MsgBox "Error launching applications: " e.Message
;    }
;}





;~LWin::
;~RWin::
;{
;    ; Wait for the Windows key to be released
;    KeyWait("LWin")
;    KeyWait("RWin")
;
;    ; Send Win+1 to activate the 1st taskbar icon
;    Send("#1")
;    return
;}


^Numpad6::  ; Ctrl + Numpad6 hotkey
{
    terminalExe := "WindowsTerminal.exe"

    ; Try to find an existing Windows Terminal window
    if WinExist("ahk_exe " terminalExe)
    {
        ; Activate and send Ctrl+Shift+T to open a new tab
        WinActivate
        Sleep 100  ; Small delay to ensure it's focused
        Send("^+t")  ; Ctrl+Shift+T
    }
    else
    {
        ; Launch Windows Terminal
        Run("wt.exe")
    }
}



^Numpad7::  ; Ctrl + Numpad 7
{
    ; Check if the Everything program is running
    if WinExist("ahk_exe Text-Grab.exe")  ; Checks if Everything is open
    {
        WinClose  ; Close the Everything window
    }
    else
    {
        Run("D:\utils\appsFiles\Text-Grab.exe")
    }
}


^Numpad8::  ; Ctrl + Numpad8 hotkey
{
    terminalExe := "WindowsTerminal.exe"

    ; Check if Windows Terminal is already open
    if WinExist("ahk_exe " terminalExe)
    {
        ; Just focus the existing window
        WinActivate
    }
    else
    {
        ; Launch Windows Terminal
        Run("wt.exe")
    }
}




; AutoHotkey v2 Script
; Open Microsoft Edge in Incognito Mode with Ctrl + Numpad 9

^Numpad9::  ; Ctrl + Numpad 9 hotkey
{
    ; Run Microsoft Edge in Incognito Mode
    Run "msedge.exe --inprivate"
    return
}

^F12:: {
    obsExe := "C:\Program Files\obs-studio\bin\64bit\obs64.exe"
    obsDir := "C:\Program Files\obs-studio\bin\64bit"
    winTitle := "ahk_exe obs64.exe"

    if !WinExist(winTitle) {
        Run obsExe, obsDir
        WinWait(winTitle)
    }

    WinActivate(winTitle)
    WinSetAlwaysOnTop true, winTitle
    WinSetAlwaysOnTop false, winTitle
}
