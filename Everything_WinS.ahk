#s::
Run, "D:\Everything\Everything.exe" -newwindow
return

; Brightness down (F9)
F9::
    Run powershell -NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup\brightness.ps1" down,, Hide
return

; Brightness up (F10)
F10::
    Run powershell -NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup\brightness.ps1" up,, Hide
return

; Mute (F8)
F8::Send {Volume_Mute}

; Volume down (F11)
F11::Send {Volume_Down}

; Volume up (F12)
F12::Send {Volume_Up}
