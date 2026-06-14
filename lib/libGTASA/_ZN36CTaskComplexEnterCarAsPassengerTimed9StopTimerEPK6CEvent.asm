; =========================================================
; Game Engine Function: _ZN36CTaskComplexEnterCarAsPassengerTimed9StopTimerEPK6CEvent
; Address            : 0x4F7888 - 0x4F78BA
; =========================================================

4F7888:  PUSH            {R4,R6,R7,LR}
4F788A:  ADD             R7, SP, #8
4F788C:  MOV             R4, R0
4F788E:  MOV             R0, R1; this
4F7890:  BLX             j__ZN13CEventHandler16IsTemporaryEventERK6CEvent; CEventHandler::IsTemporaryEvent(CEvent const&)
4F7894:  CBNZ            R0, locret_4F78B8
4F7896:  LDRB.W          R0, [R4,#0x28]
4F789A:  CMP             R0, #0
4F789C:  IT EQ
4F789E:  POPEQ           {R4,R6,R7,PC}
4F78A0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4F78AC)
4F78A2:  MOVS            R3, #1
4F78A4:  LDRD.W          R1, R2, [R4,#0x20]
4F78A8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4F78AA:  STRB.W          R3, [R4,#0x29]
4F78AE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4F78B0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4F78B2:  SUBS            R0, R2, R0
4F78B4:  ADD             R0, R1
4F78B6:  STR             R0, [R4,#0x24]
4F78B8:  POP             {R4,R6,R7,PC}
