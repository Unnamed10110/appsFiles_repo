#Requires AutoHotkey v2.0

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
    Run("C:\Users\troja\AppData\Local\Microsoft\WindowsApps\chatgpt.exe")
}



^Numpad3::  ; Ctrl + Numpad 3 hotkey
{
    Run('pwsh -NoProfile -Command "taskkill /f /im explorer.exe && start explorer.exe"')

}




#Requires AutoHotkey v2.0

^Numpad4:: {
    try {
        Run("C:\Program Files\Warp\warp.exe") ; Adjust the path if necessary
        Run("wt.exe") ; Windows Terminal
    } catch Error as e {
        MsgBox "Error launching applications: " e.Message
    }
}






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




^Numpad7::  ; Ctrl + Numpad 7
{
    ; Check if the Everything program is running
    if WinExist("ahk_exe Text-Grab.exe")  ; Checks if Everything is open
    {
        WinClose  ; Close the Everything window
    }
    else
    {
        Run("D:\GDrive\My Drive\D_drive\must_programs_BU\Text-Grab.exe")
    }
}





^Numpad8::  ; Ctrl + Numpad 8
{
    ; Check if the Everything program is running
    if WinExist("ahk_exe obs64.exe")  ; Checks if Everything is open
    {
        WinClose  ; Close the Everything window
    }
    else
    {
        Run("D:\utils\appsFiles\obs64.lnk")
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

;yt-dlp -f bestaudio --extract-audio --audio-format mp3 --playlist-end 26 --no-check-certificate --geo-bypass http://youtube.com/playlist?list=PLtZeGoU2MroPTDYooH5Tp7fo9yJ3PY3ob
;yt-dlp -f bestaudio --extract-audio --audio-format mp3 --playlist-end 26 --no-check-certificate --geo-bypass http://youtube.com/playlist?list=PLtZeGoU2MroPTDYooH5Tp7fo9yJ3PY3ob
;yt-dlp -f bestaudio --extract-audio --audio-format mp3 --no-check-certificate --geo-bypass --download-archive downloaded.txt http://youtube.com/playlist?list=PLtZeGoU2MroPTDYooH5Tp7fo9yJ3PY3ob

