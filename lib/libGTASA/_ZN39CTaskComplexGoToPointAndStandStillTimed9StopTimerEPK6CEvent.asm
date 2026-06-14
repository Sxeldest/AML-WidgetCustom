; =========================================================
; Game Engine Function: _ZN39CTaskComplexGoToPointAndStandStillTimed9StopTimerEPK6CEvent
; Address            : 0x51DA08 - 0x51DA3A
; =========================================================

51DA08:  PUSH            {R4,R6,R7,LR}
51DA0A:  ADD             R7, SP, #8
51DA0C:  MOV             R4, R0
51DA0E:  MOV             R0, R1; this
51DA10:  BLX             j__ZN13CEventHandler16IsTemporaryEventERK6CEvent; CEventHandler::IsTemporaryEvent(CEvent const&)
51DA14:  CBNZ            R0, locret_51DA38
51DA16:  LDRB.W          R0, [R4,#0x34]
51DA1A:  CMP             R0, #0
51DA1C:  IT EQ
51DA1E:  POPEQ           {R4,R6,R7,PC}
51DA20:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51DA2C)
51DA22:  MOVS            R3, #1
51DA24:  LDRD.W          R1, R2, [R4,#0x2C]
51DA28:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51DA2A:  STRB.W          R3, [R4,#0x35]
51DA2E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
51DA30:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
51DA32:  SUBS            R0, R2, R0
51DA34:  ADD             R0, R1
51DA36:  STR             R0, [R4,#0x30]
51DA38:  POP             {R4,R6,R7,PC}
