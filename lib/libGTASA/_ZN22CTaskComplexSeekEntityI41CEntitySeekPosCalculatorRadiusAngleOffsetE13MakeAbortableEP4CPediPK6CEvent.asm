; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI41CEntitySeekPosCalculatorRadiusAngleOffsetE13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x35D6CC - 0x35D714
; =========================================================

35D6CC:  PUSH            {R4,R5,R7,LR}
35D6CE:  ADD             R7, SP, #8
35D6D0:  MOV             R5, R0
35D6D2:  CBNZ            R2, loc_35D6F0
35D6D4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35D6E2)
35D6D6:  MOV.W           R12, #0xFFFFFFFF
35D6DA:  STR.W           R12, [R5,#0x10]
35D6DE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35D6E0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
35D6E2:  LDR.W           LR, [R0]; CTimer::m_snTimeInMilliseconds
35D6E6:  MOVS            R0, #1
35D6E8:  STRB.W          R0, [R5,#0x3C]
35D6EC:  STRD.W          LR, R12, [R5,#0x34]
35D6F0:  LDR             R0, [R5,#8]
35D6F2:  LDR             R4, [R0]
35D6F4:  LDR             R4, [R4,#0x1C]
35D6F6:  BLX             R4
35D6F8:  CMP             R0, #1
35D6FA:  IT NE
35D6FC:  POPNE           {R4,R5,R7,PC}
35D6FE:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35D706)
35D700:  MOVS            R2, #1
35D702:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35D704:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
35D706:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
35D708:  STRB.W          R2, [R5,#0x30]
35D70C:  MOVS            R2, #0
35D70E:  STRD.W          R1, R2, [R5,#0x28]
35D712:  POP             {R4,R5,R7,PC}
