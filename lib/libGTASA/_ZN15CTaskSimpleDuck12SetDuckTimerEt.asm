; =========================================================
; Game Engine Function: _ZN15CTaskSimpleDuck12SetDuckTimerEt
; Address            : 0x5436A4 - 0x5436BC
; =========================================================

5436A4:  LDRB.W          R2, [R0,#0x24]
5436A8:  CMP             R2, #4
5436AA:  IT EQ
5436AC:  BXEQ            LR
5436AE:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5436B4)
5436B0:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5436B2:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
5436B4:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
5436B6:  STRH            R1, [R0,#0xC]
5436B8:  STR             R2, [R0,#8]
5436BA:  BX              LR
