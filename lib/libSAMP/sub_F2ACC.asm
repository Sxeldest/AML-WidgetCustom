; =========================================================
; Game Engine Function: sub_F2ACC
; Address            : 0xF2ACC - 0xF2B10
; =========================================================

F2ACC:  PUSH            {R4,R6,R7,LR}
F2ACE:  ADD             R7, SP, #8
F2AD0:  MOV             R4, R0
F2AD2:  LDR             R0, [R0,#8]
F2AD4:  LDR             R2, [R4,#0xC]
F2AD6:  LDR             R1, [R1,#4]
F2AD8:  LDR.W           R3, [R2,#-8]
F2ADC:  LDR.W           R12, [R0,R1,LSL#3]
F2AE0:  STR.W           R3, [R0,R1,LSL#3]
F2AE4:  ADD.W           R0, R0, R1,LSL#3
F2AE8:  STR.W           R12, [R2,#-8]
F2AEC:  LDR.W           R12, [R2,#-4]
F2AF0:  LDR             R3, [R0,#4]
F2AF2:  STR.W           R12, [R0,#4]
F2AF6:  STR.W           R3, [R2,#-4]
F2AFA:  LDRD.W          R0, R2, [R4,#8]
F2AFE:  LDR.W           R0, [R0,R1,LSL#3]
F2B02:  STR             R1, [R0,#4]
F2B04:  SUB.W           R0, R2, #8
F2B08:  BL              sub_F2B10
F2B0C:  STR             R0, [R4,#0xC]
F2B0E:  POP             {R4,R6,R7,PC}
