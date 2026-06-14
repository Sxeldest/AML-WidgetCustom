; =========================================================
; Game Engine Function: sub_112B40
; Address            : 0x112B40 - 0x112B70
; =========================================================

112B40:  PUSH            {R4,R5,R7,LR}
112B42:  ADD             R7, SP, #8
112B44:  SUB             SP, SP, #8
112B46:  MOV             R5, R0
112B48:  MOV             R0, R1
112B4A:  MOV             R4, R1
112B4C:  BL              sub_17D81C
112B50:  SUB.W           R1, R7, #-var_9; int
112B54:  MOV             R0, R4; int
112B56:  MOVS            R2, #8
112B58:  MOVS            R3, #1
112B5A:  BL              sub_17D786
112B5E:  LDRB.W          R0, [R7,#var_9]
112B62:  CMP             R0, #0
112B64:  IT NE
112B66:  MOVNE           R0, #1
112B68:  STRB.W          R0, [R5,#0x78]
112B6C:  ADD             SP, SP, #8
112B6E:  POP             {R4,R5,R7,PC}
