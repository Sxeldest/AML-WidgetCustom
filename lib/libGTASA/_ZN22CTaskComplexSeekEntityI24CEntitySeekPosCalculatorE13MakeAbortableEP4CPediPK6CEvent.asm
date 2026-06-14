; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI24CEntitySeekPosCalculatorE13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4984CC - 0x498514
; =========================================================

4984CC:  PUSH            {R4,R5,R7,LR}
4984CE:  ADD             R7, SP, #8
4984D0:  MOV             R5, R0
4984D2:  CBNZ            R2, loc_4984F0
4984D4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4984E2)
4984D6:  MOV.W           R12, #0xFFFFFFFF
4984DA:  STR.W           R12, [R5,#0x10]
4984DE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4984E0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4984E2:  LDR.W           LR, [R0]; CTimer::m_snTimeInMilliseconds
4984E6:  MOVS            R0, #1
4984E8:  STRB.W          R0, [R5,#0x3C]
4984EC:  STRD.W          LR, R12, [R5,#0x34]
4984F0:  LDR             R0, [R5,#8]
4984F2:  LDR             R4, [R0]
4984F4:  LDR             R4, [R4,#0x1C]
4984F6:  BLX             R4
4984F8:  CMP             R0, #1
4984FA:  IT NE
4984FC:  POPNE           {R4,R5,R7,PC}
4984FE:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x498506)
498500:  MOVS            R2, #1
498502:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
498504:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
498506:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
498508:  STRB.W          R2, [R5,#0x30]
49850C:  MOVS            R2, #0
49850E:  STRD.W          R1, R2, [R5,#0x28]
498512:  POP             {R4,R5,R7,PC}
