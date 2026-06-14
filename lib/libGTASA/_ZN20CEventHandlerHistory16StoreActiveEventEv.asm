; =========================================================
; Game Engine Function: _ZN20CEventHandlerHistory16StoreActiveEventEv
; Address            : 0x37B2A8 - 0x37B2D4
; =========================================================

37B2A8:  PUSH            {R4,R6,R7,LR}
37B2AA:  ADD             R7, SP, #8
37B2AC:  MOV             R4, R0
37B2AE:  LDR             R0, [R4,#0xC]
37B2B0:  CMP             R0, #0
37B2B2:  ITTT NE
37B2B4:  LDRNE           R1, [R0]
37B2B6:  LDRNE           R1, [R1,#4]
37B2B8:  BLXNE           R1
37B2BA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x37B2C2)
37B2BC:  LDR             R1, [R4,#4]
37B2BE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
37B2C0:  STR             R1, [R4,#0xC]
37B2C2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
37B2C4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
37B2C6:  STR             R0, [R4,#0x10]
37B2C8:  MOVS            R0, #1
37B2CA:  STRB            R0, [R4,#0x18]
37B2CC:  MOV.W           R0, #0x7D0
37B2D0:  STR             R0, [R4,#0x14]
37B2D2:  POP             {R4,R6,R7,PC}
