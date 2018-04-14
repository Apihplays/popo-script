#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;MsgBox, x64Slayer in da hausssss
Clones = 1
Meeps = 2
SysGet, VirtualWidth, 78
SysGet, VirtualHeight, 79
Numpad1::
	Clones = 1
	Meeps = 2
	MsgBox, "1 Clone Setting"
Return


Numpad2::
	Clones = 2
	Meeps = 3
	MsgBox, "2 Clone Setting"
Return


Numpad3::
	Clones = 3
	Meeps = 4
	MsgBox, "3 Clone Setting"
Return

Numpad4::
	Clones = 4
	Meeps = 5
	MsgBox, "4 Clone Setting"
Return

4::
	Send {XButton2}
	Loop, %Clones%
	{
		Send {Tab} 
		Send w	
	}
	Send {Tab}
	Send x
	Send {Click}
Return

#p::
Suspend, Permit
Suspend, Toggle
MsgBox, "Script Toggled"
Return
