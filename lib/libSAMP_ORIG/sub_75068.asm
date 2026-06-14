; =========================================================
; Game Engine Function: sub_75068
; Address            : 0x75068 - 0x7508A
; =========================================================

75068:  PUSH            {R4,R6,R7,LR}
7506A:  ADD             R7, SP, #8
7506C:  SUB             SP, SP, #8
7506E:  LDR.W           R12, [R1]
75072:  MOVS            R4, #0
75074:  LDRD.W          R2, R3, [R7,#arg_0]
75078:  LDR.W           LR, [R7,#arg_8]
7507C:  LDR.W           R12, [R12,#0x10]
75080:  STRD.W          R4, LR, [SP,#0x10+var_10]
75084:  BLX             R12
75086:  ADD             SP, SP, #8
75088:  POP             {R4,R6,R7,PC}
