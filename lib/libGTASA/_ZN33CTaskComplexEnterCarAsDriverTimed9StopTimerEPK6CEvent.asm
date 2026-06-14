; =========================================================
; Game Engine Function: _ZN33CTaskComplexEnterCarAsDriverTimed9StopTimerEPK6CEvent
; Address            : 0x4F75D4 - 0x4F7606
; =========================================================

4F75D4:  PUSH            {R4,R6,R7,LR}
4F75D6:  ADD             R7, SP, #8
4F75D8:  MOV             R4, R0
4F75DA:  MOV             R0, R1; this
4F75DC:  BLX             j__ZN13CEventHandler16IsTemporaryEventERK6CEvent; CEventHandler::IsTemporaryEvent(CEvent const&)
4F75E0:  CBNZ            R0, locret_4F7604
4F75E2:  LDRB.W          R0, [R4,#0x20]
4F75E6:  CMP             R0, #0
4F75E8:  IT EQ
4F75EA:  POPEQ           {R4,R6,R7,PC}
4F75EC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4F75F8)
4F75EE:  MOVS            R3, #1
4F75F0:  LDRD.W          R1, R2, [R4,#0x18]
4F75F4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4F75F6:  STRB.W          R3, [R4,#0x21]
4F75FA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4F75FC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4F75FE:  SUBS            R0, R2, R0
4F7600:  ADD             R0, R1
4F7602:  STR             R0, [R4,#0x1C]
4F7604:  POP             {R4,R6,R7,PC}
