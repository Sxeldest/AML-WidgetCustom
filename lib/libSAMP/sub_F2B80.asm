; =========================================================
; Game Engine Function: sub_F2B80
; Address            : 0xF2B80 - 0xF2BC4
; =========================================================

F2B80:  PUSH            {R4,R6,R7,LR}
F2B82:  ADD             R7, SP, #8
F2B84:  MOV             R4, R0
F2B86:  LDR             R0, [R0,#8]
F2B88:  LDR             R2, [R4,#0xC]
F2B8A:  LDR             R1, [R1,#4]
F2B8C:  LDR.W           R3, [R2,#-8]
F2B90:  LDR.W           R12, [R0,R1,LSL#3]
F2B94:  STR.W           R3, [R0,R1,LSL#3]
F2B98:  ADD.W           R0, R0, R1,LSL#3
F2B9C:  STR.W           R12, [R2,#-8]
F2BA0:  LDR.W           R12, [R2,#-4]
F2BA4:  LDR             R3, [R0,#4]
F2BA6:  STR.W           R12, [R0,#4]
F2BAA:  STR.W           R3, [R2,#-4]
F2BAE:  LDRD.W          R0, R2, [R4,#8]
F2BB2:  LDR.W           R0, [R0,R1,LSL#3]
F2BB6:  STR             R1, [R0,#4]
F2BB8:  SUB.W           R0, R2, #8
F2BBC:  BL              sub_F2BC4
F2BC0:  STR             R0, [R4,#0xC]
F2BC2:  POP             {R4,R6,R7,PC}
