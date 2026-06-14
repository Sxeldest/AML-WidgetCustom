; =========================================================
; Game Engine Function: _ZN27CTaskSimpleCarSetTempAction13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4FCF58 - 0x4FCF84
; =========================================================

4FCF58:  PUSH            {R4,R6,R7,LR}
4FCF5A:  ADD             R7, SP, #8
4FCF5C:  MOV             R4, R0
4FCF5E:  BLX             j__ZN19CTaskSimpleCarDrive13MakeAbortableEP4CPediPK6CEvent; CTaskSimpleCarDrive::MakeAbortable(CPed *,int,CEvent const*)
4FCF62:  CMP             R0, #1
4FCF64:  BNE             locret_4FCF82
4FCF66:  LDR             R1, [R4,#8]
4FCF68:  CMP             R1, #0
4FCF6A:  IT EQ
4FCF6C:  POPEQ           {R4,R6,R7,PC}
4FCF6E:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4FCF7A)
4FCF70:  MOVS            R3, #0
4FCF72:  STRB.W          R3, [R1,#0x3BF]
4FCF76:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4FCF78:  LDR             R1, [R2]; CTimer::m_snTimeInMilliseconds ...
4FCF7A:  LDR             R2, [R4,#8]
4FCF7C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4FCF7E:  STR.W           R1, [R2,#0x3C0]
4FCF82:  POP             {R4,R6,R7,PC}
