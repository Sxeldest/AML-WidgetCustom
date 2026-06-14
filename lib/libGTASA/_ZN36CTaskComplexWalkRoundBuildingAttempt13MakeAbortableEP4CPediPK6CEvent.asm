; =========================================================
; Game Engine Function: _ZN36CTaskComplexWalkRoundBuildingAttempt13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x50CEB8 - 0x50CEDC
; =========================================================

50CEB8:  PUSH            {R4,R6,R7,LR}
50CEBA:  ADD             R7, SP, #8
50CEBC:  LDR             R0, [R0,#8]
50CEBE:  MOV             R4, R1
50CEC0:  LDR             R1, [R0]
50CEC2:  LDR.W           R12, [R1,#0x1C]
50CEC6:  MOV             R1, R4
50CEC8:  BLX             R12
50CECA:  CMP             R0, #1
50CECC:  ITTT EQ
50CECE:  LDREQ.W         R1, [R4,#0x490]
50CED2:  BICEQ.W         R1, R1, #0x40 ; '@'
50CED6:  STREQ.W         R1, [R4,#0x490]
50CEDA:  POP             {R4,R6,R7,PC}
