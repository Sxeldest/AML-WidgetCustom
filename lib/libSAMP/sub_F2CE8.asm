; =========================================================
; Game Engine Function: sub_F2CE8
; Address            : 0xF2CE8 - 0xF2D2C
; =========================================================

F2CE8:  PUSH            {R4,R6,R7,LR}
F2CEA:  ADD             R7, SP, #8
F2CEC:  MOV             R4, R0
F2CEE:  LDR             R0, [R0,#8]
F2CF0:  LDR             R2, [R4,#0xC]
F2CF2:  LDR             R1, [R1,#4]
F2CF4:  LDR.W           R3, [R2,#-8]
F2CF8:  LDR.W           R12, [R0,R1,LSL#3]
F2CFC:  STR.W           R3, [R0,R1,LSL#3]
F2D00:  ADD.W           R0, R0, R1,LSL#3
F2D04:  STR.W           R12, [R2,#-8]
F2D08:  LDR.W           R12, [R2,#-4]
F2D0C:  LDR             R3, [R0,#4]
F2D0E:  STR.W           R12, [R0,#4]
F2D12:  STR.W           R3, [R2,#-4]
F2D16:  LDRD.W          R0, R2, [R4,#8]
F2D1A:  LDR.W           R0, [R0,R1,LSL#3]
F2D1E:  STR             R1, [R0,#4]
F2D20:  SUB.W           R0, R2, #8
F2D24:  BL              sub_F2D2C
F2D28:  STR             R0, [R4,#0xC]
F2D2A:  POP             {R4,R6,R7,PC}
