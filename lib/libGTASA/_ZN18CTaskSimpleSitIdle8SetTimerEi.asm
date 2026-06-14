; =========================================================
; Game Engine Function: _ZN18CTaskSimpleSitIdle8SetTimerEi
; Address            : 0x4EC114 - 0x4EC128
; =========================================================

4EC114:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EC11E)
4EC116:  MOVS            R3, #1
4EC118:  STR             R1, [R0,#0xC]
4EC11A:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EC11C:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
4EC11E:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
4EC120:  STRB            R3, [R0,#0x1C]
4EC122:  STRD.W          R2, R1, [R0,#0x14]
4EC126:  BX              LR
