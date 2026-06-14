; =========================================================
; Game Engine Function: sub_100B2A
; Address            : 0x100B2A - 0x100B6E
; =========================================================

100B2A:  PUSH            {R4,R6,R7,LR}
100B2C:  ADD             R7, SP, #8
100B2E:  MOV             R4, R0
100B30:  LDR             R0, [R0,#8]
100B32:  LDR             R2, [R4,#0xC]
100B34:  LDR             R1, [R1,#4]
100B36:  LDR.W           R3, [R2,#-8]
100B3A:  LDR.W           R12, [R0,R1,LSL#3]
100B3E:  STR.W           R3, [R0,R1,LSL#3]
100B42:  ADD.W           R0, R0, R1,LSL#3
100B46:  STR.W           R12, [R2,#-8]
100B4A:  LDR.W           R12, [R2,#-4]
100B4E:  LDR             R3, [R0,#4]
100B50:  STR.W           R12, [R0,#4]
100B54:  STR.W           R3, [R2,#-4]
100B58:  LDRD.W          R0, R2, [R4,#8]
100B5C:  LDR.W           R0, [R0,R1,LSL#3]
100B60:  STR             R1, [R0,#4]
100B62:  SUB.W           R0, R2, #8
100B66:  BL              sub_100B6E
100B6A:  STR             R0, [R4,#0xC]
100B6C:  POP             {R4,R6,R7,PC}
