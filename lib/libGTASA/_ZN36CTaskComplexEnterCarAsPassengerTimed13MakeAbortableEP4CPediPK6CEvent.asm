; =========================================================
; Game Engine Function: _ZN36CTaskComplexEnterCarAsPassengerTimed13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4F76BC - 0x4F7716
; =========================================================

4F76BC:  PUSH            {R4-R7,LR}
4F76BE:  ADD             R7, SP, #0xC
4F76C0:  PUSH.W          {R8,R9,R11}
4F76C4:  MOV             R9, R0
4F76C6:  MOV             R5, R2
4F76C8:  LDR.W           R0, [R9,#8]
4F76CC:  MOV             R6, R3
4F76CE:  LDR             R2, [R0]
4F76D0:  LDR             R4, [R2,#0x1C]
4F76D2:  MOV             R2, R5
4F76D4:  BLX             R4
4F76D6:  MOV             R8, R0
4F76D8:  SUBS            R0, R5, #1
4F76DA:  CMP             R0, #1
4F76DC:  BHI             loc_4F770E
4F76DE:  CMP.W           R8, #1
4F76E2:  BNE             loc_4F770E
4F76E4:  CBZ             R6, loc_4F76EE
4F76E6:  MOV             R0, R6; this
4F76E8:  BLX             j__ZN13CEventHandler16IsTemporaryEventERK6CEvent; CEventHandler::IsTemporaryEvent(CEvent const&)
4F76EC:  CBNZ            R0, loc_4F770E
4F76EE:  LDRB.W          R0, [R9,#0x28]
4F76F2:  CBZ             R0, loc_4F770E
4F76F4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4F7700)
4F76F6:  MOVS            R3, #1
4F76F8:  LDRD.W          R1, R2, [R9,#0x20]
4F76FC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4F76FE:  STRB.W          R3, [R9,#0x29]
4F7702:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4F7704:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4F7706:  SUBS            R0, R2, R0
4F7708:  ADD             R0, R1
4F770A:  STR.W           R0, [R9,#0x24]
4F770E:  MOV             R0, R8
4F7710:  POP.W           {R8,R9,R11}
4F7714:  POP             {R4-R7,PC}
