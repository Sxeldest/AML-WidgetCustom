; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x499464 - 0x4994AC
; =========================================================

499464:  PUSH            {R4,R5,R7,LR}
499466:  ADD             R7, SP, #8
499468:  MOV             R5, R0
49946A:  CBNZ            R2, loc_499488
49946C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49947A)
49946E:  MOV.W           R12, #0xFFFFFFFF
499472:  STR.W           R12, [R5,#0x10]
499476:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
499478:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49947A:  LDR.W           LR, [R0]; CTimer::m_snTimeInMilliseconds
49947E:  MOVS            R0, #1
499480:  STRB.W          R0, [R5,#0x3C]
499484:  STRD.W          LR, R12, [R5,#0x34]
499488:  LDR             R0, [R5,#8]
49948A:  LDR             R4, [R0]
49948C:  LDR             R4, [R4,#0x1C]
49948E:  BLX             R4
499490:  CMP             R0, #1
499492:  IT NE
499494:  POPNE           {R4,R5,R7,PC}
499496:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49949E)
499498:  MOVS            R2, #1
49949A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49949C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
49949E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4994A0:  STRB.W          R2, [R5,#0x30]
4994A4:  MOVS            R2, #0
4994A6:  STRD.W          R1, R2, [R5,#0x28]
4994AA:  POP             {R4,R5,R7,PC}
