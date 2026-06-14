; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI33CEntitySeekPosCalculatorVehicleIdE13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x49B520 - 0x49B568
; =========================================================

49B520:  PUSH            {R4,R5,R7,LR}
49B522:  ADD             R7, SP, #8
49B524:  MOV             R5, R0
49B526:  CBNZ            R2, loc_49B544
49B528:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49B536)
49B52A:  MOV.W           R12, #0xFFFFFFFF
49B52E:  STR.W           R12, [R5,#0x10]
49B532:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49B534:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49B536:  LDR.W           LR, [R0]; CTimer::m_snTimeInMilliseconds
49B53A:  MOVS            R0, #1
49B53C:  STRB.W          R0, [R5,#0x3C]
49B540:  STRD.W          LR, R12, [R5,#0x34]
49B544:  LDR             R0, [R5,#8]
49B546:  LDR             R4, [R0]
49B548:  LDR             R4, [R4,#0x1C]
49B54A:  BLX             R4
49B54C:  CMP             R0, #1
49B54E:  IT NE
49B550:  POPNE           {R4,R5,R7,PC}
49B552:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49B55A)
49B554:  MOVS            R2, #1
49B556:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49B558:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
49B55A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
49B55C:  STRB.W          R2, [R5,#0x30]
49B560:  MOVS            R2, #0
49B562:  STRD.W          R1, R2, [R5,#0x28]
49B566:  POP             {R4,R5,R7,PC}
