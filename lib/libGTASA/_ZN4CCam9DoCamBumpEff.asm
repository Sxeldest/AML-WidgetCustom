; =========================================================
; Game Engine Function: _ZN4CCam9DoCamBumpEff
; Address            : 0x3E19D0 - 0x3E19DE
; =========================================================

3E19D0:  LDR             R3, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3E19D8)
3E19D2:  ADDS            R0, #0xF0
3E19D4:  ADD             R3, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3E19D6:  LDR             R3, [R3]; CTimer::m_snTimeInMilliseconds ...
3E19D8:  LDR             R3, [R3]; CTimer::m_snTimeInMilliseconds
3E19DA:  STM             R0!, {R1-R3}
3E19DC:  BX              LR
