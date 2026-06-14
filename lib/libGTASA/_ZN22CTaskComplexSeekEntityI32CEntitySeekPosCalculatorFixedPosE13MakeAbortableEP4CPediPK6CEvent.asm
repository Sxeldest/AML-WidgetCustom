; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorFixedPosE13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x49D608 - 0x49D650
; =========================================================

49D608:  PUSH            {R4,R5,R7,LR}
49D60A:  ADD             R7, SP, #8
49D60C:  MOV             R5, R0
49D60E:  CBNZ            R2, loc_49D62C
49D610:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49D61E)
49D612:  MOV.W           R12, #0xFFFFFFFF
49D616:  STR.W           R12, [R5,#0x10]
49D61A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49D61C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49D61E:  LDR.W           LR, [R0]; CTimer::m_snTimeInMilliseconds
49D622:  MOVS            R0, #1
49D624:  STRB.W          R0, [R5,#0x3C]
49D628:  STRD.W          LR, R12, [R5,#0x34]
49D62C:  LDR             R0, [R5,#8]
49D62E:  LDR             R4, [R0]
49D630:  LDR             R4, [R4,#0x1C]
49D632:  BLX             R4
49D634:  CMP             R0, #1
49D636:  IT NE
49D638:  POPNE           {R4,R5,R7,PC}
49D63A:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49D642)
49D63C:  MOVS            R2, #1
49D63E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49D640:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
49D642:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
49D644:  STRB.W          R2, [R5,#0x30]
49D648:  MOVS            R2, #0
49D64A:  STRD.W          R1, R2, [R5,#0x28]
49D64E:  POP             {R4,R5,R7,PC}
