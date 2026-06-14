; =========================================================
; Game Engine Function: _ZN23CPedAcquaintanceScanner8SetTimerEi
; Address            : 0x4BCE28 - 0x4BCE3A
; =========================================================

4BCE28:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BCE2E)
4BCE2A:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BCE2C:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
4BCE2E:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
4BCE30:  STRD.W          R2, R1, [R0]
4BCE34:  MOVS            R1, #1
4BCE36:  STRB            R1, [R0,#8]
4BCE38:  BX              LR
