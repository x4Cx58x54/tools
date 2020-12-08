CapsLock:: return

CapsLock & 1:: return
CapsLock & 2:: return
CapsLock & 3:: return
CapsLock & 4:: return
CapsLock & 5:: return
CapsLock & 6:: return
CapsLock & 7:: return
CapsLock & 8:: return
CapsLock & 9:: return
CapsLock & 0:: return
CapsLock & a:: return
CapsLock & b:: return
CapsLock & c:: return
CapsLock & d:: return
CapsLock & e:: return
CapsLock & f:: return
CapsLock & g:: return
;CapsLock & h:: return
CapsLock & i:: return
;CapsLock & j:: return
;CapsLock & k:: return
;CapsLock & l:: return
CapsLock & m:: return
CapsLock & n:: return
CapsLock & o:: return
CapsLock & p:: return
CapsLock & q:: return
CapsLock & r:: return
CapsLock & s:: return
CapsLock & t:: return
CapsLock & u:: return
CapsLock & v:: return
CapsLock & w:: return
CapsLock & x:: return
CapsLock & y:: return
CapsLock & z:: return
CapsLock & Enter:: return

CapsLock & h::
if GetKeyState("control") = 0
{
    if GetKeyState("alt") = 0
        Send, {Left}
    else
        Send, +{Left}
    return
}
else {
    if GetKeyState("alt") = 0
        Send, ^{Left}
    else
        Send, +^{Left}
    return
}
return

CapsLock & j::
if GetKeyState("control") = 0
{
    if GetKeyState("alt") = 0
        Send, {Down}
    else
        Send, +{Down}
    return
}
else {
    if GetKeyState("alt") = 0
        Send, ^{Down}
    else
        Send, +^{Down}
    return
}
return

CapsLock & k::
if GetKeyState("control") = 0
{
    if GetKeyState("alt") = 0
        Send, {Up}
    else
        Send, +{Up}
    return
}
else {
    if GetKeyState("alt") = 0
        Send, ^{Up}
    else
        Send, +^{Up}
    return
}
return

CapsLock & l::
if GetKeyState("control") = 0
{
    if GetKeyState("alt") = 0
        Send, {Right}
    else
        Send, +{Right}
    return
}
else {
    if GetKeyState("alt") = 0
        Send, ^{Right}
    else
        Send, +^{Right}
    return
}
return

CapsLock & space::
if GetKeyState("control") = 0
{
    if GetKeyState("alt") = 0
        Send, #{Space}
    else
        Send, +{Space}
    return
}
else {
    if GetKeyState("alt") = 0
        Send, ^{Space}
    else
        Send, +^{Space}
    return
}
return



ScrollLock:: Browser_Back
Pause:: Browser_Forward
