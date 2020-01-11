#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Clones = 1
Meeps = 2

Numpad1::
	Clones = 1
	Meeps = 2
Return

Numpad2::
	Clones = 2
	Meeps = 3
Return


Numpad3::
	Clones = 3
	Meeps = 4
Return

Numpad4::
	Clones = 4
	Meeps = 5
Return

e::
	Send {XButton1} ;XButton2=mouse browser forward
	Loop, %Clones%
	{
		Send w 
		sleep, 10
		Send {Tab}
	}
	Send {XButton2}
Return

#p::
Suspend, Permit
Suspend, Toggle
Return
