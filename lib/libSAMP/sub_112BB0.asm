; =========================================================
; Game Engine Function: sub_112BB0
; Address            : 0x112BB0 - 0x112BE0
; =========================================================

112BB0:  PUSH            {R4,R5,R7,LR}
112BB2:  ADD             R7, SP, #8
112BB4:  SUB             SP, SP, #8
112BB6:  MOV             R5, R0
112BB8:  MOV             R0, R1
112BBA:  MOV             R4, R1
112BBC:  BL              sub_17D81C
112BC0:  SUB.W           R1, R7, #-var_9; int
112BC4:  MOV             R0, R4; int
112BC6:  MOVS            R2, #8
112BC8:  MOVS            R3, #1
112BCA:  BL              sub_17D786
112BCE:  LDRB.W          R0, [R7,#var_9]
112BD2:  CMP             R0, #0
112BD4:  IT NE
112BD6:  MOVNE           R0, #1
112BD8:  STRB.W          R0, [R5,#0x7A]
112BDC:  ADD             SP, SP, #8
112BDE:  POP             {R4,R5,R7,PC}
