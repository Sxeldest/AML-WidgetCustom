; =========================================================
; Game Engine Function: _ZN6CCarAI18CarHasReasonToStopEP8CVehicle
; Address            : 0x2E6588 - 0x2E6596
; =========================================================

2E6588:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E658E)
2E658A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E658C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
2E658E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
2E6590:  STR.W           R1, [R0,#0x3B0]
2E6594:  BX              LR
