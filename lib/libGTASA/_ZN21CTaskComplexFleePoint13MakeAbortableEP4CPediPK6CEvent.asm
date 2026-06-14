; =========================================================
; Game Engine Function: _ZN21CTaskComplexFleePoint13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x512948 - 0x51297C
; =========================================================

512948:  PUSH            {R4,R6,R7,LR}
51294A:  ADD             R7, SP, #8
51294C:  CBNZ            R2, loc_51296E
51294E:  LDR.W           R12, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51295C)
512952:  MOV.W           LR, #0xFFFFFFFF
512956:  MOVS            R4, #1
512958:  ADD             R12, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51295A:  LDR.W           R12, [R12]; CTimer::m_snTimeInMilliseconds ...
51295E:  LDR.W           R12, [R12]; CTimer::m_snTimeInMilliseconds
512962:  STRB.W          R4, [R0,#0x30]
512966:  STRD.W          LR, R12, [R0,#0x24]
51296A:  STR.W           LR, [R0,#0x2C]
51296E:  LDR             R0, [R0,#8]
512970:  LDR             R4, [R0]
512972:  LDR.W           R12, [R4,#0x1C]
512976:  POP.W           {R4,R6,R7,LR}
51297A:  BX              R12
