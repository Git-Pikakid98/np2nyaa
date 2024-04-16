#Requires AutoHotkey v2.0
#NoTrayIcon

;@Ahk2Exe-Set CompanyName, Pikakid98
;@Ahk2Exe-Set FileVersion, 1.0
;@Ahk2Exe-Set ProductVersion, 1.0.0.0

if A_Args.Length < 2
{
    MsgBox "Error! Run With the path to Neko Project II and a valid .hdi file"
    ExitApp
}

FileInstall "default.npcfg", A_Temp "\default.npcfg", 1

np2 := A_Args[1]
Loop Files, A_Args[2], "F"

for n, param in A_Args  ; For each parameter:
{
    IniWrite(A_LoopFilePath, A_Temp "\default.npcfg", "NekoProjectII", "CDfolder")
    IniWrite(A_Temp "\default.npcfg", A_Temp "\default.npcfg", "NekoProjectII", "npcfgDir")
    IniWrite(A_LoopFilePath, A_Temp "\default.npcfg", "NekoProjectII", "HDD1FILE")

	IniWrite(A_LoopFilePath, A_Temp "\default.npcfg", "NekoProject21", "HDfolder")
    IniWrite(A_Temp "\default.npcfg", A_Temp "\default.npcfg", "NekoProject21", "npcfgDir")
    IniWrite(A_LoopFilePath, A_Temp "\default.npcfg", "NekoProject21", "HDD1FILE")
}

RunWait np2 " " A_Temp "\default.npcfg"
FileDelete A_Temp "\default.npcfg"