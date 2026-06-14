; =========================================================
; Game Engine Function: sub_F2C34
; Address            : 0xF2C34 - 0xF2C78
; =========================================================

F2C34:  PUSH            {R4,R6,R7,LR}
F2C36:  ADD             R7, SP, #8
F2C38:  MOV             R4, R0
F2C3A:  LDR             R0, [R0,#8]
F2C3C:  LDR             R2, [R4,#0xC]
F2C3E:  LDR             R1, [R1,#4]
F2C40:  LDR.W           R3, [R2,#-8]
F2C44:  LDR.W           R12, [R0,R1,LSL#3]
F2C48:  STR.W           R3, [R0,R1,LSL#3]
F2C4C:  ADD.W           R0, R0, R1,LSL#3
F2C50:  STR.W           R12, [R2,#-8]
F2C54:  LDR.W           R12, [R2,#-4]
F2C58:  LDR             R3, [R0,#4]
F2C5A:  STR.W           R12, [R0,#4]
F2C5E:  STR.W           R3, [R2,#-4]
F2C62:  LDRD.W          R0, R2, [R4,#8]
F2C66:  LDR.W           R0, [R0,R1,LSL#3]
F2C6A:  STR             R1, [R0,#4]
F2C6C:  SUB.W           R0, R2, #8
F2C70:  BL              sub_F2C78
F2C74:  STR             R0, [R4,#0xC]
F2C76:  POP             {R4,R6,R7,PC}
