; =========================================================
; Game Engine Function: _ZN13CCarGenerator8SwitchOnEv
; Address            : 0x56D500 - 0x56D514
; =========================================================

56D500:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x56D50C)
56D502:  MOVW            R2, #0xFFFF
56D506:  STRH            R2, [R0,#0x1A]
56D508:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
56D50A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
56D50C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
56D50E:  ADDS            R1, #4
56D510:  STR             R1, [R0,#0x14]
56D512:  BX              LR
