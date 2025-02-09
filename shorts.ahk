#Requires AutoHotkey v2.0

^Numpad1::  ; Ctrl + Numpad 1
{
    ; Check if the Everything program is running
    if WinExist("ahk_exe Everything.exe")  ; Checks if Everything is open
    {
        WinClose  ; Close the Everything window
    }
    else
    {
        Run("C:\Program Files\Everything\Everything.exe")  ; Adjust path if necessary
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




^Numpad3::  ; Ctrl + Numpad 3 hotkey
{
    Run('pwsh -NoProfile -Command "taskkill /f /im explorer.exe && start explorer.exe"')
}

