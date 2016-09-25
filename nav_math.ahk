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

q::qu


#If GetKeyState("NumLock","T")
    )::1
    return
    
    