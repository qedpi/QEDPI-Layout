#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



;RShift::CapsLock
;CapsLock::NumLock

; ctrl alt: ^>!, ^!, RAlt for right alt
; RAlt::MsgBox You pressed AltGr+m.

;RAlt::MsgBox Right
;Ctrl + Alt::MsgBox LR
;RAlt -> >!


>!a:: Send, {Left} 
    return
>!i:: Send, {Right} 
    return
>!.:: Send, {Up} 
    return 
>!e:: Send, {Down} 
    return
>!o:: Send, {Home} 
    return
>!u:: Send, {End} 
    return
>!,:: Send, ^{Left} 
    return
>!p:: Send, ^{Right} 
    return
;>!Space:: Send, {Return} 
    return
>!k:: Send, {End}{Return}
   

    
; braces
>!h:: Send, (
    return
>!t:: Send, [
    return
>!n:: Send, {{}
    return
    
RShift::
  SetCapsLockState, on
  Input key, V L1 T1, {F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12} {Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{PrintScreen}{Pause}{AppsKey}
  SetCapsLockState, off
  return

;<+e:: send, Bat
    
;return
    
;right shifts
;>+e::ε

;none free, gGlLmM reqs disabling
;windows keys
<#a::α
return
<#A::∀ ;for all
return
<#b::β
return
<#B::∵
return
<#c::⊂ ;subset
return
<#C::⊄ ;not subset
return
<#d::δ
return
<#D::Δ
return
<#e::ε
return
<#E::∃ ;exists
return
<#f::λ
return
<#F::∫
return
<#h::²
return
<#H::³
return
<#i::ᵢ
return
<#j::ⱼ
return
<#k::ₖ ;subscript k
return
<#K::ℂ ;Complex numbers
<#I::∈ ;element of
return
<#J::∉ ;not element of
return
<#u::∪
return
<#U::⨆ ;Disjoint Union
return
<#n::∩
return
;<#m::μ
;return
<#m::≠
return
<#M::≡
return
<#N::∅ ;empty set
return
;<#o::⋅ ;dot
<#o::∞
return
<#O::Ω
return
<#p::π
return
<#P::Π
return
<#q::∎ ;QED
return
<#Q::ℚ ;rational numbers
return
<#r::√
return
<#R::ℝ ;Real Numbers
return
<#s::∋ ;such that
return
<#S::Σ
return
<#t::θ
return
<#T::∴
return
<#v::∧
return
<#V::∨
return
<#x::ˣ
return
<#X::⊥
return
<#y::∠
return
<#Y::ℤ
return
<#z::ℕ
return
<#Z::ℤ
return
<#-::⇒
return
<#_::⇔
return
<#,::≤
return
<#.::≥
return
<#;::∠
return
<#'::∂ ;partial derivative
return
<#"::∇ ;gradiant, divergence
return
<#/::⌊ ;floor open
return
<#?::⌈ ;ceil open
return
<#\::⌋ ;floor close
return
<#|::⌉ ;ceil close
return

;contractions
::tho::though
::thru::through

;Lshift & Rshift:: send {x}
;CapsLock:: send {Return}

ß::NumLock
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

;left alt key modifiers

<!a::Send, {{}
<!q::Send, {}}
<!e::Send, {[}
<!j::Send, {]}
<!i::Send, {(}
<!k::Send, {)}
<!x::Send, {_}

<!h::Send, {=}
<!t::Send, {*}
<!n::Send, {-}
<!c::Send, {/}
<!r::Send, {+}


<!s::Send, {!}

;--- double char equal combos
:*?:ss,h::{Space}{>}{>}={Space}   ;also Haskell monadic bind
:*?:sn,h::{Space}{>}{>}={Space}    ; alt
:*?:dd,h::{Space}{<}{<}={Space}   
:*?:hd,h::{Space}{<}{<}={Space}    ; alt
:*?:tt,h::{Space}{*}{*}={Space}   ;Py
:*?:nt,h::{Space}{*}{*}={Space}    ; alt

;equals combinations
:*?:hh,h::{Space}{=}{=}={Space}   ;JS
:*?:ht,h::{Space}{=}{=}={Space}   ; alt
:*?:bh,h::{Space}{!}{=}={Space}   ;JS
:*?:h,b::{Space}{!}{=}={Space}    ; alt
:*?:c,h::{Space}{+}={Space}
:*?:n,h::{Space}{-}={Space}
:*?:t,h::{Space}{*}={Space}
:*?:r,h::{Space}{/}={Space}
:*?:b,h::{Space}{!}={Space}
:*?:s,h::{Space}{>}={Space}
:*?:d,h::{Space}{<}={Space}
:*?:h,h::{Space}{=}={Space}
:*?:h,t::{Space}{=}={Space}       ; alt

;--- doubled chars
:*?:s,s::{Space}{>}{>}{Space}       ;bit shift right
:*?:s,n::{Space}{>}{>}{Space}       ; alt
:*?:d,d::{Space}{<}{<}{Space}       ;bit shift left
:*?:h,d::{Space}{<}{<}{Space}       ; alt
:*?:t,t::{Space}{*}{*}{Space}       ;Py, ES2016
:*?:n,t::{Space}{*}{*}{Space}       ; alt
:*?:c,c::{Space}{+}{+}              ;C-type increment
:*?:h,c::{Space}{+}{+}              ; alt
:*?:n,n::{Space}{-}{-}              ;C-type decrement
:*?:h,n::{Space}{-}{-}              ; alt
:*?:r,r::{Space}{/}{/}{Space}       ;C-type comment, Py int divison
:*?:r,c::{Space}{/}{/}{Space}       ; alt

;--- double char combos
:*?:r,t::{/}{*}{Space}              ;C-type
:*?:t,r::{Space}{*}{/}              ; alt
:*?:p,s::{Space}{<}{>}{Space}       ;Haskell
:*?:d,n::{Space}{<}{-}{Space}       ;Haskell
:*?:n,s::{Space}{-}{>}{Space}       ;Haskell
:*?:r,s::{Space}{/}{>}              ;HTML
:*?:h,s::{Space}{=}{>}{Space}       ;JS

;--- triple char combos
:*?:dt,s::{Space}{<}{*}{>}{Space}   ;Haskell

;--- single chars
:*?:,c::{Space}{+}{Space}
:*?:,n::{Space}{-}{Space}
:*?:,t::{Space}{*}{Space}
:*?:,r::{Space}{/}{Space}
:*?:,b::{Space}{!}{Space}
:*?:,s::{Space}{>}{Space}
:*?:,d::{Space}{<}{Space}
:*?:,h::{Space}{=}{Space} 
:*?:,m::{Space}{#}{Space} 
:*?:,m::{Space}{&}{Space} 
:*?:,m::{Space}{|}{Space} 
:*?:,m::{Space}{^}{Space} 


;--- candidates
; :*?:;::{;}{Return}


;left hand combos
:*?:,u::{)}        ;* allows alpha suffix
:*?:,k::{]}        ;? allows alpha prefix
:*?:,x::{}}
:*?:,i::{(}         ;Ides usually autocomplete brackets
:*?:,p::{[}         
:*?:,e::{{}
:*?:o,.::{_}{_}     ;Py, 'dunder'
:*?:,.::{_}
:*?:,g::{\}
:*?:,f::{@}
:*?:,o::{%}
:*?:,;::{$}
:*?:,y::{~}


::abcd:: Send, {;}{Return}
    Return    

  
Appskey:: Send, {Right}
    Return
Appskey & k::Send, Yay
    Return
    
CapsLock::
	KeyWait, CapsLock
	If (A_PriorKey="CapsLock")
		SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
Return
#If, GetKeyState("CapsLock", "P") ;Your CapsLock hotkeys go below

n:: Send, {;}{Return}
t:: Send, {Return}
h:: Send, {BackSpace}
