; =========================================================
; Game Engine Function: _ZN33CTaskComplexEnterCarAsDriverTimed13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4F7440 - 0x4F749A
; =========================================================

4F7440:  PUSH            {R4-R7,LR}
4F7442:  ADD             R7, SP, #0xC
4F7444:  PUSH.W          {R8,R9,R11}
4F7448:  MOV             R9, R0
4F744A:  MOV             R5, R2
4F744C:  LDR.W           R0, [R9,#8]
4F7450:  MOV             R6, R3
4F7452:  LDR             R2, [R0]
4F7454:  LDR             R4, [R2,#0x1C]
4F7456:  MOV             R2, R5
4F7458:  BLX             R4
4F745A:  MOV             R8, R0
4F745C:  SUBS            R0, R5, #1
4F745E:  CMP             R0, #1
4F7460:  BHI             loc_4F7492
4F7462:  CMP.W           R8, #1
4F7466:  BNE             loc_4F7492
4F7468:  CBZ             R6, loc_4F7472
4F746A:  MOV             R0, R6; this
4F746C:  BLX             j__ZN13CEventHandler16IsTemporaryEventERK6CEvent; CEventHandler::IsTemporaryEvent(CEvent const&)
4F7470:  CBNZ            R0, loc_4F7492
4F7472:  LDRB.W          R0, [R9,#0x20]
4F7476:  CBZ             R0, loc_4F7492
4F7478:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4F7484)
4F747A:  MOVS            R3, #1
4F747C:  LDRD.W          R1, R2, [R9,#0x18]
4F7480:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4F7482:  STRB.W          R3, [R9,#0x21]
4F7486:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4F7488:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4F748A:  SUBS            R0, R2, R0
4F748C:  ADD             R0, R1
4F748E:  STR.W           R0, [R9,#0x1C]
4F7492:  MOV             R0, R8
4F7494:  POP.W           {R8,R9,R11}
4F7498:  POP             {R4-R7,PC}
