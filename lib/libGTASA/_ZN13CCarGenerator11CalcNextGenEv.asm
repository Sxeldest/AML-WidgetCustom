; =========================================================
; Game Engine Function: _ZN13CCarGenerator11CalcNextGenEv
; Address            : 0x56D518 - 0x56D524
; =========================================================

56D518:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x56D51E)
56D51A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
56D51C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
56D51E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
56D520:  ADDS            R0, #4
56D522:  BX              LR
