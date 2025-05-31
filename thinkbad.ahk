#Requires AutoHotkey v2.0
#SingleInstance force
#WinActivateForce
SendMode("Input")

;@Ahk2Exe-SetName thinkbad
;@Ahk2Exe-SetVersion 1.0.0
;@Ahk2Exe-SetMainIcon thinkbad.ico
;@Ahk2Exe-IgnoreBegin
TraySetIcon("thinkbad.ico")
;@Ahk2Exe-IgnoreEnd

A_IconTip := "thinkbad"
A_TrayMenu.Delete()
A_TrayMenu.Add("thinkbad 1.0.0", (*) => { })
A_TrayMenu.Disable("thinkbad 1.0.0")
A_TrayMenu.Add()
A_TrayMenu.Add("&Help", (*) => Run("https://www.github.com/ins0mniaque/thinkbad"))
A_TrayMenu.Add("E&xit", (*) => ExitApp())

SetNumLockState("AlwaysOff")

PrintScreen::RAlt

; Remap Numpad to closest key
NumpadSub::BackSpace
NumLock::BackSpace
NumpadHome::<
NumpadLeft::Enter
NumpadEnd::RShift
NumpadIns::Right

; RCtrl::RAlt for Canadian French keyboard layout brackets, braces and tilde
^^::[
^¸::]
^`::Send "{{}"
^<::}
^NumpadHome::}
^;::~