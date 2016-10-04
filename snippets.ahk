;RShift::CapsLock
;CapsLock::NumLock  

; ctrl alt: ^>!, ^!, RAlt for right alt
; RAlt::MsgBox You pressed AltGr+m.

;RAlt::MsgBox Right
;Ctrl + Alt::MsgBox LR
;RAlt -> >!

CapsLock::
	KeyWait, CapsLock
	If (A_PriorKey="CapsLock")
		SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
Return
#If, GetKeyState("CapsLock", "P") ;Your CapsLock hotkeys go below

n:: Send, {;}{Return}
t:: Send, {Return}
h:: Send, {BackSpace}

::abcd:: Send, {;}{Return}
    Return    

  
Appskey:: Send, {Right}
    Return
Appskey & k::Send, Yay
    Return
    
    ; braces
>!h:: Send, (
    return
>!t:: Send, [
    return
>!n:: Send, {{}
    return
    
;Lshift & Rshift:: send {x}
;CapsLock:: send {Return}

;ß::NumLock
;ß::LAlt
;LAlt::CapsLock
;CapsLock::NumLock

;#If GetKeyState("NumLock","T")
;    )::1
;    return
 
;CapsLock::
;	KeyWait, CapsLock
;	If (A_PriorKey="CapsLock")
;		SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
;Return
;#If, GetKeyState("CapsLock", "P") ;Your CapsLock hotkeys go below
    
NumLock::
	KeyWait, NumLock
	If (A_PriorKey="NumLock")
		SetNumLockState, % GetKeyState("NumLock","T") ? "Off" : "On"
Return

#If, GetKeyState("NumLock", "P") ;Your NumLock hotkeys go below