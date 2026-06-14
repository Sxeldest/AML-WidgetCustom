; =========================================================
; Game Engine Function: sub_112B70
; Address            : 0x112B70 - 0x112BB0
; =========================================================

112B70:  PUSH            {R4,R5,R7,LR}
112B72:  ADD             R7, SP, #8
112B74:  SUB             SP, SP, #8
112B76:  MOV             R4, R0
112B78:  MOV             R0, R1
112B7A:  MOV             R5, R1
112B7C:  BL              sub_17D81C
112B80:  ADDW            R1, R4, #0x84C; int
112B84:  MOV             R0, R5; int
112B86:  MOVS            R2, #0x20 ; ' '
112B88:  MOVS            R3, #1
112B8A:  BL              sub_17D786
112B8E:  SUB.W           R1, R7, #-var_9; int
112B92:  MOV             R0, R5; int
112B94:  MOVS            R2, #8
112B96:  MOVS            R3, #1
112B98:  BL              sub_17D786
112B9C:  LDRB.W          R0, [R7,#var_9]
112BA0:  SUBS            R0, #5
112BA2:  CLZ.W           R0, R0
112BA6:  LSRS            R0, R0, #5
112BA8:  STRB.W          R0, [R4,#0x79]
112BAC:  ADD             SP, SP, #8
112BAE:  POP             {R4,R5,R7,PC}
