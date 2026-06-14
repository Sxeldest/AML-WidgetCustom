; =========================================================
; Game Engine Function: _ZN4CPed12SetLookTimerEj
; Address            : 0x4A70C4 - 0x4A70DC
; =========================================================

4A70C4:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4A70CE)
4A70C6:  LDR.W           R3, [R0,#0x750]
4A70CA:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4A70CC:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
4A70CE:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
4A70D0:  CMP             R2, R3
4A70D2:  ITT HI
4A70D4:  ADDHI           R1, R2
4A70D6:  STRHI.W         R1, [R0,#0x750]
4A70DA:  BX              LR
