; =========================================================
; Game Engine Function: sub_146A88
; Address            : 0x146A88 - 0x146ACC
; =========================================================

146A88:  PUSH            {R4,R6,R7,LR}
146A8A:  ADD             R7, SP, #8
146A8C:  SUB             SP, SP, #0x118
146A8E:  LDRD.W          R1, R0, [R0]; src
146A92:  MOVS            R3, #0
146A94:  ASRS            R2, R0, #0x1F
146A96:  MOVS            R4, #0
146A98:  ADD.W           R0, R0, R2,LSR#29
146A9C:  MOVS            R2, #1
146A9E:  ADD.W           R2, R2, R0,ASR#3; size
146AA2:  ADD             R0, SP, #0x120+var_11C; int
146AA4:  BL              sub_17D4F2
146AA8:  STR             R4, [SP,#0x120+var_120]
146AAA:  MOV             R1, SP; int
146AAC:  MOVS            R2, #0x20 ; ' '
146AAE:  MOVS            R3, #1
146AB0:  BL              sub_17D786
146AB4:  LDR             R0, =(off_234970 - 0x146ABC)
146AB6:  LDR             R1, [SP,#0x120+var_120]
146AB8:  ADD             R0, PC; off_234970
146ABA:  LDR             R0, [R0]; dword_23DEF0
146ABC:  LDR             R0, [R0]
146ABE:  BL              sub_F9B2C
146AC2:  ADD             R0, SP, #0x120+var_11C
146AC4:  BL              sub_17D542
146AC8:  ADD             SP, SP, #0x118
146ACA:  POP             {R4,R6,R7,PC}
