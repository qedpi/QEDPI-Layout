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
    
    
