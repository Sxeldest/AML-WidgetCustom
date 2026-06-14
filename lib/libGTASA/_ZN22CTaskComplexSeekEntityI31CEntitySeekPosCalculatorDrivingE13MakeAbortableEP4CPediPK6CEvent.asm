; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI31CEntitySeekPosCalculatorDrivingE13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x49C594 - 0x49C5DC
; =========================================================

49C594:  PUSH            {R4,R5,R7,LR}
49C596:  ADD             R7, SP, #8
49C598:  MOV             R5, R0
49C59A:  CBNZ            R2, loc_49C5B8
49C59C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49C5AA)
49C59E:  MOV.W           R12, #0xFFFFFFFF
49C5A2:  STR.W           R12, [R5,#0x10]
49C5A6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49C5A8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49C5AA:  LDR.W           LR, [R0]; CTimer::m_snTimeInMilliseconds
49C5AE:  MOVS            R0, #1
49C5B0:  STRB.W          R0, [R5,#0x3C]
49C5B4:  STRD.W          LR, R12, [R5,#0x34]
49C5B8:  LDR             R0, [R5,#8]
49C5BA:  LDR             R4, [R0]
49C5BC:  LDR             R4, [R4,#0x1C]
49C5BE:  BLX             R4
49C5C0:  CMP             R0, #1
49C5C2:  IT NE
49C5C4:  POPNE           {R4,R5,R7,PC}
49C5C6:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49C5CE)
49C5C8:  MOVS            R2, #1
49C5CA:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49C5CC:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
49C5CE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
49C5D0:  STRB.W          R2, [R5,#0x30]
49C5D4:  MOVS            R2, #0
49C5D6:  STRD.W          R1, R2, [R5,#0x28]
49C5DA:  POP             {R4,R5,R7,PC}
