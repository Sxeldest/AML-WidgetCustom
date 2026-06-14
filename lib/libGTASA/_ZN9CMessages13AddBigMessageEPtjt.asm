; =========================================================
; Game Engine Function: _ZN9CMessages13AddBigMessageEPtjt
; Address            : 0x54C5BC - 0x54C600
; =========================================================

54C5BC:  PUSH            {R7,LR}
54C5BE:  MOV             R7, SP
54C5C0:  LDR             R3, =(_ZN9CMessages11BIGMessagesE_ptr - 0x54C5D2)
54C5C2:  RSB.W           R2, R2, R2,LSL#3
54C5C6:  LDR.W           R12, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x54C5D4)
54C5CA:  MOV.W           LR, #0
54C5CE:  ADD             R3, PC; _ZN9CMessages11BIGMessagesE_ptr
54C5D0:  ADD             R12, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54C5D2:  LDR             R3, [R3]; CMessages::BIGMessages ...
54C5D4:  LDR.W           R12, [R12]; CTimer::m_snTimeInMilliseconds ...
54C5D8:  ADD.W           R2, R3, R2,LSL#5
54C5DC:  MOV.W           R3, #0xFFFFFFFF
54C5E0:  STRH.W          LR, [R2,#0xC]
54C5E4:  STR             R0, [R2,#8]
54C5E6:  LDR.W           R0, [R12]; CTimer::m_snTimeInMilliseconds
54C5EA:  STR.W           LR, [R2,#0x30]
54C5EE:  STRD.W          R1, R0, [R2,#0x10]
54C5F2:  STRD.W          R3, R3, [R2,#0x18]
54C5F6:  STRD.W          R3, R3, [R2,#0x20]
54C5FA:  STRD.W          R3, R3, [R2,#0x28]
54C5FE:  POP             {R7,PC}
