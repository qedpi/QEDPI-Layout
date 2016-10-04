; ﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

ß::LCtrl
;LShift::NumLock

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
>!k:: Send, {End}{Return}
   return
>!j:: Send, {BackSpace}


>!h:: Send, ^g                      ;copy
>!n:: Send, ^w                      ;cut
>!t:: Send, ^'                      ;paste
>!s:: Send, ^v                      ;undo
>!c:: Send, ^{Left}+^{Right}        ;selects current word
>!r:: Send, {Click 3}               ;selects current line
;>!r:: Send, {HOME}+{END}^c{END} 

^!s::
  str := clipboard, out := ""
  loop % strlen(str)
    out .= SubStr(str, A_Index, 1) Chr(0x336)
  SendInput %out%
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


;--- single chars
:*?:,c::{Space}{+}{Space}     
:*?:,n::{Space}{-}{Space}
:*?:,t::{Space}{*}{Space}
:*?:,r::{Space}{/}{Space}
:*?:,b::{Space}{!}
:*?:,s::{Space}{>}{Space}
:*?:,d::{Space}{<}{Space}
:*?:,h::{Space}{=}{Space} 
:*?:,m::{Space}{#}{Space} 
:*?:,w::{Space}{&}{Space} 
:*?:,v::{Space}{|}{Space}
:*?:,l::{Space}{^}{Space} 

;--- left hand 
:*?:,u::{)}        ;* allows alpha suffix
:*?:,y::{]}        ;? allows alpha prefix
:*?:,x::{}}
:*?:,i::{(}         ;Ides usually autocomplete brackets
:*?:,p::{[}         
:*?:,e::{{}
:*?:,.::{_}
:*?:,g::{\}
:*?:,f::{@}
:*?:,o::{%}
:*?:,k::{~}
:*?:,;::{$}    
:*?:,,::{_}{_}     ;Py, 'dunder'


;--- left alt combos
<!r::Send, enumerate(
    return
<!s::Send, zip(
    return
<!n::Send, len( 
    return
<!l::Send, lambda :{Left}
    return
<!t::Send, print(
    return
<!h::Send, forin{Left}{Left}{Space}
    return
    
#If, GetKeyState("Space", "P") ;Your CapsLock hotkeys go below

;equals combinations
:*:st::{=}{=}={Space}    ; JS
:*:hb::{!}{=}={Space}    ; JS
:*:hh::{=}={Space}    
:*:nt::{=}={Space}       ; alt   --------
:*:ch::{+}={Space}
:*:nh::{-}={Space}
:*:th::{*}={Space}
:*:rh::{/}={Space} 
:*:bh::{!}={Space}
:*:sh::{>}={Space}
:*:dh::{<}={Space}


;--- doubled chars
:*:ss::{>}{>}{Space}       ;bit shift right
:*:dd::{<}{<}{Space}       ;bit shift left
:*:tt::{*}{*}{Space}       ;Py, ES2016
:*:cc::{+}{+}              ;C-type increment
:*:nn::{-}{-}              ;C-type decrement
:*:rr::{/}{/}{Space}       ;C-type comment, Py int divison
:*:bb::{!}{!}{Space}       ;Haskell index access


;--- double char combos
:*:rt::{/}{*}{Space}       ;C-type comment
:*:tr::{*}{/}              ;
:*:ds::{<}{>}{Space}       ;Haskell
:*:dn::{<}{-}{Space}       ;Haskell
:*:ns::{-}{>}{Space}       ;Haskell
:*:rs::{/}{>}              ;HTML
:*:hs::{=}{>}{Space}       ;JS


;--- triple char combos
:*:dts::{<}{*}{>}{Space}   ;Haskell
   


CapsLock::
	KeyWait, CapsLock
	If (A_PriorKey="CapsLock")
		SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
Return
#If, GetKeyState("CapsLock", "P") ;Your CapsLock hotkeys go below
h::0
i::1
t::2
e::3
n::4
a::5
s::6
o::7
d::8
u::9

